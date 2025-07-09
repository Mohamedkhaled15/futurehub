import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/cubits/wallet_cubit/wallet_cubit.dart';
import 'package:future_hub/common/shared/cubits/wallet_cubit/wallet_states.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/common/wallet/widgets/numbric_keyboard.dart';
import 'package:go_router/go_router.dart';

class WalletRechargeScreen extends StatelessWidget {
  final List<double> quickAmounts = [100, 150, 200, 250, 500, 1000];

  WalletRechargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final cubit = context.read<WalletCubit>();
    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.rechargeWallet,
          style: const TextStyle(
              color: Palette.blackColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        context: context,
      ),
      body: BlocBuilder<WalletCubit, WalletStates>(
        builder: (context, state) {
          double amount = 0.0;
          if (state is WalletAmountState) {
            amount = state.amount;
          }
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  t.requiedAmount,
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.purple.shade100.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Text(
                        '${amount.toStringAsFixed(2)} ${t.sar}',
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w700,
                          color: Colors.purple.withOpacity(0.3),
                        ),
                      ),
                      Expanded(
                          child: Image.asset('assets/images/recharge.png')),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: quickAmounts.map((quickAmount) {
                    return ElevatedButton(
                      onPressed: () => cubit.setAmount(quickAmount),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple.withOpacity(0.2),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        shape: RoundedRectangleBorder(
                          side: BorderSide.none,
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: Text(
                        'ر.س $quickAmount',
                        style: const TextStyle(
                          color: Colors.purple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  }).toList(),
                ),
                const Spacer(),
                NumericKeypad(
                  onDigitPressed: (digit) => cubit.addDigit(digit),
                  onClearPressed: () => cubit.clearAmount(),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (amount == 0.00) {
                      showToast(
                          text: t.this_field_is_required,
                          state: ToastStates.error);
                    } else {
                      context.push('/payment-methods-screen');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 80, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: const Text(
                    'التالي',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
