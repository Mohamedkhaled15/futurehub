import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerContainer extends StatelessWidget {
  final Widget child;

  const ShimmerContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Palette.greyColor.shade300,
      highlightColor: Palette.greyColor.shade100,
      child: child,
    );
  }
}
