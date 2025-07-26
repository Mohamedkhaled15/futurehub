import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/services/map_services.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import '../../../l10n/app_localizations.dart';

class CarNumberScreen extends StatefulWidget {
  final String referenceNumber;
  final String type;
  final String vehiclePlateNumbers;
  final String plateLetters;

  const CarNumberScreen({
    super.key,
    required this.referenceNumber,
    required this.type,
    required this.vehiclePlateNumbers,
    required this.plateLetters,
  });

  @override
  State<CarNumberScreen> createState() => _CarNumberScreenState();
}

class _CarNumberScreenState extends State<CarNumberScreen> {
  XFile? editedImage;
  bool isLoading = false;
  bool plateMatches = false;
  static Position? position;
  late bool scanWithAi;
  final _ocrCorrections = {'L': '4'};

  late final TextRecognizer _recognizer;

  @override
  void initState() {
    final authState = context.read<AuthCubit>().state;
    if (authState is AuthSignedIn) {
      scanWithAi = authState.user.scanPlateByAi == 1;
    } else {
      scanWithAi = false;
    }

    _recognizer = TextRecognizer(script: TextRecognitionScript.latin);
    super.initState();
  }

  @override
  void dispose() {
    _recognizer.close();
    super.dispose();
  }

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
    setState(() {
      isLoading = true;
      plateMatches = false;
    });

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
          "Lat: ${position?.latitude.toStringAsFixed(6)}, Lng: ${position?.longitude.toStringAsFixed(6)}";

      final Uint8List newImageBytes =
          await _drawTextOnImage(pickedImage.path, locationText);
      final directory = await getApplicationDocumentsDirectory();
      final editedImagePath = '${directory.path}/edited_plate.png';
      await File(editedImagePath).writeAsBytes(newImageBytes);

