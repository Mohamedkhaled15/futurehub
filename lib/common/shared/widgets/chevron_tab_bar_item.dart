import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/gradient_fill.dart';
import 'package:flutter/material.dart';

class ChevronTabBarItem extends StatefulWidget {
  final Widget icon;
  final String name;
  final bool active;
  final void Function() onPressed;

  const ChevronTabBarItem({
    super.key,
    this.active = false,
    required this.icon,
    required this.name,
    required this.onPressed,
  });

  @override
  State<ChevronTabBarItem> createState() => _ChevronTabBarItemState();
}

class _ChevronTabBarItemState extends State<ChevronTabBarItem>
    with SingleTickerProviderStateMixin {
  static const _blackGradient = LinearGradient(
    colors: [Palette.blackColor, Palette.blackColor],
  );

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      value: widget.active ? 1 : 0,
      vsync: this,
    );
  }

  @override
  void didUpdateWidget(covariant ChevronTabBarItem oldWidget) {
    super.didUpdateWidget(oldWidget);

    final activeChanged = oldWidget.active != widget.active;
    if (activeChanged && widget.active) {
      _controller.forward();
    } else if (activeChanged && !widget.active) {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: widget.onPressed,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return GradientFill(
            gradient: _blackGradient.lerpTo(
              Palette.primaryGradient,
              _controller.value,
            )!,
            child: child,
          );
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 7.0),
            SizedBox(
              height: 20.0,
              child: widget.icon,
            ),
            const SizedBox(height: 4.0),
            Text(
              widget.name,
              style: theme.bottomNavigationBarTheme.selectedLabelStyle,
            ),
            const SizedBox(height: 6.0),
            ClipRect(
              child: AnimatedAlign(
                alignment: Alignment.topLeft,
                duration: const Duration(milliseconds: 200),
                widthFactor: widget.active ? 1 : 0,
                child: Container(
                  height: 3.0,
                  width: 24.0,
                  decoration: BoxDecoration(
                    gradient: Palette.primaryGradient,
                    borderRadius: BorderRadius.circular(1.5),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
