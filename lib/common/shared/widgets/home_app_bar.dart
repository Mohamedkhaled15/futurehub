import 'package:future_hub/common/notifications/screens/notifications_screen.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({required this.icon, super.key});
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 24, right: 24.0),
      child: Localizations.override(
        context: context,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            icon,
            Text(
              t.home,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NotificationsScreen(),
                ),
              ),
              child: SvgPicture.asset(
                'assets/icons/notifications-h.svg',
                height: 30,
                colorFilter: const ColorFilter.mode(
                  Palette.blackColor,
                  BlendMode.srcATop,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
