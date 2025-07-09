import 'package:future_hub/common/points/models/user_gift.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_card.dart';
import 'package:future_hub/common/shared/widgets/labeled_icon_placeholder.dart';

import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class PointsRedeemedScreen extends StatefulWidget {
  final bool old;
  final UserGift userGift;

  const PointsRedeemedScreen({
    super.key,
    required this.userGift,
    this.old = false,
  });

  @override
  State<PointsRedeemedScreen> createState() => _PointsRedeemedScreenState();
}

class _PointsRedeemedScreenState extends State<PointsRedeemedScreen> {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(t.points),
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LabeledIconPlaceholder(
              icon: SvgPicture.asset('assets/icons/gift.svg'),
              label:
                  widget.old ? t.your_points : t.points_redeemed_successfully,
            ),
            const SizedBox(height: 50.0),
            ChevronCard(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                children: [
                  Image.network(
                    widget.userGift.barcode,
                    height: 75,
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(t.value),
                      const SizedBox(width: 8.0),
                      Text(
                        '${widget.userGift.amount} ${t.sar}',
                        style: theme.textTheme.bodyLarge!.copyWith(
                          color: Palette.blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(t.reference_number),
                      const SizedBox(width: 8.0),
                      Text(
                        '#${widget.userGift.referenceNumber}',
                        style: theme.textTheme.bodyLarge!.copyWith(
                          color: Palette.blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(t.expiration_date),
                      const SizedBox(width: 8.0),
                      Text(
                        DateFormat('dd MMMM yyyy', t.localeName)
                            .format(DateTime.parse(widget.userGift.expiryDate)),
                        style: theme.textTheme.bodyLarge!.copyWith(
                          color: Palette.blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
