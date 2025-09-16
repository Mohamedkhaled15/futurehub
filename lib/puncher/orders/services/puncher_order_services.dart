import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/models/order_model.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/puncher/orders/model/service_provider_order_model.dart';
import 'package:future_hub/puncher/orders/model/service_provider_order_model_confirm_canel.dart';
import 'package:future_hub/puncher/orders/model/vehicle_qr.dart';
import 'package:image_picker/image_picker.dart';

class PuncherOrderServices {
  final _dioHelper = DioHelper();
  Future<ServiceProviderOrderModel> fetchOrders({
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
        url: ApiConstants.serviceProvidersFuelOrderList,
        query: queryParams,
        token: token,
      );
      // Parse the response into the model
      final responseData = response.data;
      final model = ServiceProviderOrderModel.fromJson(responseData);
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

  Future<ServiceProviderOrderModel> fetchServicesOrders({
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
        url: ApiConstants.serviceProvidersServicesOrderList,
        query: queryParams,
        token: token,
      );
      // Parse the response into the model
      final responseData = response.data;
      final model = ServiceProviderOrderModel.fromJson(responseData);
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

  Future<dynamic> orderById(String referenceNumber) async {
    try {
      final token = await CacheManager.getToken();
      final response = await _dioHelper.postData(
        url: ApiConstants.receiveQrData,
        data: {
          'qr_code': referenceNumber,
        },
        token: token,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = response.data;
        if (responseData['type'] == 'vehicle' && responseData['id'] == '1') {
          return VehicleQr.fromJson(responseData);
        } else {
          return ServiceProviderOrderConfirmCancelModel.fromJson(responseData);
        }
      } else {
        throw Exception("${response.data['message']}");
      }
    } on DioException catch (e) {
      print('Error fetching orders: ${e.response?.data ?? e.message}');
      rethrow;
    } catch (e) {
      print('Unexpected error: $e');
      rethrow;
    }
  }

//*======================== ocr plate ====================================
  Future<bool> ocrPlate(XFile image, String vehicleId) async {
    try {
      final token = await CacheManager.getToken();
      final file = File(image.path);
      final int sizeInBytes = await file.length();
      final double sizeInKB = sizeInBytes / 1024;
      final double sizeInMB = sizeInKB / 1024;

      print("Image size: $sizeInBytes bytes");
      print("Image size: ${sizeInKB.toStringAsFixed(2)} KB");
      print("Image size: ${sizeInMB.toStringAsFixed(2)} MB");

      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(
          image.path,
          filename: image.path.split('/').last,
        ),
        'vehicle_id': vehicleId,
      });

      final response = await _dioHelper.postData(
        url: ApiConstants.readPlate,
        data: formData,
        // token: token,
        contentType: 'multipart/form-data',
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final responseData = response.data;
        return responseData['plate_match'] == true;
      } else {
        throw Exception("${response.data['message']}");
      }
    } on DioException catch (e) {
      print('Error fetching orders: ${e.response?.data ?? e.message}');
      rethrow;
    } catch (e) {
      print('Unexpected error: $e');
      rethrow;
    }
  }

  Future<Order> createServiceProviderOrder({
    required int driverId,
    required int vehicleId,
    // required int productId,
    required int fuelId,
    required num totalPrice,
    required num quantity,
  }) async {
    try {
      final token = await CacheManager.getToken();
      // Create the request payload
      final data = {
        "driver_id": driverId,
        "vehicle_id": vehicleId,
        // "product_id": productId,
        "quantity": quantity,
        "total_price": totalPrice,
        "fuel_id": fuelId,
      };
      print(data);
      // Make the POST request
      final response = await _dioHelper.postData(
          url: ApiConstants.createServiceProviderOrder, // Adjust the endpoint path if necessary
          data: data,
          token: token);

      // Check for errors
      if (response.statusCode == 200 || response.statusCode == 201) {
        // Parse the response into an Order object
        final responseData = response.data['data'];
        return Order.fromJson(responseData);
        // return responseData;
      } else {
        // Handle API error response
        throw Exception("Failed to create order: ${response.data['message']}");
      }
    } catch (e) {
      // Handle any exceptions
      rethrow;
    }
  }

  Future<ServiceProviderOrderConfirmCancelModel> cancelOrder(String referenceNumber) async {
    try {
      final token = await CacheManager.getToken();
      final response = await _dioHelper.postData(
        url: ApiConstants.cancelOrder,
        data: {
          'reference_number': referenceNumber,
        },
        token: token,
      );
      // Parse the response into the model
      final responseData = response.data;
      final model = ServiceProviderOrderConfirmCancelModel.fromJson(responseData);

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

  Future<void> sendOtp(String referenceNumber, String type) async {
    try {
      final token = await CacheManager.getToken();
      final response = await _dioHelper.postData(
        url: type == "fuel_order"
            ? ApiConstants.sendFuelOrderOtp
            : ApiConstants.sendServicesOrderOtp,
        data: {
          'reference_number': referenceNumber,
        },
        token: token,
      );
      final responseData = response.data;

      // Extract values from the response
      final success = responseData['success'];
      final message = responseData['message'];
      final otpCode = responseData['data'];

      if (success == true) {
        showToast(text: message, state: ToastStates.success);
        debugPrint(message);
        debugPrint('OTP Code: $otpCode'); // Handle the OTP code if necessary
      } else {
        throw Exception(message ?? 'Failed to send OTP');
      }
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

  Future<void> confirmOrder(String code, String referenceNumber, XFile attachment, String type,
      XFile? odometerImage) async {
    try {
      FormData formData = FormData.fromMap({
        "otp": code,
        "reference_number": referenceNumber,
        "vehicle_image": await MultipartFile.fromFile(
          attachment.path,
          filename: attachment.name, // Optional: Use the original file name
        ),
        if (odometerImage != null)
          "odometer_image": await MultipartFile.fromFile(
            odometerImage.path,
            filename: odometerImage.name, // Optional: Use the original file name
          ),
      });
      final token = await CacheManager.getToken();
      final response = await _dioHelper.postData(
        url: type == "fuel_order"
            ? ApiConstants.confirmFuelOrder
            : ApiConstants.confirmServicesOrder,
        data: formData,
        token: token,
      );
      final responseData = response.data;
      // Extract values from the response
      final success = responseData['success'];
      final message = responseData['message'];
      if (success == true) {
        debugPrint(message);
        showToast(text: message, state: ToastStates.success);
      } else {
        throw Exception(message ?? 'Failed to confirm order');
      }
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
