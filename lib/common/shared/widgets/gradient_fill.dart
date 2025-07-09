import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';

class GradientFill extends StatelessWidget {
  final Gradient gradient;
  final Widget? child;

  const GradientFill({
    super.key,
    this.gradient = Palette.primaryGradient,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (Rect bounds) => gradient.createShader(bounds),
      child: child,
    );
  }
}
