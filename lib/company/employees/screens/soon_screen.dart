import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:go_router/go_router.dart';

class SoonScreen extends StatelessWidget {
  const SoonScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.services,
          style: const TextStyle(
              color: Palette.blackColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        context: context,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset('assets/images/soon.png',
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,),
          Text(
            t.soon,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 25,
              color: Palette.blackColor,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            t.futureHub,
            maxLines: 3,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 15,
              color: Palette.greyColor,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height - 600,
          ),
          ChevronButton(
            // width: 311,
            onPressed: () {
              context.push('/company/home');
            },
            // loading: _loading,
            child: Text(
              t.main,
              style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
