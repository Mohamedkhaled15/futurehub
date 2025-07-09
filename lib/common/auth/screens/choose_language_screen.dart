import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/profile/widgets/switch_language_bottom_sheet.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/router.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';

class ChooseLanguageScreen extends StatelessWidget {
  const ChooseLanguageScreen({super.key});

  Future<void> _chooseLanguage(String lang, BuildContext context) async {
    final onBoarding = await CacheManager.getData('onBoarding');
    if (context.mounted) {
      SwitchLanguageBottomSheet.switchLanguage(context, language: lang);
      CacheManager.saveData('languageScreen', 'true');
      if (onBoarding == null) {
        router.go('/onBoarding');
        return;
      }
      router.go('/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          t.app_language,
          style: const TextStyle(
            fontSize: 22,
            color: Palette.blackColor,
            fontWeight: FontWeight.w900,
          ),
        ),
        centerTitle: true, // Center the text
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/icons/app-bar-logo.svg',
          ), // Add a back arrow icon
          onPressed: () {
            // Handle the back button action
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // SizedBox(
            //   height: height * 0.2,
            // ),
            Center(
              child: SizedBox(
                  height: height * 0.2,
                  child: SvgPicture.asset(
                    'assets/images/language.svg',
                    fit: BoxFit.contain,
                  )),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Text(
              t.choose_app_language,
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: height * 0.12,
            ),
            InkWell(
              onTap: () => _chooseLanguage('en', context),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Palette.primaryColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: Text(
                        t.english,
                        style: const TextStyle(
                          color: Palette.whiteColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            InkWell(
              onTap: () => _chooseLanguage('ar', context),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Palette.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Palette.primaryColor,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: Text(
                        t.arabic,
                        style: const TextStyle(
                          color: Palette.primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            InkWell(
              onTap: () => _chooseLanguage('ur', context),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Container(
                  decoration: BoxDecoration(
                    color: Palette.whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: Palette.primaryColor,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: Text(
                        t.urdu,
                        style: const TextStyle(
                          color: Palette.primaryColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // const Spacer(),
            SizedBox(
              height: height * 0.02,
            ),
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
