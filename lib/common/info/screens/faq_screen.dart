import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/info/cubit/info_cubit.dart';
import 'package:future_hub/common/info/cubit/info_state.dart';
import 'package:future_hub/common/info/widgets/question_card.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/shimmer_container.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.frequently_asked_questions,
          style: const TextStyle(
            fontSize: 22,
            color: Palette.blackColor,
          ),
        ),
        context: context,
      ),
      body: BlocBuilder<InfoCubit, InfoState>(
        builder: (context, state) {
          if (state is InfoLoaded) {
            final questions = state.questionData.data;

            return ListView.builder(
              padding: const EdgeInsets.all(24.0),
              itemCount: questions.length,
              itemBuilder: (context, index) {
                return QuestionCard(
                  question: questions[index],
                );
              },
            );
          }

          return ShimmerContainer(
            child: ListView.builder(
              padding: const EdgeInsets.all(24.0),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  color: Palette.blackColor,
                  margin: const EdgeInsets.only(bottom: 16.0),
                  height: 65,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
