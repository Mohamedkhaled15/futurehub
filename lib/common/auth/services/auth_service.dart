import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:future_hub/common/auth/models/app_version_model.dart';
import 'package:future_hub/common/auth/models/check_user.dart';
import 'package:future_hub/common/auth/models/user.dart';
import 'package:future_hub/common/notifications/services/notifications_service.dart';
import 'package:future_hub/common/shared/router.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';

import '../../shared/utils/fetch_exception.dart';

class AuthService {
  final _dioHelper = DioHelper();
  CheckUser? checkUser;

  Future<bool> validateMobile(String phone) async {
    try {
      // Send the POST request using DioHelper
      final response = await _dioHelper.postData(
        url: ApiConstants.validateMobile, // Replace with the actual endpoint
        data: {'mobile': phone},
      );
      debugPrint(response.runtimeType.toString());
      final responseData = response.data is String ? jsonDecode(response.data) : response.data;
      // Parse the response into the CheckUser model
      checkUser = CheckUser.fromJson(responseData);

      // Check the success field
      if (!checkUser!.success) {
        // If success is false, throw an exception with the message
        throw Exception(checkUser!.message);
      }

      // Determine if the account exists based on the message
      final exists = checkUser!.message == 'complete login';
      return exists;
    } catch (e) {
      // Handle errors gracefully
      debugPrint('Error validating mobile: $e');
      throw Exception(checkUser!.message);
    }
  }

  Future<void> sendOTP(String phone) async {
    try {
      // Define the request payload
      final data = {
        "mobile": phone,
        // "type": type.toString(), // Assuming EnumVerifyEnum is converted to string
      };

      // Make the POST request using Dio
      final response = await _dioHelper.postData(
        url: ApiConstants.sendOtp, // Replace with your actual endpoint
        data: data,
      );

      // Parse the response
      final success = response.data['success'];
      final message = response.data['message'];

      // Check the success field
      if (!success) {
        // Throw an exception with the error message
        throw Exception(message);
      }

      // Debug the response message
      debugPrint(message);
    } catch (e) {
      // Handle errors
      debugPrint("Error in sendOTP: $e");
      rethrow;
    }
  }

  Future<void> forgetPassword(String phone) async {
    try {
      // Define the request payload
      final data = {
        "mobile": phone,
        // "type": type.toString(), // Assuming EnumVerifyEnum is converted to string
      };

      // Make the POST request using Dio
      final response = await _dioHelper.postData(
        url: ApiConstants.forgetPassword, // Replace with your actual endpoint
        data: data,
      );

      // Parse the response
      final success = response.data['success'];
      final message = response.data['message'];

      // Check the success field
      if (!success) {
        // Throw an exception with the error message
        throw Exception(message);
      }

      // Debug the response message
      debugPrint(message);
    } catch (e) {
      // Handle errors
      debugPrint("Error in sendOTP: $e");
      rethrow;
    }
  }

  Future<Map<String, dynamic>> confirmOTP(String phone, String otp) async {
    try {
      // Define the request payload
      final data = {
        "mobile": phone,
        "otp": otp,
      };

      // Make the POST request using Dio
      final response = await _dioHelper.postData(
        url: ApiConstants.verifyOtp, // Replace with the actual endpoint
        data: data,
      );

      // Parse the response
      final message = response.data['message'];
      final success = response.data['success'];
      final id = response.data['data']['user']['id'];
      // Check the success field
      if (!success) {
        // Throw an exception with the error message
        throw Exception(message);
      }

      // Return the message if success is true
      return {'message': success, 'id': id};
    } catch (e) {
      // Handle errors
      debugPrint('Error in confirmOTP: $e');
      rethrow;
    }
  }

  Future<LoginResult> setPassword({
    required String password,
    required String confirmPassword,
    required int id,
  }) async {
    const String resetPasswordEndpoint = ApiConstants.setPassword; // Adjust the endpoint as needed

    try {
      final response = await _dioHelper.postData(
        url: resetPasswordEndpoint,
        data: {
          'user_id': id,
          'password': password,
          'password_confirmation': confirmPassword,
        },
      );

      final responseData = response.data;

      // Check for success in the response
      if (!responseData['success']) {
        throw Exception(responseData['message']);
      }

      final userData = responseData['data']['user'];
      final user = User.fromJson(userData);
      final token = userData['api_token'];
      NotificationsService().updateFCMToken(
        userToken: token,
        token: await FirebaseMessaging.instance.getToken(),
        userType: userData['type'],
      );
      return LoginResult(
        token: token,
        user: user,
      );
    } on DioException catch (e) {
      // Handle Dio-specific errors
      if (e.response != null) {
        throw Exception(e.response?.data['message'] ?? 'Something went wrong');
      } else {
        throw Exception('Network error: ${e.message}');
      }
    } catch (e) {
      // Handle any other exceptions
      throw Exception('Error: $e');
    }
  }

