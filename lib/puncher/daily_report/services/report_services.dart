import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/puncher/daily_report/model/puncher_report_model.dart';

class PuncherReportServices {
  final _dioHelper = DioHelper();

  Future<UserReport> getDailyReport(
      String date, int employeeId, String type) async {
    try {
      final queryParams = {
        "date": date,
        "employee_id": employeeId,
      };
      final token = await CacheManager.getToken();
      final response = await _dioHelper.getData(
        url: type == "Fuel"
            ? ApiConstants.reportFuelProvider
            : ApiConstants.reportServicesProvider,
        query: queryParams,
        token: token,
      );
      final responseData = response.data;
      // Extract values from the response
      // final success = responseData['success'];
      // final message = responseData['message'];
      // if (success == true) {
      //   debugPrint(message);
      //   showToast(text: message, state: ToastStates.success);
      // } else {
      //   throw Exception(message ?? 'Failed to confirm order');
      // }
      return UserReport.fromJson(responseData);
    } on DioException catch (e) {
      // Handle Dio-specific errors
      if (e.response != null) {
        debugPrint('Error: ${e.response?.data}');
        throw Exception(e.response?.data['message'] ?? 'An error occurred');
      } else {
        debugPrint('Error: ${e.message}');
        throw Exception('Network error: ${e.message}');
      }
    } catch (e) {
      // Handle general errors
      debugPrint('Error: $e');
      throw Exception('An unexpected error occurred');
    }
  }
}
