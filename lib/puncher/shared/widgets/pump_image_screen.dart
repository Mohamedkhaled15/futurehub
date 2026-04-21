import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:audioplayers/audioplayers.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/services/map_services.dart';
import 'package:future_hub/common/shared/utils/image_compression_helper.dart';
import 'package:future_hub/common/shared/utils/image_watermark_helper.dart';
import 'package:future_hub/common/shared/utils/location_helper.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/puncher/orders/services/puncher_order_services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';
import 'package:vibration/vibration.dart';

import '../../../l10n/app_localizations.dart';

class PumpImageScreen extends StatefulWidget {
  final String referenceNumber;
  final String type;
  final String otp;
  final String orderId;
  final XFile? odometerImage;
  final XFile? plateImage;

  const PumpImageScreen({
    super.key,
    required this.referenceNumber,
    required this.type,
    required this.otp,
    required this.orderId,
    this.odometerImage,
    this.plateImage,
  });

  @override
  State<PumpImageScreen> createState() => _PumpImageScreenState();
}

class _PumpImageScreenState extends State<PumpImageScreen>
    with WidgetsBindingObserver, LocationHelper {
  CameraController? _controller;
  bool isLoading = false;
  final _ordersService = PuncherOrderServices();
  Position? position;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    try {
      position = await MapServices.getCurrentLocation();
      if (position != null) {
        await _initCamera();
      }
    } catch (e) {
      if (mounted) {
        ensureLocationWithDialog(
          onGranted: () {
            _init();
          },
          onCancel: () {
            context.pop();
          },
        );
      }
    }
  }

  Future<void> _initCamera() async {
    final cameras = await availableCameras();
    final backCamera = cameras.firstWhere(
      (c) => c.lensDirection == CameraLensDirection.back,
    );

    _controller = CameraController(
      backCamera,
      ResolutionPreset.medium,
      enableAudio: false,
    );

    await _controller!.initialize();
    if (mounted) setState(() {});
  }

  Future<void> _captureAndConfirm() async {
    if (_controller == null || !_controller!.value.isInitialized) return;

    setState(() => isLoading = true);

    try {
      final picture = await _controller!.takePicture();
      final File pictureFile = File(picture.path);

      // 1. Generate and Compress Cropped Image for confirmOrder
      final XFile croppedImage = await _generateCroppedImage(pictureFile);

      // 2. Generate and Compress Watermarked Image for uploadPumpImage
      final File watermarkedFile = await ImageWatermarkHelper.addWatermark(pictureFile);
      final File compressedWatermarkedFile =
          await ImageCompressionHelper.compressImage(watermarkedFile);

      // 3. Compress other images if they exist
      XFile? compressedOdometer;
      if (widget.odometerImage != null) {
        final compressedFile =
            await ImageCompressionHelper.compressImage(File(widget.odometerImage!.path));
        compressedOdometer = XFile(compressedFile.path);
      }

      XFile? compressedPlate;
      if (widget.plateImage != null) {
        final compressedFile =
            await ImageCompressionHelper.compressImage(File(widget.plateImage!.path));
        compressedPlate = XFile(compressedFile.path);
      }

      // // 4. Call APIs
      // await _ordersService.confirmOrder(
      //   widget.otp,
      //   widget.referenceNumber,
      //   compressedPlate ?? XFile(""),
      //   widget.type,
      //   compressedOdometer,
      // );

      await _ordersService.uploadPumpImage(
        orderId: widget.orderId,
        image: croppedImage,
        imageWithTimestamp: XFile(compressedWatermarkedFile.path),
      );

      await _playSuccessEffects();

      if (mounted) {
        context.pushNamed('success-order');
      }
    } catch (e) {
      debugPrint("Confirm/Upload error: $e");
      await _playFailureEffects();
      if (mounted) {
        // context.pushNamed('fail-order');
        context.pushNamed('success-order');
      }
    } finally {
      if (mounted) setState(() => isLoading = false);
    }
  }

  Future<XFile> _generateCroppedImage(File pictureFile) async {
    final Uint8List imageBytes = await pictureFile.readAsBytes();
    final ui.Codec codec = await ui.instantiateImageCodec(imageBytes);
    final ui.FrameInfo frameInfo = await codec.getNextFrame();
    final ui.Image fullImage = frameInfo.image;

    final imageWidth = fullImage.width;
    final imageHeight = fullImage.height;

    final extraTop = MediaQuery.of(context).size.height * 0.2;
    final extraBottom = MediaQuery.of(context).size.height * 0.2;

    final overlayWidth = MediaQuery.of(context).size.width * 0.8;
    final overlayHeight = MediaQuery.of(context).size.height * 0.15;
    final overlayLeft = (MediaQuery.of(context).size.width - overlayWidth) / 2;
    final overlayTop = (MediaQuery.of(context).size.height - overlayHeight) / 2;

    final scaleX = imageWidth / MediaQuery.of(context).size.width;
    final scaleY = imageHeight / MediaQuery.of(context).size.height;

    final cropRect = Rect.fromLTWH(
      overlayLeft * scaleX,
      (overlayTop - extraTop) * scaleY,
      overlayWidth * scaleX,
      (overlayHeight + extraTop + extraBottom) * scaleY,
    );

    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);

    canvas.drawImageRect(
      fullImage,
      cropRect,
      Rect.fromLTWH(0, 0, cropRect.width, cropRect.height),
      Paint(),
    );

    final cropped = await recorder.endRecording().toImage(
          cropRect.width.toInt(),
          cropRect.height.toInt(),
        );

    final byteData = await cropped.toByteData(format: ui.ImageByteFormat.png);
    final croppedBytes = byteData!.buffer.asUint8List();

    final directory = await getApplicationDocumentsDirectory();
    final croppedPath =
        '${directory.path}/pump_cropped_${DateTime.now().millisecondsSinceEpoch}.png';
    final File croppedFile = File(croppedPath);
    await croppedFile.writeAsBytes(croppedBytes);

    // Compress the cropped image
    final File compressedCroppedFile = await ImageCompressionHelper.compressImage(croppedFile);

    return XFile(compressedCroppedFile.path);
  }

  Future<void> _playSuccessEffects() async {
    final player = AudioPlayer();
    await player.play(AssetSource('sounds/success.mp3'));
    if (await Vibration.hasVibrator()) {
      Vibration.vibrate(duration: 500);
    }
  }

  Future<void> _playFailureEffects() async {
    final player = AudioPlayer();
    await player.play(AssetSource('sounds/failure.mp3'));
    if (await Vibration.hasVibrator()) {
      Vibration.vibrate(pattern: [0, 500, 200, 500]);
    }
  }

  // Necessary overrides for WidgetsBindingObserver when used with mixins if not handled by mixin
  @override
  void didChangeAccessibilityFeatures() {}
  @override
  void didChangeLocales(List<Locale>? locales) {}
  @override
  void didChangeMetrics() {}
  @override
  void didChangePlatformBrightness() {}
  @override
  void didChangeTextScaleFactor() {}
  @override
  void didHaveMemoryPressure() {}
  @override
  Future<bool> didPushRoute(String route) async => false;
  @override
  Future<bool> didPopRoute() async => false;
  @override
  Future<bool> didPushRouteInformation(RouteInformation routeInformation) async => false;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          Localizations.localeOf(context).languageCode == 'ar' ? "صورة عداد الطرمبة" : "Pump Image",
          style:
              const TextStyle(color: Palette.blackColor, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        context: context,
      ),
      body: _controller == null || !_controller!.value.isInitialized
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                CameraPreview(_controller!),
                const CameraOverlay(),
                Positioned(
                  top: 60,
                  left: 20,
                  right: 20,
                  child: Image.asset(
                    "assets/images/gas-pump.png",
                    height: MediaQuery.of(context).size.height * 0.12,
                    filterQuality: FilterQuality.none,
                    isAntiAlias: false,
                  ),
                )
              ],
            ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: isLoading ? null : _captureAndConfirm,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(double.infinity, 50),
              backgroundColor: const Color(0xff55217F),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            child: isLoading
                ? const CircularProgressIndicator(color: Colors.white)
                : Text(
                    t.confirm_order,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
                  ),
          ),
        ),
      ),
    );
  }
}

class CameraOverlay extends StatelessWidget {
  const CameraOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.7,
          height: MediaQuery.of(context).size.height * 0.15,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.purple, width: 3),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
