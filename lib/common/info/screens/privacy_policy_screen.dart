import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:future_hub/common/info/cubit/info_cubit.dart';
import 'package:future_hub/common/info/cubit/info_state.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/shimmer_container.dart';
import 'package:future_hub/common/shared/widgets/text_placeholder.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return BlocBuilder<InfoCubit, InfoState>(
      builder: (context, state) {
        return Scaffold(
          appBar: FutureHubAppBar(
            title: Text(
              t.privacy_policy,
              style: const TextStyle(
                fontSize: 22,
                color: Palette.blackColor,
              ),
            ),
            context: context,
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: BlocBuilder<InfoCubit, InfoState>(
                builder: (context, state) {
                  if (state is InfoLoaded) {
                    return Html(
                      data: state.privacyModel.data,
                      style: {
                        'body': Style(margin: Margins.all(0)),
                      },
                    );
                  }
                  return const ShimmerContainer(
                    child: TextPlaceholder(lines: 10),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