  Future<LoginResult> resetPassword({
    required String password,
    required String confirmPassword,
    required String otp,
    required String mobile,
  }) async {
    const String resetPasswordEndpoint =
        ApiConstants.resetPassword; // Adjust the endpoint as needed

    try {
      final response = await _dioHelper.postData(
        url: resetPasswordEndpoint,
        data: {
          'mobile': mobile,
          'otp': otp,
          'password': password,
          'password_confirmation': confirmPassword,
        },
      );

      final responseData = response.data;

      // Check for success in the response
      if (!responseData['success']) {
        throw Exception(responseData['message']);
      }

      final userData = responseData['data']['user'];
      final user = User.fromJson(userData);
      final token = userData['api_token'];
      NotificationsService().updateFCMToken(
        userToken: token,
        token: await FirebaseMessaging.instance.getToken(),
        userType: userData['type'],
      );
      return LoginResult(
        token: token,
        user: user,
      );
    } on DioException catch (e) {
      // Handle Dio-specific errors
      if (e.response != null) {
        throw Exception(e.response?.data['message'] ?? 'Something went wrong');
      } else {
        throw Exception('Network error: ${e.message}');
      }
    } catch (e) {
      // Handle any other exceptions
      throw Exception('Error: $e');
    }
  }

  Future<LoginResult> login(String phone, String password) async {
    const String loginEndpoint = '/login';
    String? fcmToken;

    // Helper function to get FCM token with retry logic
    Future<String?> getFCMTokenWithRetry() async {
      const maxRetries = 3;
      const retryDelay = Duration(seconds: 2);

      for (int attempt = 1; attempt <= maxRetries; attempt++) {
        try {
          return await FirebaseMessaging.instance.getToken();
        } catch (e) {
          if (e is FirebaseException &&
              e.code == 'unknown' &&
              e.message!.contains('SERVICE_NOT_AVAILABLE')) {
            debugPrint('FCM token attempt $attempt/$maxRetries failed: SERVICE_NOT_AVAILABLE');

            if (attempt < maxRetries) {
              await Future.delayed(retryDelay);
            } else {
              debugPrint('Failed to get FCM token after $maxRetries attempts');
              return null;
            }
          } else {
            rethrow; // Re-throw other exceptions
          }
        }
      }
      return null;
    }

    try {
      // Get FCM token with retry logic
      fcmToken = await getFCMTokenWithRetry();

      final response = await _dioHelper.postData(
        url: loginEndpoint,
        data: {
          'mobile': phone,
          'password': password,
          'fcm_token': fcmToken ?? '', // Send empty string if token is null
        },
      );

      final responseData = response.data;

      if (!responseData['success']) {
        throw Exception(responseData['message']);
      }

      final userData = responseData['data']['user'];
      final user = User.fromJson(userData);
      final token = userData['api_token'];

      // Update FCM token in background if not obtained during login
      if (fcmToken == null) {
        Future.microtask(() async {
          try {
            final newToken = await getFCMTokenWithRetry();
            if (newToken != null) {
              await NotificationsService().updateFCMToken(
                userToken: token,
                token: newToken,
                userType: userData['type'],
              );
            }
          } catch (e) {
            debugPrint('Background FCM update failed: $e');
          }
        });
      } else {
        await NotificationsService().updateFCMToken(
          userToken: token,
          token: fcmToken,
          userType: userData['type'],
        );
      }

      return LoginResult(
        token: token,
        user: user,
      );
    } on DioException catch (e) {
      final errorMessage = e.response?.data['message'] ?? 'Network error: ${e.message}';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception('Login failed: ${e.toString()}');
    }
  }

