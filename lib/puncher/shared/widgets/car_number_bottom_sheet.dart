import 'dart:developer';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/services/map_services.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/puncher/orders/order_cubit/service_provider_orders_cubit.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';

import '../../../l10n/app_localizations.dart';

class CarNumberScreen extends StatefulWidget {
  final String referenceNumber;
  final String type;
  final String vehicleId;
  final XFile? odometerImage;

  const CarNumberScreen({
    super.key,
    required this.referenceNumber,
    required this.type,
    required this.vehicleId,
    this.odometerImage,
  });

  @override
  State<CarNumberScreen> createState() => _CarNumberScreenState();
}

class _CarNumberScreenState extends State<CarNumberScreen> {
  XFile? editedImage;
  String? fullImageWithData;
  bool isLoading = false;
  static Position? position;
  late bool scanWithAi;
  CameraController? _controller;

  @override
  void initState() {
    super.initState();
    _initCamera();

    final authState = context.read<AuthCubit>().state;
    if (authState is AuthSignedIn) {
      scanWithAi = authState.user.scanPlateByAi == 1;
    } else {
      scanWithAi = false;
    }
  }

  Future<void> _initCamera() async {
    final cameras = await availableCameras();
    final backCamera = cameras.firstWhere((c) => c.lensDirection == CameraLensDirection.back);
    position = await MapServices.getCurrentLocation();
    _controller = CameraController(
      backCamera,
      ResolutionPreset.medium,
      enableAudio: false,
    );
    await _controller!.initialize();
    if (mounted) setState(() {});
  }

  Future<void> _captureAndValidate() async {
    if (_controller == null || !_controller!.value.isInitialized) return;

    setState(() => isLoading = true);
    try {
      final picture = await _controller!.takePicture();
      final Uint8List imageBytes = await File(picture.path).readAsBytes();
      final ui.Codec codec = await ui.instantiateImageCodec(imageBytes);
      final ui.FrameInfo frameInfo = await codec.getNextFrame();
      final ui.Image fullImage = frameInfo.image;

      final imageWidth = fullImage.width.toDouble();
      final imageHeight = fullImage.height.toDouble();

      // المقاسات حسب شاشة الموبايل
      final overlayWidth = MediaQuery.of(context).size.width * 0.9;
      final overlayHeight = MediaQuery.of(context).size.height * 0.6;
      final overlayLeft = (MediaQuery.of(context).size.width - overlayWidth) / 2;
      final overlayTop = (MediaQuery.of(context).size.height - overlayHeight) / 2;

      final scaleX = imageWidth / MediaQuery.of(context).size.width;
      final scaleY = imageHeight / MediaQuery.of(context).size.height;

      // حساب cropRect
      double left = overlayLeft * scaleX;
      double top = overlayTop * scaleY;
      double width = overlayWidth * scaleX;
      double height = overlayHeight * scaleY;

      // تأكد إن القيم مش بتطلع بره حدود الصورة
      left = left.clamp(0, imageWidth - 1);
      top = top.clamp(0, imageHeight - 1);
      width = width.clamp(1, imageWidth - left);
      height = height.clamp(1, imageHeight - top);

      final cropRect = Rect.fromLTWH(left, top, width, height);

      final recorder = ui.PictureRecorder();
      final canvas = Canvas(recorder);

      canvas.drawImageRect(
        fullImage,
        cropRect,
        Rect.fromLTWH(0, 0, cropRect.width, cropRect.height),
        Paint(),
      );

      final cropped =
          await recorder.endRecording().toImage(cropRect.width.toInt(), cropRect.height.toInt());

      final byteData = await cropped.toByteData(format: ui.ImageByteFormat.png);

      if (byteData == null) {
        debugPrint("⚠️ toByteData رجعت null");
        setState(() => isLoading = false);
        return;
      }

      final croppedBytes = byteData.buffer.asUint8List();

      // setState(() => isLoading = false);

      final directory = await getApplicationDocumentsDirectory();
      final croppedPath = '${directory.path}/plate_cropped.png';
      await File(croppedPath).writeAsBytes(croppedBytes);

      final now = DateTime.now();
      final locale = Localizations.localeOf(context).languageCode;
      final formattedDate = DateFormat('d MMMM yyyy | hh:mm a', locale).format(now);
      final text = "Lat: ${position?.latitude.toStringAsFixed(6)}, "
          "Lng: ${position?.longitude.toStringAsFixed(6)}\n"
          "$formattedDate";

      final withDataBytes = await _drawTextOnImage(imageBytes, text);
      final fullPath = '${directory.path}/plate_full.png';
      await File(fullPath).writeAsBytes(withDataBytes);

      setState(() {
        editedImage = XFile(croppedPath);
        fullImageWithData = fullPath;
      });

      final isValid = await uploadImageAndValidate(editedImage!);

      if (isValid) {
        showToast(
          text: AppLocalizations.of(context)!.plateMatched,
          state: ToastStates.success,
        );
        _otpBottomSheet();
      } else {
        if (scanWithAi == false) {
          _otpBottomSheet();
        } else {
          showToast(
            text: AppLocalizations.of(context)!.plateNotMatched,
            state: ToastStates.error,
          );
        }
      }
    } catch (e, s) {
      debugPrint("❌ Capture error: $e");
      debugPrint("$s");
    } finally {
      setState(() => isLoading = false);
    }
  }

