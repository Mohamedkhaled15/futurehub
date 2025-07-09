import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/graphql/schema.gql.dart';
import 'package:future_hub/common/shared/cubits/wallet_cubit/wallet_states.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/wallet/models/transaction_model.dart';
import 'package:future_hub/common/wallet/services/wallet_services.dart';

class WalletCubit extends Cubit<WalletStates> {
  WalletCubit() : super(WalletInitState());

  static WalletCubit get(context) => BlocProvider.of(context);

  int page = 1;
  double amount = 0.0;
  final _walletService = WalletService();

  List<Transaction> cubitTransactions = [];

  // Future<void> loadTransactions(context, {bool refresh = false}) async {
  //   if (state is WalletLoadingState) return;
  //
  //   final currentState = state;
  //
  //   var oldTransactions = <Transaction>[];
  //   if (currentState is WalletLoadedState) {
  //     oldTransactions = currentState.transactions;
  //   }
  //   if (refresh) {
  //     page = 1;
  //     oldTransactions = [];
  //   }
  //   emit(
  //     WalletLoadingState(
  //       oldTransactions,
  //       isFirstFetch: page == 1,
  //     ),
  //   );
  //   var mewTransactions = await _walletService.fetchWalletData(page: page);
  //   page++;
  //   final transactions = (state as WalletLoadingState).oldTransactions;
  //   transactions.addAll(mewTransactions.data);
  //   cubitTransactions = transactions;
  //   emit(WalletLoadedState(
  //     transactions,
  //     mewTransactions.hasMorePages,
  //   ));
  // }

  // Future<void> update(context) async {
  //   if (state is WalletLoadingState) return;
  //
  //   final currentState = state;
  //
  //   var oldTransactions = <Transaction>[];
  //   if (currentState is WalletLoadedState) {
  //     oldTransactions = currentState.transactions;
  //   }
  //
  //   emit(
  //     WalletLoadingState(
  //       oldTransactions,
  //       isFirstFetch: true,
  //     ),
  //   );
  //   var mewTransactions =
  //       await _walletService.fetchWalletData(page: 1, cache: false);
  //
  //   cubitTransactions = mewTransactions.data;
  //   emit(WalletLoadedState(
  //     cubitTransactions,
  //     mewTransactions.hasMorePages,
  //   ));
  // }

  Future<void> addBalanceToWallet({
    required int id,
    required String title,
    required double amount,
    required EnumPaymentMethod paymentMethod,
    required BuildContext context,
  }) async {
    if (state is! WalletLoadedState) return;
    await runFetch(
      context: context,
      fetch: () async {
        // var newTransaction = await _walletService.addBalanceToCompany(
        //    amount: amount,
        //    paymentMethod: paymentMethod,
        //    title: title
        //  );
        final transactions = (state as WalletLoadedState).transactions;
        emit(WalletLoadedState(transactions, true));
      },
    );
  }

  // payment(context, totalPrice, name, phone) {
  //   return TapPayment(
  //       apiKey: "sk_test_IAE3soYxTbRzUMk4GWdBgrpX",
  //       redirectUrl: "https://tap.company",
  //       postUrl: "https://tap.company",
  //       paymentData: {
  //         "amount": totalPrice,
  //         "currency": "SAR",
  //         "threeDSecure": true,
  //         "save_card": false,
  //         "description": "Test Description",
  //         "statement_descriptor": "Sample",
  //         "receipt": const {"email": true, "sms": true},
  //         "customer": {
  //           "first_name": name,
  //           "middle_name": "",
  //           "last_name": "",
  //           "email": "test@test.com",
  //           "phone": {"country_code": "966", "number": phone}
  //         },
  //         "merchant": const {"id": "18086957"},
  //         "source": const {"id": "src_card"},
  //       },
  //       onSuccess: (Map params) async {
  //         debugPrint("onSuccess: ${params['id']}");
  //       },
  //       onError: (error) {
  //         debugPrint("onError: $error");
  //       });
  // }

  void setAmount(double newAmount) {
    amount = newAmount;
    emit(WalletAmountState(amount: amount));
  }

  void addDigit(String digit) {
    final newAmountString =
        amount.toStringAsFixed(2).replaceAll('.', '') + digit;
    amount = double.parse(newAmountString) / 100;
    emit(WalletAmountState(amount: amount));
  }

  void clearAmount() {
    amount = 0.0;
    emit(WalletAmountState(amount: amount));
  }
}
