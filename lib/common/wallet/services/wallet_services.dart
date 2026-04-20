import 'dart:io';

import 'package:dio/dio.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:future_hub/common/shared/utils/image_compression_helper.dart';

class WalletService {
  final _dioHelper = DioHelper();

  Future<String> addBalanceToCompany({
    required double amount,
    required XFile file,
  }) async {
    final compressedFile = await ImageCompressionHelper.compressImage(File(file.path));

    final formData = FormData.fromMap({
      "amount": amount,
      "attachment": await MultipartFile.fromFile(compressedFile.path,
          filename: compressedFile.path.split('/').last),
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
