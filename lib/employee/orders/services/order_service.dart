import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:future_hub/common/shared/models/order_model.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/employee/orders/models/employee_order_model.dart';
import 'package:future_hub/employee/orders/models/order_product.dart';
import 'package:image_picker/image_picker.dart';

class OrderService {
  final _dioHelper = DioHelper();

  Future<Order> createOrder({
    required int puncher,
    required int branch,
    required int vehicleId,
    required num totalPrice,
    required List<OrderProduct> products,
    String? coupon,
  }) async {
    try {
      final token = await CacheManager.getToken();
      // Prepare the product data
      final orderProducts = products
          .map(
            (product) => {
              "product_id": int.parse(product.product.id.toString()),
              "quantity": product.quantity,
            },
          )
          .toList();

      // Create the request payload
      final data = {
        "vehicle_id": vehicleId,
        "total_price": totalPrice,
        "puncher": puncher,
        "branch": branch,
        "products": orderProducts,
      };
      print(data);
      // Make the POST request
      final response = await _dioHelper.postData(
          url:
              ApiConstants.createOrder, // Adjust the endpoint path if necessary
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

  Future<void> finishOrder({
    required XFile? image, // Allow image to be nullable
    required String refNumber,
  }) async {
    try {
      final token = await CacheManager.getToken();
      if (token == null) throw Exception("Token is missing");

      // Prepare multipart form data
      final formData = FormData.fromMap({
        "reference_number": refNumber,
        if (image != null)
          "odometer_image": await MultipartFile.fromFile(
            image.path,
            filename: image.path.split('/').last,
          ),
      });

      // Make POST request
      final response = await _dioHelper.postData(
        url: ApiConstants.finishOrder,
        data: formData,
        token: token,
        contentType: "multipart/form-data",
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        debugPrint("Order finished successfully.");
      } else {
        throw Exception("Failed to finish order: ${response.data}");
      }
    } catch (e) {
      debugPrint("Error in finishOrder: $e");
      rethrow; // Propagate the error to handle it in the UI
    }
  }

  // Future<dynamic> validateCoupon({
  //   required int puncher,
  //   required List<OrderProduct> products,
  //   String? coupon,
  // }) async {
  //   final orderProducts = products
  //       .map(
  //         (product) => InputProductItem(
  //           quantity: product.quantity,
  //           product_id: int.parse(product.product.id.toString()),
  //         ),
  //       )
  //       .toList();
  //
  //   final result = await Client.current.mutateValidateCoupon(
  //     OptionsMutationValidateCoupon(
  //       variables: VariablesMutationValidateCoupon(
  //         puncherId: puncher,
  //         coupon: coupon,
  //         products: orderProducts,
  //       ),
  //     ),
  //   );
  //
  //   debugPrint(result.toString());
  //   if (result.hasException) {
  //     debugPrint(result.exception!.graphqlErrors[0].message.toString());
  //     return result.exception!.graphqlErrors[0].message.toString();
  //   }
  //
  //   final data = result.parsedData?.validateCoupon;
  //   final details = data!.data;
  //   debugPrint(data.message);
  //   debugPrint(details!.vat_value.toString());
  //   debugPrint(details.total_price.toString());
  //   debugPrint(details.discount.toString());
  //
  //   if (result.hasException) {
  //     throw FetchException.fromOperation(result.exception!);
  //   }
  //   return Order(
  //     totalPrice: details.total_price,
  //     discount: details.discount,
  //     vatValue: details.vat_value,
  //     vat: details.vat,
  //     discountValue: details.discount_value,
  //   );
  // }

  Future<EmployeeOrderModel> fetchOrders({
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
        url: ApiConstants.employeeFuelOrder,
        query: queryParams,
        token: token,
      );
      // Parse the response into the model
      final responseData = response.data;
      final model = EmployeeOrderModel.fromJson(responseData);

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

  Future<EmployeeOrderModel> fetchServicesOrders({
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
        url: ApiConstants.employeeServicesOrder,
        query: queryParams,
        token: token,
      );
      // Parse the response into the model
      final responseData = response.data;
      final model = EmployeeOrderModel.fromJson(responseData);

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

  Future<Order> createFuelOrder({
    required int puncher,
    required int branch,
    required int vehicleId,
    required num totalPrice,
    required int fuelId,
    required num quantity,
  }) async {
    try {
      final token = await CacheManager.getToken();
      // Prepare the product data

      // Create the request payload
      final data = {
        "vehicle_id": vehicleId,
        "total_price": totalPrice,
        "service_provider": puncher,
        "branch": branch,
        "quantity": quantity,
        "fuel_id": fuelId,
      };
      print(data);
      // Make the POST request
      final response = await _dioHelper.postData(
          url: ApiConstants
              .createFuelOrder, // Adjust the endpoint path if necessary
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

  Future<void> finishFuelOrder({
    required XFile? image, // Allow image to be nullable
    required String refNumber,
  }) async {
    try {
      final token = await CacheManager.getToken();
      if (token == null) throw Exception("Token is missing");

      // Prepare multipart form data
      final formData = FormData.fromMap({
        "reference_number": refNumber,
        if (image != null)
          "odometer_image": await MultipartFile.fromFile(
            image.path,
            filename: image.path.split('/').last,
          ),
      });

      // Make POST request
      final response = await _dioHelper.postData(
        url: ApiConstants.finishFuelOrder,
        data: formData,
        token: token,
        contentType: "multipart/form-data",
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        debugPrint("Order finished successfully.");
      } else {
        throw Exception("Failed to finish order: ${response.data}");
      }
    } catch (e) {
      debugPrint("Error in finishOrder: $e");
      rethrow; // Propagate the error to handle it in the UI
    }
  }

  Future<Order> createServicesOrder({
    required int puncher,
    required int branch,
    required int vehicleId,
    required num totalPrice,
    required int servicesId,
  }) async {
    try {
      final token = await CacheManager.getToken();
      // Prepare the product data

      // Create the request payload
      final data = {
        "vehicle_id": vehicleId,
        "total_price": totalPrice,
        "service_provider": puncher,
        "branch": branch,
        "service_id": servicesId,
      };
      print(data);
      // Make the POST request
      final response = await _dioHelper.postData(
          url: ApiConstants
              .createServicesOrder, // Adjust the endpoint path if necessary
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
}
