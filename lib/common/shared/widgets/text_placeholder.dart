import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';

class TextPlaceholder extends StatelessWidget {
  final double height;
  final double space;
  final int lines;

  const TextPlaceholder({
    super.key,
    this.height = 18.0,
    this.space = 1.5,
    this.lines = 5,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: List.generate(lines, (int index) {
        final marginEnd = (index == lines - 1) ? size.width / 4.0 : 0.0;
        final marginBottom = (space - 1) * height;

        return Container(
          height: height,
          margin: EdgeInsetsDirectional.only(
            bottom: marginBottom,
            end: marginEnd,
          ),
          decoration: BoxDecoration(
            color: Palette.blackColor,
            borderRadius: BorderRadius.circular(4.0),
          ),
        );
      }),
    );
  }
}
