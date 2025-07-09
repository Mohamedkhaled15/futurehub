import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/services/map_services.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class CarNumberScreen extends StatefulWidget {
  final String referenceNumber;
  final String type;
  const CarNumberScreen(
      {super.key, required this.referenceNumber, required this.type});

  @override
  State<CarNumberScreen> createState() => _CarNumberBottomSheetState();
}

class _CarNumberBottomSheetState extends State<CarNumberScreen> {
  // final TextEditingController odometerController = TextEditingController();
  XFile? editedImage;
  bool isLoading = false; // Loading state
  static Position? position;
  // void _otpBottomSheet() {
  //   showModalBottomSheet(
  //     isScrollControlled: true,
  //     context: context,
  //     builder: (context) => VerifyOtpBottomSheet(
  //       referenceNumber: widget.referenceNumber,
  //       editedImage: editedImage,
  //       type: widget.type,
  //     ),
  //   );
  // }
  void _otpBottomSheet() {
    context.pushReplacementNamed(
      'otp-screen',
      pathParameters: {
        'referenceNumber': widget.referenceNumber,
        'type': widget.type,
      },
      extra: {
        'editedImagePath': editedImage?.path,
      },
    );
  }

  Future<void> pickImageFromCamera() async {
    setState(() => isLoading = true);

    try {
      final picker = ImagePicker();
      final XFile? pickedImage = await picker.pickImage(
        source: ImageSource.camera,
        maxHeight: 480,
        maxWidth: 640,
        imageQuality: 70,
      );

      if (pickedImage == null) {
        setState(() => isLoading = false);
        return;
      }

      position = await MapServices.getCurrentLocation();

      final locationText =
          "Lat: ${position?.latitude?.toStringAsFixed(6)}, Lng: ${position?.longitude?.toStringAsFixed(6)}";

      final Uint8List newImageBytes = await _drawTextOnImage(
        pickedImage.path,
        locationText,
      );

      final directory = await getApplicationDocumentsDirectory();
      final editedImagePath = '${directory.path}/edited_odometer.jpg';
      await File(editedImagePath).writeAsBytes(newImageBytes);

      setState(() {
        editedImage = XFile(editedImagePath);
        isLoading = false;
      });
    } catch (e) {
      debugPrint('Error: $e');
      setState(() => isLoading = false);
    }
  }

  Future<Uint8List> _drawTextOnImage(String imagePath, String text) async {
    final Uint8List imageBytes = await File(imagePath).readAsBytes();
    final ui.Codec codec = await ui.instantiateImageCodec(imageBytes);
    final ui.FrameInfo frameInfo = await codec.getNextFrame();
    final ui.Image originalImage = frameInfo.image;
    final ui.PictureRecorder recorder = ui.PictureRecorder();
    final Canvas canvas = Canvas(recorder);
    // Draw original image
    canvas.drawImage(originalImage, Offset.zero, Paint());
    // Prepare text painter
    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          shadows: [
            Shadow(
              blurRadius: 4.0,
              color: Colors.black,
              offset: Offset(2.0, 2.0),
            ),
          ],
        ),
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout(
      minWidth: 0,
      maxWidth: originalImage.width.toDouble(),
    );
    // Draw text on top
    textPainter.paint(canvas, const Offset(10, 10));
    final ui.Image newImage = await recorder
        .endRecording()
        .toImage(originalImage.width, originalImage.height);

    final ByteData? byteData =
        await newImage.toByteData(format: ui.ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final TextStyle labelStyle = theme.textTheme.titleLarge!.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.vicheleId,
          style: const TextStyle(
              color: Palette.blackColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        context: context,
      ),
      body: LayoutBuilder(
        builder: (context, constraint) {
          return Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              reverse: true,
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Title
                      Center(
                        child: Text(
                          t.carNumber,
                          style: labelStyle.copyWith(color: Colors.purple),
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Illustration Image
                      Center(
                        child: Image.asset(
                          'assets/images/car.png', // Replace with your asset image path
                          height: 150,
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Instruction Text
                      Center(
                        child: Text(
                          t.carNumberRequest,
                          style: theme.textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Odometer Number Input
                      // TextField(
                      //   controller: odometerController,
                      //   decoration: InputDecoration(
                      //     hintText: "اكتب هنا رقم العداد",
                      //     hintStyle: TextStyle(color: Colors.grey.shade400),
                      //     filled: true,
                      //     fillColor: Colors.grey.shade100,
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10),
                      //       borderSide: BorderSide.none,
                      //     ),
                      //     contentPadding:
                      //         const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                      //   ),
                      //   keyboardType: TextInputType.number,
                      // ),
                      const SizedBox(height: 15),

                      // Image Picker Container
                      GestureDetector(
                        onTap: pickImageFromCamera,
                        child: Container(
                          height: editedImage != null ? null : 350,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors.grey.shade300,
                                style: BorderStyle.none),
                          ),
                          child:
                              isLoading // Show loading indicator while processing
                                  ? const Center(
                                      child: CircularProgressIndicator())
                                  : editedImage != null
                                      ? Image.file(File(editedImage!.path),
                                          fit: BoxFit.cover)
                                      : Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                                'assets/images/meter.png'),
                                            const SizedBox(width: 10),
                                            Text(t.carNumberRequestImage,
                                                style: TextStyle(
                                                    color:
                                                        Colors.grey.shade400)),
                                          ],
                                        ),
                        ),
                      ),
                      const Spacer(),
                      // Confirm Button
                      ElevatedButton(
                        onPressed: editedImage == null
                            ? null
                            : () {
                                // Handle the confirmation process here
                                if (editedImage != null) {
                                  // Confirm process
                                  Navigator.pop(
                                      context); // Close the bottom sheet
                                  _otpBottomSheet();
                                } else {
                                  // Show error message or prompt to complete fields
                                  showToast(
                                      text: t.this_field_is_required,
                                      state: ToastStates.error);
                                }
                              },
                        style: ElevatedButton.styleFrom(
                          minimumSize: const Size(double.infinity, 50),
                          backgroundColor: const Color(0xff55217F),
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          disabledBackgroundColor:
                              const Color(0xff55217F).withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        child: Text(
                          t.confirm_order,
                          style: theme.textTheme.titleLarge!
                              .copyWith(color: Colors.white),
                        ),
                      ),
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
