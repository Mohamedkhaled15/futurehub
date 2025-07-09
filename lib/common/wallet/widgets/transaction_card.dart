import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/auth/models/company.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_card.dart';

final icons = {
  "withdrawal": 'assets/icons/withdrawal.svg',
  "transfer": 'assets/icons/withdrawal.svg',
  "deposit": 'assets/icons/deposit.svg',
};

final label = {
  "withdrawal": 'assets/icons/withdrawal.svg',
  "transfer": 'assets/icons/withdrawal.svg',
  "deposit": 'assets/icons/deposit.svg',
};

class TransactionCard extends StatelessWidget {
  final void Function()? onPressed;
  final CompanyTransactionHistory transaction;

  const TransactionCard({
    super.key,
    required this.transaction,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;

    final label = {
      'withdrawal': t.withdrawal,
      'transfer': t.withdrawal,
      'deposit': t.deposit,
    };

    return ChevronCard(
      onPressed: onPressed,
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 11.0,
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(25), // Set your background color here
              color: Palette.primaryColor.withOpacity(0.1),
            ),
            padding: const EdgeInsets.all(11.0),
            // color: Palette.primaryColor.withOpacity(0.1),
            child: SvgPicture.asset(
              icons[transaction.type]!,
              height: 20.0,
              width: 20.0,
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  label[transaction.type]!,
                  style: theme.textTheme.bodyLarge,
                ),
                const SizedBox(height: 5.0),
                Text(
                  transaction.transactionNumber ?? "",
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                transaction.amount.toString(),
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 5.0),
              Text(
                t.sar,
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
