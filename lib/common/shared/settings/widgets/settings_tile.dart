import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';

class SettingListTile extends StatelessWidget {
  final String title;
  final Widget icon;
  final void Function() onPressed;
  final bool showDivider;
  final bool hasSubtitle;
  final String subtitle;

  const SettingListTile(
      {super.key,
      required this.title,
      required this.icon,
      required this.onPressed,
      this.showDivider = true,
      this.hasSubtitle = false,
      this.subtitle = ''});

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    // final direction = Directionality.of(context);
    // final t = AppLocalizations.of(context)!;
    return Column(
      children: [
        ListTile(
          onTap: onPressed,
          contentPadding: EdgeInsets.zero,
          title: Text(
            title,
            style: const TextStyle(fontSize: 22),
          ),
          horizontalTitleGap: 0,
          leading: SizedBox(
            width: 25.0,
            height: 25.0,
            child: icon,
          ),
          trailing: SizedBox(
            width: hasSubtitle
                ? MediaQuery.of(context).size.width * 0.22
                : MediaQuery.of(context).size.width * 0.1,
            child: Row(
              children: [
                if (hasSubtitle) ...[
                  Text(
                    subtitle,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ],
                const Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Palette.blackColor,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
        Divider(
          thickness: MediaQuery.of(context).size.height * 0.0001,
          color: Palette.dividerColor,
        ),
      ],
    );
  }
}
