import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/cubits/wallet_cubit/wallet_cubit.dart';
import 'package:future_hub/common/shared/cubits/wallet_cubit/wallet_states.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/common/wallet/screens/paymeny_web_view.dart';
import 'package:future_hub/common/wallet/services/wallet_services.dart';
import 'package:go_router/go_router.dart';

class PaymentMethodsScreen extends StatefulWidget {
  const PaymentMethodsScreen({super.key});

  @override
  State<PaymentMethodsScreen> createState() => _PaymentMethodsScreenState();
}

class _PaymentMethodsScreenState extends State<PaymentMethodsScreen> {
  int selectedIndex = 1; // Default to Online Payment

  @override
  Widget build(BuildContext context) {
    double amount = 0.0;
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final TextStyle labelStyle = theme.textTheme.titleLarge!.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.confirm_payment,
          style: const TextStyle(
              color: Palette.blackColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            BlocBuilder<WalletCubit, WalletStates>(
              builder: (context, state) {
                if (state is WalletLoadingState) {
                  return const Center(child: CircularProgressIndicator());
                } else if (state is WalletAmountState) {
                  amount = state.amount;
                  // const taxPercentage = 0.20; // Example tax percentage
                  // final taxAmount = amount * taxPercentage;
                  // final total = amount + taxAmount;

                  return _buildTotalCard(
                    labelStyle,
                    amount,
                  );
                } else {
                  return const Text("Failed to load amount");
                }
              },
            ),
            const SizedBox(height: 40),

            // Payment Methods
            Text(
              t.paymentBy,
              style: labelStyle.copyWith(color: Colors.purple),
            ),
            const SizedBox(height: 10),
            _buildPaymentOption(
              context,
              index: 0,
              title: t.bank_transfer,
              icon: "assets/images/bank.png",
            ),
            const SizedBox(height: 10),
            _buildPaymentOption(
              context,
              index: 1,
              title: t.ePayment,
              icon: "assets/images/visa.png",
            ),
            const SizedBox(height: 80),

            // Confirm Payment Button
            ElevatedButton(
              onPressed: () async {
                if (selectedIndex == 1) {
                  try {
                    final walletServices = WalletService();
                    final paymentUrl =
                        await walletServices.getPaymentUrl(amount);
                    final result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => WebViewScreen(
                          url: paymentUrl,
                        ),
                      ),
                    );
                    // Handle result
                    if (result == "success") {
                      showToast(
                        text: t.amount_added_successfully,
                        state: ToastStates.success,
                      );
                      context.go('/company'); // Navigate back to the app
                    } else if (result == "failure") {
                      showToast(
                        text: t.something_went_wrong,
                        state: ToastStates.error,
                      );
                    }
                  } catch (e) {
                    showToast(
                      text: e.toString(),
                      state: ToastStates.error,
                    );
                  }
                } else {
                  // Handle Bank Transfer
                  context.push("/bank-transfer-screen?isBank=true",
                      extra: amount);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(26),
                ),
              ),
              child: Text(
                t.confirm_payment,
                style:
                    theme.textTheme.titleLarge!.copyWith(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTotalCard(
    TextStyle labelStyle,
    double amount,
  ) {
    final t = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.purple.shade50,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.total,
            style: labelStyle.copyWith(color: Colors.purple),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(t.total, style: labelStyle.copyWith(fontSize: 16)),
              Text("${amount.toStringAsFixed(2)} ${t.sar} ",
                  style: labelStyle.copyWith(fontSize: 14)),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text("ضريبة", style: labelStyle.copyWith(fontSize: 14)),
          //     Text("20%", style: labelStyle.copyWith(fontSize: 14)),
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text("صافي الضريبة", style: labelStyle.copyWith(fontSize: 14)),
          //     Text("${tax.toStringAsFixed(2)} ريال",
          //         style: labelStyle.copyWith(fontSize: 14)),
          //   ],
          // ),
          // const Divider(thickness: 1, color: Colors.purple),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Text("الإجمالي الكلي", style: labelStyle),
          //     Text("${total.toStringAsFixed(2)} ريال", style: labelStyle),
          //   ],
          // ),
        ],
      ),
    );
  }

  Widget _buildPaymentOption(
    BuildContext context, {
    required int index,
    required String title,
    required String icon,
  }) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            style: BorderStyle.none,
            color:
                selectedIndex == index ? Colors.purple : Colors.grey.shade300,
          ),
        ),
        child: Row(
          children: [
            Radio(
              value: index,
              groupValue: selectedIndex,
              onChanged: (value) {
                setState(() {
                  selectedIndex = value as int;
                });
              },
              activeColor: Colors.purple,
            ),
            Image.asset(icon, height: 25),
            const SizedBox(width: 10),
            Text(
              title,
              style: theme.textTheme.bodyLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
