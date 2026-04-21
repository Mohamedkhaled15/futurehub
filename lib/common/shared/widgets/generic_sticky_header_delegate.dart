import 'package:flutter/material.dart';

class GenericStickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final double height;
  final Color? backgroundColor;

  GenericStickyHeaderDelegate({
    required this.child,
    required this.height,
    this.backgroundColor,
  });

  @override
  double get minExtent => height;

  @override
  double get maxExtent => height;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      height: height,
      color: backgroundColor ?? Colors.white,
      child: child,
    );
  }

  @override
  bool shouldRebuild(covariant GenericStickyHeaderDelegate oldDelegate) {
    return oldDelegate.child != child ||
        oldDelegate.height != height ||
        oldDelegate.backgroundColor != backgroundColor;
  }
}
