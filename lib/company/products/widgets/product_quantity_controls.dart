import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/palette.dart';

class ProductQuantityControls extends StatelessWidget {
  final num quantity;
  final void Function()? onIncrement;
  final void Function()? onDecrement;

  const ProductQuantityControls({
    super.key,
    required this.quantity,
    this.onIncrement,
    this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GestureDetector(
              onTap: onDecrement,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Palette.primaryColor.withOpacity(0.04),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  child: Icon(
                    Icons.remove,
                    color: Palette.primaryColor,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 7),
            Text(
              quantity.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
            const SizedBox(width: 7),
            GestureDetector(
              onTap: onIncrement,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Palette.primaryColor.withOpacity(0.04),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
                  child: Icon(
                    Icons.add,
                    color: Palette.primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