  Future<Uint8List> _drawTextOnImage(Uint8List bytes, String text) async {
    final codec = await ui.instantiateImageCodec(bytes);
    final frame = await codec.getNextFrame();
    final image = frame.image;

    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    canvas.drawImage(image, Offset.zero, Paint());

    final paragraphStyle = ui.ParagraphStyle(textAlign: TextAlign.left, fontSize: 28);
    final textStyle =
        ui.TextStyle(color: Colors.white, background: Paint()..color = Colors.black54);

    final builder = ui.ParagraphBuilder(paragraphStyle)
      ..pushStyle(textStyle)
      ..addText(text);
    final constraints = ui.ParagraphConstraints(width: image.width.toDouble() - 40);
    final paragraph = builder.build()..layout(constraints);

    canvas.drawParagraph(paragraph, Offset(20, image.height - 120));

    final picture = recorder.endRecording();
    final imgOut = await picture.toImage(image.width, image.height);
    final byteData = await imgOut.toByteData(format: ui.ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }

  // Future<bool> _showConfirmDialog(Uint8List croppedBytes) async {
  //   final t = AppLocalizations.of(context)!;
  //   return await showDialog<bool>(
  //         context: context,
  //         builder: (context) {
  //           return AlertDialog(
  //             title: Text(t.confirmImage),
  //             content: Image.memory(croppedBytes),
  //             actions: [
  //               TextButton(
  //                 onPressed: () => Navigator.pop(context, false),
  //                 child: Text(t.reTakeImage),
  //               ),
  //               ElevatedButton(
  //                 onPressed: () => Navigator.pop(context, true),
  //                 child: Text(t.confirm),
  //               ),
  //             ],
  //           );
  //         },
  //       ) ??
  //       false;
  // }

  Future<bool> uploadImageAndValidate(XFile image) async {
    try {
      return context
          .read<ServiceProviderOrdersCubit>()
          .ocrScanPlate(image: image, vehicleId: widget.vehicleId);
    } catch (e) {
      debugPrint("Upload error: $e");
      return false;
    }
  }

  void _otpBottomSheet() {
    log("${editedImage?.path}");
    log(fullImageWithData ?? "");
    log(widget.referenceNumber);
    log(widget.type);
    context.pushReplacementNamed(
      'otp-screen',
      pathParameters: {
        'referenceNumber': widget.referenceNumber,
        'type': widget.type,
      },
      extra: {
        'editedImagePath': fullImageWithData,
        'odometerImage': widget.odometerImage,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.vicheleId,
          style:
              const TextStyle(color: Palette.blackColor, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        context: context,
      ),
      body: _controller == null || !_controller!.value.isInitialized
          ? const Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                Center(child: CameraPreview(_controller!)),
                const CameraOverlay(),
                Positioned(
                  left: 20,
                  right: 20,
                  child: Image.asset(
                    "assets/images/plateImage.png",
                    height: MediaQuery.of(context).size.height * 0.2,
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
            onPressed: isLoading ? null : _captureAndValidate,
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
                    style: theme.textTheme.titleLarge!.copyWith(color: Colors.white),
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
