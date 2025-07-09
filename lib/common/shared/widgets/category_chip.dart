import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String title;
  final bool selected;
  final void Function()? onPressed;

  const CategoryChip({
    super.key,
    required this.title,
    this.selected = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(right: 10.0),
        child: Container(
          color: selected
              ? Palette.primaryColor
              : Palette.primaryColor.withOpacity(0.04),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
            ),
            child: Center(
              child: Text(
                title,
                style: theme.textTheme.titleSmall!.copyWith(
                  color: selected ? Colors.white : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
