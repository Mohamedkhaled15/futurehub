import 'dart:math';
import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/palette.dart';

class LoginImage extends StatelessWidget {
  final String? url;

  const LoginImage({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    final direction = Directionality.of(context);

    return ClipPath(
      clipper: LoginImageClipper(direction: direction),
      child: Stack(
        children: [
          url != null
              ? Positioned.fill(
                  child: Image.network(
                    url!,
                    fit: BoxFit.cover,
                    alignment: Alignment.bottomLeft,
                  ),
                )
              : const Center(child: CircularProgressIndicator.adaptive()),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: Palette.overlayGradient,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LoginImageClipper extends CustomClipper<Path> {
  final TextDirection direction;

  const LoginImageClipper({required this.direction});

  bool get _isRTL => direction == TextDirection.rtl;

  @override
  Path getClip(Size size) {
    final width = size.width;
    final height = size.height;
    const angle = 142.0 / 180.0 * pi;
    const offset = 75.0;
    final x = _isRTL ? offset : width - offset;
    final y = x / tan(angle / 2);
    final ratio = (width - x) / x;

    final path = Path()
      ..lineTo(0, height - y)
      ..lineTo(x, height)
      ..lineTo(width, height - ratio * y)
      ..lineTo(width, 0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
