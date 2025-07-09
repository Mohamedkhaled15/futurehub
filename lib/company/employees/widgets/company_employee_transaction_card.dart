import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/widgets/chevron_card.dart';
import 'package:future_hub/company/employees/model/driver_model.dart';

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

class EmployeeTransactionCard extends StatelessWidget {
  final void Function()? onPressed;
  final TransactionHistory transaction;

  const EmployeeTransactionCard({
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
    final transactionKey = CacheManager.locale == const Locale("en")
        ? transaction.title?.en ?? "withdrawal" // Fallback to "withdrawal"
        : transaction.title?.ar ?? "withdrawal";

    // Get icon with fallback
    final iconPath = icons[transactionKey] ?? 'assets/icons/deposit.svg';

    // Get label with fallback
    final transactionLabel = label[transactionKey] ?? t.unknown;
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
              iconPath, // Safely handles missing icons
              height: 20.0,
              width: 20.0,
              fit: BoxFit.contain,
              placeholderBuilder: (context) => const Icon(
                Icons.image_not_supported,
                color: Palette.primaryColor,
                size: 20.0,
              ), // Placeholder for missing SVG files
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  transactionLabel,
                  style: theme.textTheme.bodyLarge,
                ),
                const SizedBox(height: 5.0),
                Text(
                  transaction.orderId.toString(),
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
