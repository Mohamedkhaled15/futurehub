import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/palette.dart';

class ChevronButtonStyle {
  final BoxDecoration decoration;
  final BoxDecoration activeDecoration;
  final Color textColor;

  const ChevronButtonStyle({
    required this.decoration,
    required this.textColor,
    BoxDecoration? activeDecoration,
  }) : activeDecoration = activeDecoration ?? decoration;

  static final primary = ChevronButtonStyle(
    decoration: BoxDecoration(
        color: Palette.primaryColor, borderRadius: BorderRadius.circular(50)),
    activeDecoration:
        const BoxDecoration(gradient: Palette.primaryReversedGradient),
    textColor: Palette.whiteColor,
  );

  static final secondary = ChevronButtonStyle(
    decoration: BoxDecoration(
      color: Palette.greyColor.shade200,
    ),
    activeDecoration: BoxDecoration(color: Palette.greyColor.shade400),
    textColor: Palette.greyColor.shade800,
  );

  static ChevronButtonStyle text([Color? color]) {
    color ??= Palette.greyColor.shade700;

    return ChevronButtonStyle(
      decoration: BoxDecoration(
        color: color.withOpacity(0),
      ),
      activeDecoration: BoxDecoration(color: color.withOpacity(0.07)),
      textColor: color,
    );
  }

  static ChevronButtonStyle dashed({
    Color color = Palette.primaryColor,
    bool filled = false,
  }) {
    return ChevronButtonStyle(
      decoration: BoxDecoration(
        color: color.withOpacity(filled ? 0.8 : 0.04),
      ),
      activeDecoration: BoxDecoration(
        color: color.withOpacity(filled ? 1 : 0.1),
      ),
      textColor: filled ? Palette.whiteColor : color,
    );
  }

  static final disabled = ChevronButtonStyle(
    decoration: BoxDecoration(
        color: const Color.fromRGBO(109, 148, 160, 1),
        borderRadius: BorderRadius.circular(50)),
    textColor: Palette.whiteColor,
  );
}

class ChevronButton extends StatefulWidget {
  final GestureTapCallback? onPressed;
  final Widget child;
  final bool disabled;
  final bool loading;
  final bool dense;
  final ChevronButtonStyle style;

  ChevronButton({
    super.key,
    required this.child,
    this.onPressed,
    this.disabled = false,
    this.loading = false,
    this.dense = false,
    ChevronButtonStyle? style,
  }) : style = disabled
            ? ChevronButtonStyle.disabled
            : (style ?? ChevronButtonStyle.primary);

  @override
  State<ChevronButton> createState() => _ChevronButtonState();
}

class _ChevronButtonState extends State<ChevronButton> {
  bool _tapped = false;

  @override
  Widget build(BuildContext context) {
    final decoration =
        _tapped ? widget.style.activeDecoration : widget.style.decoration;
    final textStyle = Theme.of(context)
        .textTheme
        .labelLarge!
        .copyWith(color: widget.style.textColor);

    return GestureDetector(
      onTap: (widget.disabled || widget.loading) ? null : widget.onPressed,
      onTapDown: (details) {
        if (widget.disabled || widget.loading) return;
        setState(() {
          _tapped = true;
        });
      },
      onTapUp: (details) {
        if (widget.disabled || widget.loading) return;

        setState(() {
          _tapped = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        decoration: decoration,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: widget.dense ? 12.0 : 18.0,
            horizontal: widget.dense ? 16.0 : 24.0,
          ),
          child: IconTheme.merge(
            data: IconThemeData(
              color: widget.style.textColor,
            ),
            child: DefaultTextStyle.merge(
              style: textStyle,
              child: widget.loading
                  ? Center(
                      child: SizedBox(
                        width: 17.0,
                        height: 17.0,
                        child: CircularProgressIndicator(
                          color: textStyle.color,
                          strokeWidth: 2.5,
                        ),
                      ),
                    )
                  : widget.child,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
