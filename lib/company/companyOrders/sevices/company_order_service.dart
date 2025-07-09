import 'package:dio/dio.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/company/companyOrders/model/order_company_model.dart';

class CompanyOrderServices {
  final _dioHelper = DioHelper();
  Future<CompanyOrderModel> fetchCompanyOrders({
    int page = 1,
    bool cache = false,
  }) async {
    try {
      final token = await CacheManager.getToken();
      // Set up the query parameters
      final queryParams = {
        'page': page,
      };
      // Make the API call
      final response = await _dioHelper.getData(
        url: ApiConstants.companyOrder,
        query: queryParams,
        token: token,
      );
      // Parse the response into the model
      final responseData = response.data;
      final model = CompanyOrderModel.fromJson(responseData);

      return model;
    } on DioException catch (e) {
      // Handle Dio-specific errors
      print('Error fetching orders: ${e.response?.data ?? e.message}');
      rethrow;
    } catch (e) {
      // Handle generic errors
      print('Unexpected error: $e');
      rethrow;
    }
  }
}
