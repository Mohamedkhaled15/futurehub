import 'package:dio/dio.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/employee/orders/models/puncher_branch.dart';
import 'package:future_hub/employee/orders/models/services_branch_model.dart';

class PunchersServices {
  final _dioHelper = DioHelper();
  Future<PuncherBranch> fetchBranches(int page, double lat, double lng) async {
    final token = await CacheManager.getToken();
    // Set up the query parameters
    final queryParams = {
      'page': page,
      'per_page': 15,
      'latitude': lat,
      'longitude': lng,
    };
    try {
      // Perform the GET request
      final response = await _dioHelper.getData(
        url: ApiConstants.serviceProvidersFuelBranches,
        token: token,
        query: queryParams,
      );
      // Parse the JSON response using your model
      final puncherBranch = PuncherBranch.fromJson(response.data);
      return puncherBranch;
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

  Future<PuncherBranch> fetchAllBranches(double lat, double lng) async {
    final token = await CacheManager.getToken();
    try {
      final queryParams = {
        'latitude': lat,
        'longitude': lng,
      };
      // Perform the GET request without pagination
      final response = await _dioHelper.getData(
        url: ApiConstants.serviceProvidersFuelBranches,
        token: token,
        query: queryParams, // No pagination parameters
      );

      // Parse the response and return the list of Punchers
      final puncherBranch = PuncherBranch.fromJson(response.data);
      return puncherBranch;
    } on DioException catch (e) {
      print('Error fetching all punchers: ${e.response?.data ?? e.message}');
      rethrow;
    } catch (e) {
      print('Unexpected error: $e');
      rethrow;
    }
  }

  Future<ServicesPuncherBranch> fetchServicesBranches(
      int page, int id, double lat, double lng) async {
    final token = await CacheManager.getToken();
    // Set up the query parameters
    final queryParams = {
      'page': page,
      'per_page': 15,
      'category_id': id,
      'latitude': lat,
      'longitude': lng,
    };
    try {
      // Perform the GET request
      final response = await _dioHelper.getData(
        url: ApiConstants.serviceProvidersServicesBranches,
        token: token,
        query: queryParams,
      );
      // Parse the JSON response using your model
      final servicesBranch = ServicesPuncherBranch.fromJson(response.data);
      return servicesBranch;
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

  Future<ServicesPuncherBranch> fetchAllServicesBranches(
      int id, double lat, double lng) async {
    final token = await CacheManager.getToken();
    try {
      // Perform the GET request without pagination
      final response = await _dioHelper.getData(
        url: ApiConstants.serviceProvidersServicesBranches,
        token: token,
        query: {
          'category_id': id,
          'latitude': lat,
          'longitude': lng,
        }, // No pagination parameters
      );
      // Parse the response and return the list of Punchers
      final servicesBranch = ServicesPuncherBranch.fromJson(response.data);
      return servicesBranch;
    } on DioException catch (e) {
      print('Error fetching all punchers: ${e.response?.data ?? e.message}');
      rethrow;
    } catch (e) {
      print('Unexpected error: $e');
      rethrow;
    }
  }
}
