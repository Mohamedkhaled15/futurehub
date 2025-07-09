import 'package:future_hub/common/shared/widgets/chevron_card.dart';
import 'package:future_hub/common/wallet/widgets/balance_details.dart';
import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final String balance;
  final bool isEmployeeDetails;
  final void Function()? onDeposit;

  const BalanceCard({
    super.key,
    required this.balance,
    this.onDeposit,
    this.isEmployeeDetails = false,
  });

  @override
  Widget build(BuildContext context) {
    return ChevronCard(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 16,
      ),
      child: BalanceDetails(
        balance: balance,
        onDeposit: onDeposit,
        isEmployeeDetails: isEmployeeDetails,
      ),
    );
  }
}