  Future<void> updateProfile({
    required String name,
    required String phone,
    required String email,
  }) async {
    try {
      final token = await CacheManager.getToken();
      final response = await _dioHelper.postData(
        url: ApiConstants.updateProfile,
        token: token,
        data: {
          'name': name,
          'mobile': phone,
          'email': email,
        },
      );
      // Check response status
      if (response.statusCode == 200) {
        final responseData = response.data;
        // Validate the status and handle the response message
        if (responseData['status'] == 'FAIL') {
          throw FetchException(responseData['message']);
        }

        debugPrint(responseData['message']);
      } else {
        throw const FetchException('Failed to update profile');
      }
    } catch (e) {
      debugPrint('Error updating profile: $e');
      rethrow;
    }
  }

  Future<String> updateProfilePhoto(File file) async {
    try {
      final token = await CacheManager.getToken();
      final formData = FormData.fromMap({
        'image': await MultipartFile.fromFile(
          file.path,
          filename: file.path.split('/').last,
        ),
      });

      final response = await _dioHelper.postData(
        url: ApiConstants.updateProfilePhoto,
        data: formData,
        contentType: 'multipart/form-data',
        token: token,
      );

      if (response.statusCode == 200) {
        final responseData = response.data;

        if (responseData['status'] == 'FAIL') {
          throw FetchException(responseData['message']);
        }

        return responseData['message'];
      } else {
        throw const FetchException('Failed to upload image');
      }
    } catch (e) {
      debugPrint("Error during image upload: $e");
      rethrow;
    }
  }

  Future<void> updatePassword({
    required String oldPassword,
    required String password,
    required String passwordConfirmation,
  }) async {
    // final result = await Client.current.mutateUpdatePassword(
    //   OptionsMutationUpdatePassword(
    //     variables: VariablesMutationUpdatePassword(
    //       oldPassword: oldPassword,
    //       password: password,
    //       confirmPassword: passwordConfirmation,
    //     ),
    //   ),
    // );
    //
    // final data = result.parsedData?.updatePassword;
    // final status = data?.status;
    // final message = data?.message;
    //
    // if (result.hasException) {
    //   throw FetchException.fromOperation(result.exception!);
    // }
    //
    // if (status == 'FAIL') {
    //   throw FetchException(message!);
    // }
    //
    // debugPrint(message);
  }

  Future<void> deleteAccount() async {
    final token = await CacheManager.getToken();
    try {
      // Make DELETE request using DioHelper
      final response = await _dioHelper.deleteData(
        url: ApiConstants.deleteAccount,
        token: token,
      );
      // Check response status
      if (response.statusCode == 200) {
        final responseData = response.data;
        // Validate status and handle response message
        if (responseData['status'] == 'FAIL') {
          throw FetchException(responseData['message']);
        }

        debugPrint(responseData['message']);
      } else {
        throw const FetchException('Failed to delete account');
      }
      // Delete FCM token
      await FirebaseMessaging.instance.deleteToken();
      debugPrint("FCM token deleted successfully");
    } catch (e) {
      debugPrint('Error deleting account: $e');
      rethrow;
    }
  }

  Future<bool> logout() async {
    final token = await CacheManager.getToken();
    final result = await _dioHelper.postData(
      url: ApiConstants.logout,
      token: token,
    );
    if (result.statusCode == 200) {
      return true;
    }
    return false;
  }

