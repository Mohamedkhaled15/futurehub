import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/auth/models/company.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_card.dart';
import 'package:future_hub/common/wallet/widgets/transaction_card.dart';

class TransactionScreen extends StatelessWidget {
  final CompanyTransactionHistory transaction;
  const TransactionScreen({required this.transaction, super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    final label = {
      'withdrawal': t.withdrawal,
      'transfer': t.withdrawal,
      'deposit': t.deposit,
    };

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(t.transaction_details),
        context: context,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TransactionCard(transaction: transaction),
            const SizedBox(height: 16.0),
            Text(t.transaction_details, style: theme.textTheme.titleLarge),
            const SizedBox(height: 18.0),
            ChevronCard(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              t.transaction_type,
                              style: theme.textTheme.bodySmall,
                            ),
                            const SizedBox(height: 12.0),
                            Text(
                              label[transaction.type]!,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              t.reciever,
                              style: theme.textTheme.bodySmall,
                            ),
                            const SizedBox(height: 12.0),
                            Text(
                              transaction.id.toString() ?? t.unknown,
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              t.transaction_amount,
                              style: theme.textTheme.bodySmall,
                            ),
                            const SizedBox(height: 12.0),
                            Text(
                              '${transaction.amount} ${t.sar}',
                              style: theme.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      // Expanded(
                      //   child: Column(
                      //     crossAxisAlignment: CrossAxisAlignment.stretch,
                      //     children: [
                      //       Text(
                      //         t.remaining_balance,
                      //         style: theme.textTheme.bodySmall,
                      //       ),
                      //       const SizedBox(height: 12.0),
                      //       Text(
                      //         transaction.type != null
                      //             ? '${transaction.amount} ${t.sar}'
                      //             : t.unknown,
                      //         style: theme.textTheme.bodyLarge,
                      //       ),
                      //     ],
                      //   ),
                      // ),
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
