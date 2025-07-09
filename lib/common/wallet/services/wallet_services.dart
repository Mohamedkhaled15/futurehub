import 'package:dio/dio.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:image_picker/image_picker.dart';

class WalletService {
  // Future<PaginatorInfo<Transaction>> fetchWalletData({
  //   int page = 1,
  //   int? employee,
  //   bool cache = false,
  // }) async {
  //   final result = await Client.current.queryWallet(
  //     OptionsQueryWallet(
  //       variables: VariablesQueryWallet(
  //         page: page,
  //         employee: employee,
  //       ),
  //       fetchPolicy: cache ? FetchPolicy.cacheFirst : null,
  //     ),
  //   );
  //
  //   if (result.hasException) {
  //     throw FetchException.fromOperation(result.exception!);
  //   }
  //
  //   final data = result.parsedData?.wallets;
  //   final transactions = data?.data ?? [];
  //   final hasMorePages = data?.paginatorInfo.hasMorePages ?? false;
  //   final total = data?.paginatorInfo.total ?? 0;
  //
  //   return PaginatorInfo(
  //     data: transactions
  //         .map(
  //           (transaction) => Transaction(
  //             id: transaction.id,
  //             title: transaction.title ?? "",
  //             type: transaction.type ?? "",
  //             description: transaction.description ?? "",
  //             wallet: transaction.wallet != null
  //                 ? Wallet(
  //                     customer: transaction.wallet!.customer != null
  //                         ? User(
  //                             id: int.parse(transaction.wallet!.customer!.id),
  //                             name: transaction.wallet!.customer!.name ?? "",
  //                             // email: transaction.wallet!.customer!.email ?? "",
  //                             mobile:
  //                                 transaction.wallet!.customer!.mobile ?? "",
  //                             type: transaction.wallet!.customer!.type ?? "",
  //                             // limit:
  //                             //     transaction.wallet!.customer!.wallet_limit ??
  //                             //         0,
  //                             // spentAmount:
  //                             //     transaction.wallet!.customer!.withdrawal ?? 0,
  //                             wallet: transaction.wallet!.customer!.wallet ?? 0,
  //                           )
  //                         : null,
  //                   )
  //                 : null,
  //             amount: transaction.amount ?? "",
  //             paymentMethod: transaction.payment_method ?? "",
  //             createdAt: transaction.created_at ?? "",
  //             attachment: transaction.attachment ?? "",
  //             transactionNumber: transaction.transaction_number ?? "",
  //           ),
  //         )
  //         .toList(),
  //     hasMorePages: hasMorePages,
  //     total: total,
  //   );
  // }
  final _dioHelper = DioHelper();

  Future<String> addBalanceToCompany({
    required double amount,
    required XFile file,
  }) async {
    final formData = FormData.fromMap({
      "amount": amount,
      "attachment": await MultipartFile.fromFile(file.path,
          filename: file.path.split('/').last),
    });
    try {
      final token = await CacheManager.getToken();
      // Make the API call
      final response = await _dioHelper.postData(
        url: ApiConstants.bankTransfer,
        data: formData,
        token: token,
      );
      // Check if the response contains a success flag
      if (response.statusCode == 201) {
        final success = response.data['success'];
        final message = response.data['message'] ?? "Unknown response message";
        if (success == true) {
          return message; // Success case
        } else {
          throw Exception(message); // Handle specific failure message
        }
      } else {
        throw Exception("Unexpected response code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error during upload: $e");
    }
  }

  Future<String> getPaymentUrl(double amount) async {
    try {
      final token = await CacheManager.getToken();
      final response = await _dioHelper.getData(
        url: '/company/paymob-recharge/',
        token: token,
        query: {'amount': amount},
      );

      if (response.statusCode == 200) {
        final data = response.data;
        if (data['payment_url'] != null) {
          return data['payment_url'];
        } else {
          throw Exception("Payment URL not found in the response.");
        }
      } else {
        throw Exception(
            "Failed to fetch payment URL: ${response.statusMessage}");
      }
    } catch (e) {
      throw Exception("Error fetching payment URL: $e");
    }
  }
}