  Future<User> me() async {
    try {
      final token = await CacheManager.getToken(); // Retrieve token
      final response = await _dioHelper.postData(
          url: ApiConstants.userInfo, // Replace with the appropriate endpoint
          token: token,
          data: {
            'fcm_token': await FirebaseMessaging.instance.getToken(),
          });
      if (response.statusCode == 200) {
        final responseData = response.data;

        // Check if success is true15 = {map entry} "image" -> "https://envtaest.futurehub.sa/public/user.png"
        if (responseData['success'] == true) {
          final userData = responseData['data']['user'];
          final user = User.fromJson(userData);
          await CacheManager.saveUserId(user.id ?? 0);
          return user;
          //   User(
          //   id: userData['id'],
          //   type: userData['type'],
          //   name: userData['name'],
          //   username: userData['username'],
          //   mobile: userData['mobile'],
          //   firstLogin: userData['first_login'],
          //   firstLoginAt: (userData["first_login_at"] != null &&
          //           userData["first_login_at"].isNotEmpty)
          //       ? DateTime.tryParse(userData["first_login_at"])
          //       : null,
          //   active: userData['active'],
          //   companyId: userData["company_id"] is int
          //       ? userData["company_id"] as int
          //       : (userData["company_id"] is String &&
          //               userData["company_id"].isNotEmpty
          //           ? int.tryParse(userData["company_id"])
          //           : null),
          //   puncherId: userData["puncher_id"] is int
          //       ? userData["puncher_id"] as int
          //       : (userData["puncher_id"] is String &&
          //               userData["puncher_id"].isNotEmpty
          //           ? int.tryParse(userData["puncher_id"])
          //           : null),
          //   wallet: userData['wallet'],
          //   deposit: userData['deposit'],
          //   withdrawal: userData['withdrawal'],
          //   isMeterNumberRequired: userData["is_meter_number_required"],
          //   isMeterImageRequired: userData["is_meter_image_required"],
          //   vehicles: List<List<Vehicle>>.from(userData["vehicles"].map(
          //       (x) => List<Vehicle>.from(x.map((x) => Vehicle.fromJson(x))))),
          //   image: userData['image'],
          //   points: userData['points'],
          //   apiToken: userData['api_token'],
          //   company: userData['company_user'] != null
          //       ? Company.fromJson(userData['company_user'])
          //       : null,
          // );
        } else {
          throw FetchException(responseData['message'] ?? 'Failed to fetch user');
        }
      } else {
        router.go('/login');
        throw FetchException('Failed to fetch user with status code ${response.statusCode}');
      }
    } catch (e) {
      debugPrint("Error fetching user data: $e");
      rethrow;
    }
  }

  Future<AppVersion> checkAppVersion() async {
    String version = await NotificationsService().getAppVersion();
    try {
      final response = await _dioHelper
          .getData(url: ApiConstants.getAppVersion, query: {'app_version': version});
      if (response.statusCode == 200) {
        final responseData = response.data;

        // Check if success is true15 = {map entry} "image" -> "https://envtaest.futurehub.sa/public/user.png"
        if (responseData['success'] == true) {
          final appData = responseData;
          final appVersion = AppVersion.fromJson(appData);
          return appVersion;
          //   User(
          //   id: userData['id'],
          //   type: userData['type'],
          //   name: userData['name'],
          //   username: userData['username'],
          //   mobile: userData['mobile'],
          //   firstLogin: userData['first_login'],
          //   firstLoginAt: (userData["first_login_at"] != null &&
          //           userData["first_login_at"].isNotEmpty)
          //       ? DateTime.tryParse(userData["first_login_at"])
          //       : null,
          //   active: userData['active'],
          //   companyId: userData["company_id"] is int
          //       ? userData["company_id"] as int
          //       : (userData["company_id"] is String &&
          //               userData["company_id"].isNotEmpty
          //           ? int.tryParse(userData["company_id"])
          //           : null),
          //   puncherId: userData["puncher_id"] is int
          //       ? userData["puncher_id"] as int
          //       : (userData["puncher_id"] is String &&
          //               userData["puncher_id"].isNotEmpty
          //           ? int.tryParse(userData["puncher_id"])
          //           : null),
          //   wallet: userData['wallet'],
          //   deposit: userData['deposit'],
          //   withdrawal: userData['withdrawal'],
          //   isMeterNumberRequired: userData["is_meter_number_required"],
          //   isMeterImageRequired: userData["is_meter_image_required"],
          //   vehicles: List<List<Vehicle>>.from(userData["vehicles"].map(
          //       (x) => List<Vehicle>.from(x.map((x) => Vehicle.fromJson(x))))),
          //   image: userData['image'],
          //   points: userData['points'],
          //   apiToken: userData['api_token'],
          //   company: userData['company_user'] != null
          //       ? Company.fromJson(userData['company_user'])
          //       : null,
          // );
        } else {
          throw FetchException(responseData['message'] ?? 'Failed to fetch user');
        }
      } else {
        throw FetchException('Failed to fetch user with status code ${response.statusCode}');
      }
    } catch (e) {
      debugPrint("Error fetching user data: $e");
      rethrow;
    }
  }
}

class LoginResult {
  final User user;
  final String token;

  const LoginResult({
    required this.user,
    required this.token,
  });
}
