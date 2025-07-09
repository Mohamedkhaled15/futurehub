import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';

class ScanningLine extends StatefulWidget {
  const ScanningLine({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  State<ScanningLine> createState() => _ScanningLineState();
}

class _ScanningLineState extends State<ScanningLine>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
    _animation = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        SizedBox(
          width: size.width * 0.8,
          height: size.height * 0.38,
          child: Image.asset(
            widget.imageUrl,
            fit: BoxFit.contain,
          ),
        ),
        AnimatedBuilder(
          animation: _animation,
          builder: (context, child) {
            return Positioned(
              top: _animation.value *
                  size.height *
                  0.38, // Adjust this to match the image height
              left: 0,
              right: 0,
              child: Container(
                height: size.height * 0.01,
                color: Palette.primaryColor,
              ),
            );
          },
        ),
      ],
    );
  }
}
