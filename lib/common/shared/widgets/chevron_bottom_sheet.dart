import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';

class ChevronBottomSheet extends StatelessWidget {
  final Widget child;
  final bool hasRadius;

  const ChevronBottomSheet(
      {super.key, required this.child, this.hasRadius = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: Palette.whiteColor,
        borderRadius: hasRadius
            ? const BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              )
            : BorderRadius.circular(0),
      ),
      child: SafeArea(
        top: false,
        child: child,
      ),
    );
  }
}