      if (scanWithAi) {
        final recognized = await _recognizePlateNumber(editedImagePath);
        // final formattedPlateLetters = widget.plateLetters
        //     .replaceAll(RegExp(r'[^a-zA-Z]'), '')
        //     .toUpperCase();
        final expectedPlate =
            '${widget.vehiclePlateNumbers}${widget.plateLetters.toUpperCase().replaceAll(RegExp(r'[^A-Z]'), '')}';

        final similarity = _calculateSimilarity(recognized, expectedPlate);

        if (similarity >= 0.8) {
          plateMatches = true;
          editedImage = XFile(editedImagePath);
          showToast(
            text: 'تم التحقق من رقم اللوحة بنجاح',
            state: ToastStates.success,
          );
        } else {
          plateMatches = false;
          showToast(
            text:
                'رقم اللوحة غير مطابق. المتوقع: $expectedPlate, تم التعرف على: $recognized',
            state: ToastStates.error,
          );
        }
      } else {
        // لو AI مش شغال، نعتبر الصورة صالحة على طول
        plateMatches = true;
        editedImage = XFile(editedImagePath);
        showToast(
          text: 'تم التقاط الصورة بنجاح (بدون تحليل AI)',
          state: ToastStates.success,
        );
      }
    } catch (e) {
      debugPrint('Error: $e');
      showToast(
        text: 'حدث خطأ أثناء معالجة الصورة',
        state: ToastStates.error,
      );
    } finally {
      setState(() => isLoading = false);
    }
  }

  Future<String> _recognizePlateNumber(String imagePath) async {
    final inputImage = InputImage.fromFilePath(imagePath);
    final result = await _recognizer.processImage(inputImage);

    String bestCandidate = '';
    double maxConfidence = 0.0;

    for (final block in result.blocks) {
      for (final line in block.lines) {
        String text =
            line.text.toUpperCase().replaceAll(RegExp(r'[^A-Z0-9]'), '');
        text = _correctMisrecognizedCharacters(text);
        final confidence = line.confidence ?? 0;

        if (text.length >= 5 &&
            text.length <= 8 &&
            confidence > maxConfidence) {
          bestCandidate = text;
          maxConfidence = confidence;
        }
      }
    }

    return bestCandidate.isNotEmpty
        ? bestCandidate
        : _correctMisrecognizedCharacters(
            result.text.toUpperCase().replaceAll(RegExp(r'[^A-Z0-9]'), ''));
  }

  String _correctMisrecognizedCharacters(String input) {
    // نحاول نفصل بين الأرقام والحروف
    final digitsMatch = RegExp(r'\d+').firstMatch(input);
    final lettersMatch = RegExp(r'[A-Z]+').firstMatch(input);

    String digits = digitsMatch?.group(0) ?? '';
    String letters = lettersMatch?.group(0) ?? '';

    // نطبق التصحيح على الأرقام فقط
    final correctedDigits = digits.split('').map((char) {
      return _ocrCorrections[char] ?? char;
    }).join();

    return '$correctedDigits$letters';
  }

  double _calculateSimilarity(String a, String b) {
    if (a.isEmpty && b.isEmpty) return 1.0;
    final maxLength = a.length > b.length ? a.length : b.length;
    final distance = _levenshteinDistance(a, b);
    return 1.0 - (distance / maxLength);
  }

  int _levenshteinDistance(String a, String b) {
    final matrix =
        List.generate(a.length + 1, (i) => List.filled(b.length + 1, 0));
    for (var i = 0; i <= a.length; i++) matrix[i][0] = i;
    for (var j = 0; j <= b.length; j++) matrix[0][j] = j;

    for (var i = 1; i <= a.length; i++) {
      for (var j = 1; j <= b.length; j++) {
        final cost = a[i - 1] == b[j - 1] ? 0 : 1;
        matrix[i][j] = [
          matrix[i - 1][j] + 1,
          matrix[i][j - 1] + 1,
          matrix[i - 1][j - 1] + cost
        ].reduce((a, b) => a < b ? a : b);
      }
    }
    return matrix[a.length][b.length];
  }

  Future<Uint8List> _drawTextOnImage(String imagePath, String text) async {
    final Uint8List imageBytes = await File(imagePath).readAsBytes();
    final ui.Codec codec = await ui.instantiateImageCodec(imageBytes);
    final ui.FrameInfo frameInfo = await codec.getNextFrame();
    final ui.Image originalImage = frameInfo.image;

    final recorder = ui.PictureRecorder();
    final canvas = Canvas(recorder);
    canvas.drawImage(originalImage, Offset.zero, Paint());

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
    textPainter.layout(maxWidth: originalImage.width.toDouble());
    textPainter.paint(canvas, const Offset(10, 10));

    final newImage = await recorder
        .endRecording()
        .toImage(originalImage.width, originalImage.height);
    final byteData = await newImage.toByteData(format: ui.ImageByteFormat.png);
    return byteData!.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final labelStyle = theme.textTheme.titleLarge!
        .copyWith(fontWeight: FontWeight.bold, fontSize: 16);

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.vicheleId,
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
              physics: const BouncingScrollPhysics(),
              reverse: true,
              child: ConstrainedBox(
                constraints: BoxConstraints(minHeight: constraint.maxHeight),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          t.carNumber,
                          style: labelStyle.copyWith(color: Colors.purple),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: Image.asset(
                          'assets/images/car.png',
                          height: 150,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Center(
                        child: Text(
                          t.carNumberRequest,
                          style: theme.textTheme.bodyMedium,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      GestureDetector(
                        onTap: isLoading ? null : pickImageFromCamera,
                        child: Container(
                          height: editedImage != null ? null : 350,
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: isLoading
                              ? const Center(child: CircularProgressIndicator())
                              : editedImage != null
                                  ? Image.file(File(editedImage!.path),
                                      fit: BoxFit.cover)
                                  : Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Image.asset('assets/images/meter.png'),
                                        const SizedBox(width: 10),
                                        Text(
                                          t.carNumberRequestImage,
                                          style: TextStyle(
                                              color: Colors.grey.shade400),
                                        ),
                                      ],
                                    ),
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: plateMatches
                            ? () {
                                Navigator.pop(context);
                                _otpBottomSheet();
                              }
                            : null,
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
