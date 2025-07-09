import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/gradient_fill.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BalanceDetails extends StatelessWidget {
  final bool gradient;
  final bool isEmployeeDetails;
  final void Function()? onDeposit;
  final String balance;
  const BalanceDetails({
    super.key,
    required this.balance,
    this.gradient = false,
    this.onDeposit,
    this.isEmployeeDetails = false,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Column(
      children: [
        Row(
          children: [
            SvgPicture.asset('assets/icons/wallet.svg', width: 24.0),
            const SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.balance,
                  style: theme.textTheme.bodySmall,
                ),
                const SizedBox(height: 8.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    GradientFill(
                      gradient: gradient
                          ? Palette.primaryGradient
                          : Palette.colorGradient(),
                      child: Text(
                        balance,
                        style: theme.textTheme.headlineMedium!
                            .copyWith(color: Palette.blackColor),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        bottom: 5.0,
                        start: 8.0,
                      ),
                      child: Text(
                        t.sar,
                        style: theme.textTheme.bodySmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        if (!isEmployeeDetails) ...[
          const Divider(),
          ChevronButton(
            onPressed: onDeposit,
            dense: true,
            style: ChevronButtonStyle.text(Palette.primaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/withdraw.svg'),
                const SizedBox(width: 6.0),
                Text(t.deposit),
              ],
            ),
          )
        ],
      ],
    );
  }
}
