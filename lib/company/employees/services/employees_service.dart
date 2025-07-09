import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:future_hub/common/graphql/schema.gql.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/company/employees/model/branch_model.dart';
import 'package:future_hub/company/employees/model/driver_model.dart';
import 'package:future_hub/company/employees/model/vehicles_models.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class EmployeesService {
  final _dioHelper = DioHelper();
  Future<CompanyDriversModel> getEmployees({
    int page = 1,
    bool cache = false,
  }) async {
    try {
      final token = await CacheManager.getToken();
      // Set up the query parameters
      final queryParams = {
        'page': page,
      };
      final response = await _dioHelper.getData(
        url: ApiConstants.companyDriver,
        query: queryParams,
        token: token,
      );
      final responseData = response.data;
      final model = CompanyDriversModel.fromJson(responseData);
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

  Future<DriverData> addSingleEmployee({
    required String name,
    required String phone,
    required String email,
    required String idNumber,
    required int branchId,
    required int vehicleId,
    required XFile image,
    required double? limit,
  }) async {
    try {
      final token = await CacheManager.getToken();
      final formData = FormData.fromMap({
        'name': name,
        'mobile': phone,
        'email': email,
        'national_id': idNumber,
        'branch_id': branchId,
        'vehicle_id': vehicleId,
        'pull_limit': limit,
        'image': await MultipartFile.fromFile(image.path,
            filename: image.path.split('/').last),
      });
      final response = await _dioHelper.postData(
          url: ApiConstants.addDriver, data: formData, token: token);
      final responseData = response.data;
      // Check for success in the response
      if (!responseData['success']) {
        throw Exception(responseData['message']);
      }
      final userData = responseData['data'];
      final user = DriverData.fromJson(userData);
      return user;
    } on DioException catch (e) {
      // Handle Dio-specific errors
      if (e.response != null) {
        throw Exception(e.response?.data['message'] ?? 'Something went wrong');
      } else {
        throw Exception('Network error: ${e.message}');
      }
    } catch (e) {
      throw Exception('Failed to add employee: ${e.toString()}');
    }
  }

  Future<void> stopEmployee({required int id}) async {
    try {
      final token = await CacheManager.getToken();
      final response = await _dioHelper.postData(
        url: '${ApiConstants.stopDriver}$id',
        token: token,
      );
      // Extract data from the response
      final data = response.data;
      final status = data['status'];
      final message = data['message'];

      if (status == 'FAIL') {
        throw Exception(message);
      }
      debugPrint(message);
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle server errors
        final errorMessage = e.response?.data['message'] ?? 'Unknown error';
        throw Exception(errorMessage);
      } else {
        // Handle connection or other unexpected errors
        throw Exception('Failed to connect to server');
      }
    }
  }

  Future<void> activateEmployee({required int id}) async {
    try {
      final token = await CacheManager.getToken();
      final response = await _dioHelper.postData(
        url: '${ApiConstants.resumeDriver}$id',
        token: token,
      );
      // Extract data from the response
      final data = response.data;
      final status = data['status'];
      final message = data['message'];

      if (status == 'FAIL') {
        throw Exception(message);
      }
      debugPrint(message);
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle server errors
        final errorMessage = e.response?.data['message'] ?? 'Unknown error';
        throw Exception(errorMessage);
      } else {
        // Handle connection or other unexpected errors
        throw Exception('Failed to connect to server');
      }
    }
  }

  Future<void> updateEmployee({
    required String name,
    required String phone,
    required String email,
    required String idNumber,
    required int branchId,
    required int vehicleId,
    required XFile image,
    required double? limit,
  }) async {
    try {
      final token = await CacheManager.getToken();
      final formData = FormData.fromMap({
        'name': name,
        'mobile': phone,
        'email': email,
        'national_id': idNumber,
        'branch_id': branchId,
        'vehicle_id': vehicleId,
        'pull_limit': limit,
        if (image != null) // Add the image field only if it's not null
          'image': await MultipartFile.fromFile(
            image.path,
            filename: image.path.split('/').last,
          ),
      });

      final response = await _dioHelper.putData(
          url: ApiConstants.addDriver, data: formData, token: token);

      if (response.data['status'] == 'FAIL') {
        throw Exception(response.data['message']);
      }

      return response.data['message'];
    } catch (e) {
      throw Exception('Failed to add employee: ${e.toString()}');
    }
  }

  Future<void> deleteEmployee({required int id}) async {
    try {
      final token = await CacheManager.getToken();
      final response = await _dioHelper.deleteData(
        url: '${ApiConstants.deleteDriver}$id',
        token: token,
      );
      // Extract data from the response
      final data = response.data;
      final status = data['status'];
      final message = data['message'];

      if (status == 'FAIL') {
        throw Exception(message);
      }
      debugPrint(message);
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle server errors
        final errorMessage = e.response?.data['message'] ?? 'Unknown error';
        throw Exception(errorMessage);
      } else {
        // Handle connection or other unexpected errors
        throw Exception('Failed to connect to server');
      }
    }
  }

  Future<void> addBalanceToEmployee(
      {required int id,
      required double amount,
      required EnumPaymentMethod paymentMethod}) async {
    try {
      final token = await CacheManager.getToken();
      final response = await _dioHelper.postData(
        url: '${ApiConstants.addDriverWallet}$id',
        token: token,
        data: {
          'driver_id': id,
          'amount': amount,
        },
      );
      // Extract data from the response
      final data = response.data;
      final status = data['status'];
      final message = data['message'];
      if (!data['success']) {
        throw Exception(data['message']);
      } else if (status == 'FAIL') {
        throw Exception(message);
      }
      debugPrint(message);
    } on DioException catch (e) {
      if (e.response != null) {
        // Handle server errors
        final errorMessage = e.response?.data['message'] ?? 'Unknown error';
        throw Exception(errorMessage);
      } else {
        // Handle connection or other unexpected errors
        throw Exception('Failed to connect to server');
      }
    }
  }

  Future<String> downloadFile() async {
    try {
      final tempDir = await getTemporaryDirectory();
      const fileName = 'ADD_Employee.xlsx'; // You can customize the file name
      final filePath = '${tempDir.path}/$fileName';
      final token =
          await CacheManager.getToken(); // Get the token for authentication
      if (filePath.isEmpty) {
        throw Exception("Invalid file path");
      }
      final response = await _dioHelper.downloadData(
        url: ApiConstants.downloadTemplete,
        filePath: filePath,
        token: token,
      );
      return filePath;
    } catch (e) {
      debugPrint("File download error: $e");
      throw Exception("Failed to download file: $e");
    }
  }

  Future<void> addEmployeeFile({required File file}) async {
    try {
      final token = await CacheManager.getToken();
      final formData = FormData.fromMap({
        'file': await MultipartFile.fromFile(file.path,
            filename: file.path.split('/').last),
      });
      final response = await _dioHelper.postData(
        url: ApiConstants.uploadTemplete, // Ensure this matches your endpoint
        data: formData,
        token: token,
      );

      if (response.data['success'] != true) {
        throw Exception(response.data['message']);
      } else {
        showToast(text: response.data['message'], state: ToastStates.success);
      }
    } catch (e) {
      debugPrint("File upload error: $e");
      showToast(
          text: "Failed to upload file. Try again.", state: ToastStates.error);
      throw Exception("Failed to upload file: $e");
    }
  }

  Future<Branches?> getBranches({
    int page = 1,
    bool cache = false,
  }) async {
    final token = await CacheManager.getToken();
    final queryParams = {
      'page': page,
    };
    try {
      final response = await _dioHelper.getData(
        url: ApiConstants.branches,
        token: token,
        query: queryParams,
      );
      if (response.statusCode == 200) {
        final branches = BranchVehiclesModel.fromJson(response.data);
        return branches.branches;
      } else {
        throw Exception('Failed to fetch car brands');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<List<Vehicles>> getVehicle() async {
    final token = await CacheManager.getToken();
    try {
      final response = await _dioHelper.getData(
        url: ApiConstants.vehicles,
        token: token,
      );
      if (response.statusCode == 200) {
        final vehicle = CompanyVehiclesModel.fromJson(response.data);
        return vehicle.vehicles ?? [];
      } else {
        throw Exception('Failed to fetch car brands');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }
}
