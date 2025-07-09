import 'dart:math';

import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UpdateProfilePicture extends StatelessWidget {
  final ImageProvider? image;
  final bool loading;
  final void Function() onPressed;

  const UpdateProfilePicture({
    super.key,
    required this.image,
    required this.onPressed,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    const imageRadius = 70.0;
    const cameraRadius = 24.0;
    const cameraAngle = pi / 4;
    final cameraTop = imageRadius * (1 + sin(cameraAngle)) - cameraRadius;
    final cameraLeft = imageRadius * (1 - cos(cameraAngle)) - cameraRadius;

    return GestureDetector(
      onTap: onPressed,
      child: SizedBox(
        width: 2 * imageRadius,
        height: 2 * imageRadius,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: CircleAvatar(
                radius: imageRadius,
                backgroundColor: Palette.greyColor.shade300,
                backgroundImage: image,
              ),
            ),
            if (loading)
              Positioned.fill(
                child: CircleAvatar(
                  backgroundColor: Palette.blackColor.withOpacity(0.5),
                  child: const Center(
                    child: CircularProgressIndicator(
                      color: Palette.whiteColor,
                    ),
                  ),
                ),
              ),
            Positioned(
              top: cameraTop,
              left: cameraLeft,
              child: CircleAvatar(
                radius: cameraRadius,
                backgroundColor: Palette.primaryColor,
                child: SvgPicture.asset('assets/icons/camera.svg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
