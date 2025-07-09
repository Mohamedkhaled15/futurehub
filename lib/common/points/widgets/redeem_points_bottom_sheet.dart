import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/points/services/points_service.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:go_router/go_router.dart';

import '../../shared/palette.dart';
import '../../shared/widgets/chevron_bottom_sheet.dart';
import '../../shared/widgets/chevron_button.dart';

class RedeemPointsBottomSheet extends StatefulWidget {
  const RedeemPointsBottomSheet({super.key});

  @override
  State<RedeemPointsBottomSheet> createState() =>
      _RedeemPointsBottomSheetState();
}

class _RedeemPointsBottomSheetState extends State<RedeemPointsBottomSheet> {
  final _pointsController = TextEditingController();

  final pointsService = PointsService();
  bool loading = false;

  Future<void> _redeemPoints() async {
    runFetch(
      context: context,
      fetch: () async {
        setState(() {
          loading = true;
        });
        // final result = await pointsService.createUserCoupon(
        //     points: int.parse(_pointsController.text));

        if (mounted) {
          // UserGiftsCubit.get(context).update(context);
          context.pop();
          // context.push('/points/redeemed', extra: result);
        }
      },
      after: () {
        setState(() {
          loading = false;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: ChevronBottomSheet(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                t.redeem_points,
                style: theme.textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12.0),
              Text(
                t.minimum_number_points_redeemed_is_25_points,
                style: theme.textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    t.number_of_points,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Palette.blackColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 2, 10, 2),
                    margin: const EdgeInsets.only(top: 4, bottom: 16),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: Colors.black12)),
                    child: TextField(
                      controller: _pointsController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: t.enter_number_of_points,
                      ),
                    ),
                  )
                ],
              ),
              ChevronButton(
                onPressed: _redeemPoints,
                loading: loading,
                child: Text(t.redeem_points),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
