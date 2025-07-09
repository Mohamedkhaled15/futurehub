import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';

import '../../shared/palette.dart';

class ProfilePoints extends StatelessWidget {
  final int points;

  const ProfilePoints({
    super.key,
    required this.points,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 18,
      ),
      margin: const EdgeInsets.symmetric(horizontal: 23),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2),
          border:
              Border.all(color: Theme.of(context).primaryColor.withAlpha(50))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            t.my_points_balance,
            style: theme.textTheme.headlineSmall!
                .copyWith(color: Palette.blackColor, fontSize: 20),
          ),
          Text(
            t.count_points(points),
            style: theme.textTheme.headlineSmall!.copyWith(
                color: Palette.blackColor, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
