import 'package:flutter/material.dart';

class LabeledIconPlaceholder extends StatelessWidget {
  final Widget icon;
  final String label;

  const LabeledIconPlaceholder({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        const SizedBox(height: 16.0),
        Text(
          label,
          style: theme.textTheme.titleLarge,
        ),
      ],
    );
  }
}
