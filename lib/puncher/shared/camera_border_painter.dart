import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/palette.dart';

class CameraBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    const cornerLength = 100.0;
    final height = size.height;
    final width = size.width;

    final paint = Paint()
      ..color = Palette.whiteColor
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.square;

    final path = Path()
      // Top-left corner
      ..moveTo(0, cornerLength)
      ..lineTo(0, 0)
      ..lineTo(cornerLength, 0)
      // Top-right corner
      ..moveTo(width - cornerLength, 0)
      ..lineTo(width, 0)
      ..lineTo(width, cornerLength)
      // Bottom-right corner
      ..moveTo(width, height - cornerLength)
      ..lineTo(width, height)
      ..lineTo(width - cornerLength, height)
      // Bottom-left corner
      ..moveTo(cornerLength, height)
      ..lineTo(0, height)
      ..lineTo(0, height - cornerLength);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CameraBorderPainter oldDelegate) => false;
}
