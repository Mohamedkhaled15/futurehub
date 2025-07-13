import 'dart:ui';

import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';

class HomeHint extends StatelessWidget {
  const HomeHint({super.key, required this.onPressed});
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Stack(
      children: [
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 1.7, sigmaY: 1.7),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Palette.blackColor.withOpacity(0.55),
          ),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.1,
          left: Directionality.of(context) == TextDirection.rtl ? null : 20,
          right: Directionality.of(context) == TextDirection.rtl ? 20 : null,
          child: GestureDetector(
            onTap: onPressed,
            child: Text(
              t.skip,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Palette.whiteColor,
              ),
            ),
          ),
        ),
        Positioned(
            bottom: MediaQuery.of(context).size.height * 0.35,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  t.add_quick_order_hint,
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Palette.whiteColor,
                  ),
                ),
              ],
            )),
        Positioned(
          bottom: MediaQuery.of(context).size.height * 0.12,
          left: Directionality.of(context) == TextDirection.rtl
              ? MediaQuery.of(context).size.width * 0.1
              : 0,
          right: Directionality.of(context) == TextDirection.rtl ? 0 : 0,
          // textDirection: Directionality.of(context),
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.25,
            child: Transform(
              transform: Matrix4.translationValues(
                  Directionality.of(context) == TextDirection.rtl ? 0 : 0.0,
                  0.0,
                  90.0),
              child: Image.asset(
                'assets/images/home-hint.png',
                fit: BoxFit.contain,filterQuality: FilterQuality.none,  // Disable mipmapping
  isAntiAlias: false, 
              ),
            ),
          ),
        )
      ],
    );
  }
}
