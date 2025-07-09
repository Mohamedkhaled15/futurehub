import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountDataTabBarItem extends StatelessWidget {
  final String name;
  final String iconPath;
  final bool active;
  final void Function() onPressed;

  const AccountDataTabBarItem({
    super.key,
    required this.name,
    required this.iconPath,
    required this.active,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: onPressed,
      behavior: HitTestBehavior.opaque,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 250),
        opacity: active ? 1 : 0.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              iconPath,
              width: 20.0,
              height: 20.0,
              colorFilter: const ColorFilter.mode(
                Palette.dangerColor,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              name,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: Palette.dangerColor),
            ),
            const SizedBox(height: 10.0),
            Container(
              height: 2,
              width: 60,
              color: Palette.dangerColor,
            ),
          ],
        ),
      ),
    );
  }
}
