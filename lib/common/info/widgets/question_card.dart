import 'package:flutter/material.dart';
import 'package:future_hub/common/info/models/questions_model.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';

class QuestionCard extends StatefulWidget {
  final Datum question;

  const QuestionCard({
    super.key,
    required this.question,
  });

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  bool _open = false;

  void _toggle() {
    setState(() {
      _open = !_open;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: _toggle,
      child: Container(
        decoration: BoxDecoration(
            color: Palette.tabBarColor,
            borderRadius: BorderRadius.circular(20)),
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        margin: const EdgeInsets.only(bottom: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  CacheManager.locale! == const Locale("en")
                      ? widget.question.title.en
                      : widget.question.title.ar,
                  style: theme.textTheme.titleLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                AnimatedRotation(
                  duration: const Duration(milliseconds: 250),
                  turns: _open ? 1 : 1.5,
                  child: const Icon(
                    Icons.keyboard_arrow_up,
                    size: 33.0,
                    color: Palette.blackColor,
                  ),
                ),
              ],
            ),
            ClipRect(
              child: AnimatedAlign(
                alignment: Alignment.topLeft,
                duration: const Duration(milliseconds: 250),
                heightFactor: _open ? 1 : 0,
                child: Container(
                  // margin: const EdgeInsets.only(top: 16.0),
                  padding: const EdgeInsets.only(top: 16.0),
                  // decoration: BoxDecoration(
                  //   border: Border(
                  //     top: BorderSide(
                  //       width: 2.0,
                  //       color: Palette.greyColor.shade400,
                  //     ),
                  //   ),
                  // ),
                  width: double.infinity,
                  child: Text(
                    CacheManager.locale! == const Locale("en")
                        ? widget.question.description.en
                        : widget.question.description.ar,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Palette.greyColor.shade600,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
