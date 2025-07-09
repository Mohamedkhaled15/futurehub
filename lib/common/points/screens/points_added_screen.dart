import 'dart:math';

import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/labeled_icon_placeholder.dart';
import 'package:confetti/confetti.dart';

import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class PointsAddedScreen extends StatefulWidget {
  final int points;

  const PointsAddedScreen({
    super.key,
    required this.points,
  });

  @override
  State<PointsAddedScreen> createState() => _PointsAddedScreenState();
}

class _PointsAddedScreenState extends State<PointsAddedScreen> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(
      duration: const Duration(seconds: 10),
    );
    _confettiController.play();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(t.points),
        context: context,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                LabeledIconPlaceholder(
                  icon: SvgPicture.asset('assets/icons/gift.svg'),
                  label: '(${widget.points})',
                ),
                const SizedBox(height: 24.0),
                ChevronButton(
                  onPressed: context.pop,
                  style: ChevronButtonStyle.secondary,
                  child: Text(t.back_to_points),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: ConfettiWidget(
              confettiController: _confettiController,
              blastDirectionality: BlastDirectionality.explosive,
              blastDirection: pi / 2,
              emissionFrequency: 0.1,
              numberOfParticles: 5,
              gravity: 1,
            ),
          ),
        ],
      ),
    );
  }
}
