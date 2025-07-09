import 'package:flutter/material.dart';

class Palette {
  static const blackColor = Colors.black;
  static const whiteColor = Colors.white;
  static const greyColor = Colors.grey;

  static const primaryColor = Color(0xFF3F1970);

  // static const primaryLightColor = Color(0xFF67C5F0);
  static const primaryLightColor = Color(0xFF5D58C3);
  static const textGreyColor = Color(0xFF979797);
  static const textFeildBorder = Color(0xFFDADADA);
  static const dividerColor = Color(0xFFA6A6A6);
  static const tabBarColor = Color(0xFFfbfbfb);
  static const pointsHintColor = Color(0xFFdbdbdb);
  static const productBackground = Color(0xffF2F7FF);
  static const background = Color(0xff6E6E6E);

  static const primaryGradient = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [
      // Color(0xFF19516C),
      Color(0xFF3F1970),
      Color(0xFF5D58C3)
      // Color(0xFF286D8E),
    ],
  );
  static const primaryReversedGradient = LinearGradient(
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
    colors: [
      Color(0xFF286D8E),
      Color(0xFF19516C),
    ],
  );
  static const successColor = Color(0xFF2CAF51);
  static const dangerColor = Color(0xFFE63A46);
  static const disabledColor = Color(0xFFDDDDDD);
  static const disabledTextColor = Color(0xFFA2A2A2);
  static const yellowStarColor = Color.fromRGBO(237, 191, 25, 1);
  static final overlayGradient = LinearGradient(
    colors: [
      Palette.blackColor.withOpacity(0.75),
      Palette.blackColor.withOpacity(0),
    ],
    stops: const [0, 0.4],
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
  );

  /// Used when you want to put a color in place of a gradient
  static Gradient colorGradient([Color color = Palette.blackColor]) {
    return LinearGradient(colors: [color, color]);
  }

  static final cardShadow = BoxShadow(
    blurRadius: 19.0,
    spreadRadius: -1.0,
    color: blackColor.withOpacity(0.1),
  );
}
