import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/puncher/shared/camera_border_painter.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class QrCodeScanner extends StatefulWidget {
  final String title;
  final String description;
  final void Function(String value) onScan;
  final bool showAppBar;

  const QrCodeScanner(
      {super.key,
      required this.title,
      required this.description,
      required this.onScan,
      this.showAppBar = true});

  @override
  State<QrCodeScanner> createState() => _QrCodeScannerState();
}

class _QrCodeScannerState extends State<QrCodeScanner> {
  bool detected = false;
  double zoomLevel = 0.0;
  late MobileScannerController controller;

  @override
  void initState() {
    super.initState();
    controller = MobileScannerController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);

    return Stack(
      fit: StackFit.expand,
      children: [
        MobileScanner(
          controller: controller,
          onDetect: (capture) {
            final value = capture.barcodes.first.rawValue;

            if (value == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(t.the_qr_code_is_broken_please_try_again),
                ),
              );
              return;
            }

            if (!detected) {
              widget.onScan(value);
            }

            setState(() {
              detected = true;
            });
          },
        ),
        ColorFiltered(
          colorFilter: ColorFilter.mode(
            Palette.blackColor.withOpacity(0.8),
            BlendMode.srcOut,
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Palette.blackColor,
                  backgroundBlendMode: BlendMode.dstOut,
                ),
              ),
              Center(
                child: Container(
                  width: 0.85 * size.width,
                  height: 0.85 * size.width,
                  decoration: BoxDecoration(
                    color: Palette.blackColor,
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        Center(
          child: CustomPaint(
            foregroundPainter: CameraBorderPainter(),
            child: SizedBox(
              width: 0.85 * size.width,
              height: 0.85 * size.width,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: 0.1 * size.width,
            horizontal: 0.15 * size.width,
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              if (widget.showAppBar)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/app-bar-logo.svg',
                      height: 10,
                    ),
                    Text(
                      widget.title,
                      style: theme.textTheme.titleLarge!
                          .copyWith(color: Palette.whiteColor),
                    ),
                    GestureDetector(
                      onTap: () => context.pop(),
                      child: const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Palette.whiteColor,
                      ),
                    ),
                  ],
                ),
              SizedBox(
                height:
                    widget.showAppBar ? size.height * 0.7 : size.height * 0.65,
              ),
              Material(
                color: Colors.transparent,
                child: Directionality(
                  textDirection: TextDirection.ltr,
                  child: SliderTheme(
                    data: const SliderThemeData(
                      trackHeight: 10,
                      // Adjust thumb (tracker) size by defining a custom shape
                      thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 20.0, disabledThumbRadius: 30),
                      // Adjust inactive track shape (e.g., rounded corners)
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 20.0),
                    ),
                    child: Slider(
                      thumbColor: Palette.whiteColor,
                      inactiveColor: const Color.fromRGBO(195, 196, 255, 1),
                      activeColor: const Color.fromRGBO(195, 196, 255, 1),
                      value: zoomLevel,
                      min: 0.0,
                      max: 1.0,
                      onChanged: (value) async {
                        setState(() {
                          zoomLevel = value;
                        });

                        await controller.setZoomScale(zoomLevel);
                        // debugPrint(
                        //     "current zoom is ${controller.autoZoom.toString()}");
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
