import 'package:flutter/material.dart';
import '../../../../l10n/app_localizations.dart';
import 'package:future_hub/common/profile/widgets/switch_language_bottom_sheet.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/settings/widgets/settings_tile.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: FutureHubAppBar(
        context: context,
        title: Text(
          t.language,
          style: const TextStyle(
            fontSize: 22,
            color: Palette.blackColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: height * 0.04,
            ),
            SettingListTile(
              title: "العربية",
              icon: Image.asset('assets/images/language.png'),
              onPressed: () {
                SwitchLanguageBottomSheet.switchLanguage(context,
                    language: 'ar');
              },
              hasSubtitle: false,
            ),
            SettingListTile(
              title: "English",
              icon: Image.asset('assets/images/language.png'),
              onPressed: () {
                SwitchLanguageBottomSheet.switchLanguage(context,
                    language: 'en');
              },
              hasSubtitle: false,
            ),
            SettingListTile(
              title: "Urdu",
              icon: Image.asset('assets/images/language.png'),
              onPressed: () {
                SwitchLanguageBottomSheet.switchLanguage(context,
                    language: 'ur');
              },
              hasSubtitle: false,
            ),
          ],
        ),
      ),
    );
  }
}
