import 'dart:io';

import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowForceUpdateBottomSheet extends StatelessWidget {
  const ShowForceUpdateBottomSheet({super.key});

  void _launchStore() {
    if (Platform.isAndroid) {
      launchUrl(Uri.parse(
          "https://play.google.com/store/search?q=future%20hub&c=apps"));
    } else if (Platform.isIOS) {
      launchUrl(
          Uri.parse("https://apps.apple.com/sa/app/future-hub/id6737515452"));
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return WillPopScope(
      onWillPop: () async => false,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Text(
              t.update_app,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 15),
            Text(
              t.update_require,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff55217F),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(55), // Button radius 55
                ),
                minimumSize: const Size(double.infinity, 55), // Button height
              ),
              onPressed: _launchStore,
              label: Text(
                t.update,
                style:
                    const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// // Usage remains the same
// void showForceUpdateBottomSheet(BuildContext context) {
//   showModalBottomSheet(
//     context: context,
//     isDismissible: false,
//     enableDrag: false,
//     isScrollControlled: true,
//     backgroundColor: Colors.white,
//     builder: (context) => const ShowForceUpdateBottomSheet(),
//   );
// }
