import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/palette.dart';

class ChevronDashedBorder extends StatelessWidget {
  final Widget child;
  final Color color;

  const ChevronDashedBorder({
    super.key,
    required this.child,
    this.color = Palette.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      // options: RectDottedBorderOptions(
        color: color,
        dashPattern: const [3, 3],
        padding: const EdgeInsets.all(0.0),
      // ),
      child: child,
    );
  }
}
