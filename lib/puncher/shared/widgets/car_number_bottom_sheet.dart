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
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/puncher/orders/order_cubit/service_provider_orders_cubit.dart';
import 'package:go_router/go_router.dart';
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
  bool isLoading = false;

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

      // 🟢 عرض Dialog للتأكيد
      final confirmed = await _showConfirmDialog(croppedBytes);
      if (!confirmed) {
        setState(() => isLoading = false);
        return;
      }

      // 🟢 حفظ الصورة في ملف
      final directory = await getApplicationDocumentsDirectory();
      final croppedPath = '${directory.path}/plate.png';
      await File(croppedPath).writeAsBytes(croppedBytes);

      setState(() {
        editedImage = XFile(croppedPath);
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
    } catch (e) {
      debugPrint("Capture error: $e");
    } finally {
      setState(() => isLoading = false);
    }
  }

  Future<bool> _showConfirmDialog(Uint8List croppedBytes) async {
    final t = AppLocalizations.of(context)!;
    return await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text(t.confirmImage),
              content: Image.memory(croppedBytes),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context, false),
                  child: Text(t.reTakeImage),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pop(context, true),
                  child: Text(t.confirm),
                ),
              ],
            );
          },
        ) ??
        false;
  }

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
    log(widget.referenceNumber);
    log(widget.type);
    context.pushReplacementNamed(
      'otp-screen',
      pathParameters: {
        'referenceNumber': widget.referenceNumber,
        'type': widget.type,
      },
      extra: {
        'editedImagePath': editedImage?.path,
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

/// Overlay Widget
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
