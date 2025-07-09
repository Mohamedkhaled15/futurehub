import 'package:flutter/material.dart';
import 'package:future_hub/common/auth/models/user.dart';
import 'package:future_hub/common/shared/palette.dart';

class ProfileImageWidget extends StatelessWidget {
  const ProfileImageWidget({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2.0,
            color: Palette.whiteColor,
          ),
          borderRadius: BorderRadius.circular(65),
        ),
        child: CircleAvatar(
          radius: 65,
          backgroundImage: NetworkImage(user.image!),
        ),
      ),
    );
  }
}
