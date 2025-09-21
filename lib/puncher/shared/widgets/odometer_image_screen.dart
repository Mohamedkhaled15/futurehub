import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:path_provider/path_provider.dart';

import '../../../l10n/app_localizations.dart';

class OdometerImageScreen extends StatefulWidget {
  final String referenceNumber;
  final String type;
  final String vehicleId;

  const OdometerImageScreen({
    super.key,
    required this.referenceNumber,
    required this.type,
    required this.vehicleId,
  });

  @override
  State<OdometerImageScreen> createState() => _OdometerImageScreenState();
}

class _OdometerImageScreenState extends State<OdometerImageScreen> {
  CameraController? _controller;
  XFile? editedImage;
  bool isLoading = false;
  static Position? position;

  @override
  void initState() {
    super.initState();
    _initCamera();
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

  void navigateToCarNumberScreen(BuildContext context, String referenceNumber, String vehicleId) {
    context.pushNamed(
      'carNumber',
      pathParameters: {
        'referenceNumber': referenceNumber,
        'type': "fuel_order",
        'vehicle_id': vehicleId,
      },
      extra: editedImage,
    );
  }

  Future<void> _captureAndSave() async {
    if (_controller == null || !_controller!.value.isInitialized) return;

    setState(() => isLoading = true);

    try {
      final picture = await _controller!.takePicture();
      final Uint8List imageBytes = await File(picture.path).readAsBytes();
      final ui.Codec codec = await ui.instantiateImageCodec(imageBytes);
      final ui.FrameInfo frameInfo = await codec.getNextFrame();
      final ui.Image fullImage = frameInfo.image;
// أبعاد الصورة الحقيقية من الكاميرا
      // 🟢 أبعاد الصورة الحقيقية
      final imageWidth = fullImage.width;
      final imageHeight = fullImage.height;

      // مقدار المسافة اللي نزودها (ممكن تزود الرقم على حسب التجربة)
      final extraTop = MediaQuery.of(context).size.height * 0.2; // بكسل زيادة فوق
      final extraBottom = MediaQuery.of(context).size.height * 0.2; // بكسل زيادة تحت

// أبعاد overlay الأصلية
      final overlayWidth = MediaQuery.of(context).size.width * 0.8;
      final overlayHeight = MediaQuery.of(context).size.height * 0.15;
      final overlayLeft = (MediaQuery.of(context).size.width - overlayWidth) / 2;
      final overlayTop = (MediaQuery.of(context).size.height - overlayHeight) / 2;

// scale من الشاشة → الصورة
      final scaleX = imageWidth / MediaQuery.of(context).size.width;
      final scaleY = imageHeight / MediaQuery.of(context).size.height;

// 🟢 مستطيل القص مع المسافة الزيادة
      final cropRect = Rect.fromLTWH(
        overlayLeft * scaleX,
        (overlayTop - extraTop) * scaleY,
        overlayWidth * scaleX,
        (overlayHeight + extraTop + extraBottom) * scaleY,
      );

      // 🟢 قص الجزء المطلوب
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

      // 🟢 حفظ الصورة في ملف
      final directory = await getApplicationDocumentsDirectory();
      final croppedPath = '${directory.path}/odometer.png';
      await File(croppedPath).writeAsBytes(croppedBytes);

      setState(() {
        editedImage = XFile(croppedPath);
      });
      navigateToCarNumberScreen(context, widget.referenceNumber, widget.vehicleId);
      log("Odometer image saved at: ${editedImage?.path}");
    } catch (e) {
      debugPrint("Capture error: $e");
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.meterNumberRequestImage,
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
                  left: 20,
                  right: 20,
                  child: Image.asset(
                    "assets/images/speedometerImage.png",
                    height: MediaQuery.of(context).size.height * 0.2,
                    filterQuality: FilterQuality.none, // Disable mipmapping
                    isAntiAlias: false,
                  ),
                )
              ],
            ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ElevatedButton(
            onPressed: isLoading ? null : _captureAndSave,
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
