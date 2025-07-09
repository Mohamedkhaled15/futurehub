import 'package:flutter/material.dart';
import '../../../../l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_hub/common/profile/widgets/sign_out_bottom_sheet.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/settings/widgets/settings_tile.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:go_router/go_router.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  void signOut(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const SignOutBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: FutureHubAppBar(
        context: context,
        title: Text(
          t.settings,
          style: const TextStyle(
            fontSize: 22,
            color: Palette.blackColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height * 0.04,
            ),
            SizedBox(
              height: height * 0.4,
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  SettingListTile(
                    title: t.language,
                    icon: Image.asset('assets/images/language.png'),
                    onPressed: () => context.push('/language_screen'),
                    hasSubtitle: true,
                    subtitle: t.localeName == 'ar'
                        ? t.arabic
                        : t.localeName == 'ur'
                            ? t.urdu
                            : t.english,
                  ),
                  SettingListTile(
                    title: t.terms_and_conditions,
                    icon: Image.asset('assets/images/terms_and_conditions.png'),
                    onPressed: () => context.push('/terms'),
                  ),
                  SettingListTile(
                    title: t.privacy_policy,
                    icon: Image.asset('assets/images/pricay_policy.png'),
                    onPressed: () => context.push('/privacy'),
                  ),
                  SettingListTile(
                    showDivider: false,
                    title: t.support,
                    icon: Image.asset('assets/images/support.png'),
                    onPressed: () => context.push('/support_screen'),
                    subtitle: t.localeName == 'ar' ? t.arabic : t.english,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.08,
            ),
            InkWell(
              onTap: () => signOut(context),
              child: Row(
                children: [
                  SvgPicture.asset('assets/icons/logout.svg'),
                  SizedBox(
                    width: width * 0.04,
                  ),
                  Text(
                    t.sign_out,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Palette.dangerColor,
                    ),
                  )
                ],
              ),
            ),
            const Spacer(),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'v1.0',
                    style: TextStyle(
                      fontSize: 22,
                      color: Palette.blackColor,
                    ),
                  ),
                  Text(
                    t.caltex,
                    style: const TextStyle(
                      fontSize: 22,
                      color: Palette.blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
