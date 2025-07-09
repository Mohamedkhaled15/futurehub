import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/widgets/chevron_card.dart';

class ChevronTabBar extends StatelessWidget {
  final List<Widget> children;

  const ChevronTabBar({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return ChevronCard(
      padding: const EdgeInsets.symmetric(
        vertical: 4.0,
        horizontal: 24.0,
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}
