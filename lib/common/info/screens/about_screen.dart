import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:future_hub/common/info/cubit/info_cubit.dart';
import 'package:future_hub/common/info/cubit/info_state.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/shimmer_container.dart';
import 'package:future_hub/common/shared/widgets/text_placeholder.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(t.about_the_app),
        context: context,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: BlocBuilder<InfoCubit, InfoState>(
            builder: (context, state) {
              if (state is InfoLoaded) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Html(
                      data: state.data.about,
                      style: {
                        'body': Style(margin: Margins.all(0)),
                      },
                    ),
                    Text(
                      state.data.phone,
                      style: theme.textTheme.bodyMedium!.copyWith(height: 1.5),
                    ),
                    Text(
                      state.data.phone,
                      style: theme.textTheme.bodyMedium!.copyWith(height: 1.5),
                    ),
                  ],
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
  }
}
