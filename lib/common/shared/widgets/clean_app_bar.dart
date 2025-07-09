import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CleanAppBar extends AppBar {
  CleanAppBar({super.key})
      : super(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [const CleanBackButton()],
        );
}

class CleanBackButton extends StatelessWidget {
  const CleanBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: context.pop,
      borderRadius: BorderRadius.circular(30.0),
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 60,
        width: 60,
        child: const Icon(
          Icons.arrow_forward_ios,
          size: 20.0,
          color: Palette.blackColor,
        ),
      ),
    );
  }
}
