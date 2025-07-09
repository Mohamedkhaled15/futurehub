import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/palette.dart';

class ChevronCard extends StatelessWidget {
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final void Function()? onPressed;

  const ChevronCard({
    super.key,
    this.child,
    this.padding = const EdgeInsets.all(16.0),
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: Palette.whiteColor,
          boxShadow: [Palette.cardShadow],
        ),
        child: child,
      ),
    );
  }
}
