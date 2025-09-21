import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/shared/models/order_model.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/employee/orders/cubit/order_cubit.dart';
import 'package:future_hub/employee/orders/cubit/order_state.dart';
import 'package:future_hub/employee/orders/services/order_service.dart';
import 'package:image/image.dart' as img;
import 'package:path_provider/path_provider.dart';

import '../../../l10n/app_localizations.dart';
import 'employee_qr_order_screen.dart';

class CarMeterScreen extends StatefulWidget {
  final Order order;
  const CarMeterScreen({super.key, required this.order});

  @override
  State<CarMeterScreen> createState() => _CarMeterScreenState();
}

class _CarMeterScreenState extends State<CarMeterScreen> {
  final TextEditingController odometerController = TextEditingController();
  XFile? odometerImage;
  bool _isLoading = false;

  CameraController? _controller;
  bool _isCameraInitialized = false;

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
      ResolutionPreset.high,
      enableAudio: false,
    );
    await _controller!.initialize();
    setState(() => _isCameraInitialized = true);
  }

  Future<File> _cropToFrame(XFile file) async {
    final bytes = await File(file.path).readAsBytes();
    final decoded = img.decodeImage(bytes)!;

    // 🟢 أبعاد الصورة الحقيقية
    final imageWidth = decoded.width;
    final imageHeight = decoded.height;

    // 🟢 أبعاد overlay (زي اللي في build)
    final overlayWidth = MediaQuery.of(context).size.width * 0.7;
    final overlayHeight = MediaQuery.of(context).size.height * 0.15;
    final overlayLeft = (MediaQuery.of(context).size.width - overlayWidth) / 2;
    final overlayTop = (MediaQuery.of(context).size.height - overlayHeight) / 2;

    // 🟢 تزود مسافة فوق وتحت (تقدر تزود القيم دي للتجربة)
    final extraTop = MediaQuery.of(context).size.height * 0.1;
    final extraBottom = MediaQuery.of(context).size.height * 0.1;

    // 🟢 scale من الشاشة → الصورة
    final scaleX = imageWidth / MediaQuery.of(context).size.width;
    final scaleY = imageHeight / MediaQuery.of(context).size.height;

    // 🟢 مستطيل الكروب
    final cropRect = Rect.fromLTWH(
      overlayLeft * scaleX,
      (overlayTop - extraTop) * scaleY,
      overlayWidth * scaleX,
      (overlayHeight + extraTop + extraBottom) * scaleY,
    );

    // 🟢 قص الجزء المطلوب
    final cropped = img.copyCrop(
      decoded,
      x: cropRect.left.toInt().clamp(0, imageWidth),
      y: cropRect.top.toInt().clamp(0, imageHeight),
      width: cropRect.width.toInt().clamp(0, imageWidth),
      height: cropRect.height.toInt().clamp(0, imageHeight),
    );

    final directory = await getApplicationDocumentsDirectory();
    final croppedPath = '${directory.path}/cropped_${file.name}';
    final croppedFile = File(croppedPath)..writeAsBytesSync(img.encodeJpg(cropped));

    return croppedFile;
  }

  Future<void> _captureImage(String referenceNumber) async {
    if (!_controller!.value.isInitialized) return;

    try {
      final image = await _controller!.takePicture();

      setState(() => _isLoading = true);

      // قص الصورة على قد المستطيل
      final croppedFile = await _cropToFrame(image);
      odometerImage = XFile(croppedFile.path);

      final orderService = OrderService();
      await orderService.finishFuelOrder(
        image: odometerImage!,
        refNumber: referenceNumber,
      );

      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => OrderQrCodeScreen(
            order: widget.order,
          ),
        ),
      );
    } catch (e) {
      showToast(text: "$e", state: ToastStates.error);
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<File> saveFile(XFile file) async {
    final directory = await getApplicationDocumentsDirectory();
    final path = '${directory.path}/${file.name}';
    return File(file.path).copy(path);
  }

  @override
  void dispose() {
    _controller?.dispose();
    odometerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: FutureHubAppBar(
        title: Text(
          t.meterNumber,
          style: const TextStyle(
            color: Palette.blackColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        context: context,
      ),
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              reverse: true,
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Illustration Image
                      Center(
                        child: Image.asset(
                          'assets/images/car.png',
                          height: 150,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Instruction Text
                      Center(
                        child: Text(
                          t.meterNumberRequest,
                          style: theme.textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Odometer Number Input
                      TextField(
                        keyboardType: TextInputType.number,
                        controller: odometerController,
                        decoration: InputDecoration(
                          hintText: t.meterNumber,
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Camera preview
                      if (_isCameraInitialized)
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.45,
                              width: MediaQuery.of(context).size.width * 0.8,
                              child: CameraPreview(_controller!),
                            ),
                            IgnorePointer(
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height: MediaQuery.of(context).size.height * 0.15,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.purple, width: 3),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 20,
                              right: 20,
                              child: Image.asset(
                                "assets/images/speedometerImage.png",
                                height: MediaQuery.of(context).size.height * 0.15,
                                filterQuality: FilterQuality.none, // Disable mipmapping
                                isAntiAlias: false,
                              ),
                            )
                          ],
                        )
                      else
                        const Center(child: CircularProgressIndicator()),
                      SizedBox(
                          height: _isCameraInitialized
                              ? 20
                              : MediaQuery.of(context).size.height * 0.45),

                      // Confirm Button
                      BlocBuilder<OrderCubit, OrderState>(
                        builder: (context, state) {
                          if (state is OrderCreatedState) {
                            return SizedBox(
                              height: 51,
                              width: 200,
                              child: ElevatedButton(
                                onPressed:
                                    _isLoading ? null : () => _captureImage(state.referenceNumber),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xff55217F),
                                  minimumSize: const Size(double.infinity, 50),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                  disabledBackgroundColor: const Color(0xff55217F).withOpacity(0.5),
                                ),
                                child: _isLoading
                                    ? const SizedBox(
                                        width: 24,
                                        height: 24,
                                        child: CircularProgressIndicator(
                                          color: Colors.white,
                                          strokeWidth: 3,
                                        ),
                                      )
                                    : Text(
                                        t.next,
                                        style: theme.textTheme.titleLarge!
                                            .copyWith(color: Colors.white),
                                      ),
                              ),
                            );
                          }
                          return const SizedBox(
                            height: 200,
                            child: Center(
                              child: CircularProgressIndicator.adaptive(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
