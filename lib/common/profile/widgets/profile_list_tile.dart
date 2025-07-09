import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';

class ProfileListTile extends StatelessWidget {
  final String title;
  final Widget icon;
  final void Function() onPressed;

  const ProfileListTile({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPressed,
      contentPadding: EdgeInsets.zero,
      title: Text(
        title,
        style: const TextStyle(fontSize: 25),
      ),
      horizontalTitleGap: 1,
      leading: SizedBox(
        width: 30.0,
        height: 30.0,
        child: icon,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        color: Palette.blackColor,
        size: 20,
      ),
    );
  }
}
