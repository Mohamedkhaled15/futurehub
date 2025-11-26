import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'end_points.dart';

class DioHelper {
  static Dio? dio;
  String getCurrentLanguage() {
    return WidgetsBinding.instance.platformDispatcher.locale.languageCode;
  }

  static init({Dio? customDio}) {
    dio = customDio ??
        Dio(
          BaseOptions(
            baseUrl: ApiConstants.baseTestURL,
            receiveDataWhenStatusError: true,
          ),
        );
    dio!.interceptors.add(
      PrettyDioLogger(
        error: true,
        enabled: true,
        responseHeader: true,
        request: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        compact: true,
        maxWidth: 90
        )
        );
  }

  Future<Response> getData({
    required url,
    Map<String, dynamic>? query,
    String? token,
  }) async {
    dio!.options.headers = {
      'content-type': 'application/json',
      'Authorization': token != null ? "Bearer $token" : "",
      'Accept': '*/*',
      'Connection': 'keep-alive',
      'Accept-Language': CacheManager.locale?.languageCode ?? 'ar',
    };
    dio!.options.validateStatus = (status) {
      if (status == 401) {
        return true;
      } else {
        return true;
      }
    };
    dio!.options.followRedirects = true; // Enable redirect following
    dio!.options.maxRedirects = 5; // Specify max number of redirects
    return await dio!.get(url, queryParameters: query);
  }

  Future<Response> deleteData({required url, Map<String, dynamic>? query, String? token}) async {
    dio!.options.headers = {
      'content-type': 'application/json',
      'Authorization': token != null ? "Bearer $token" : "",
      'Accept': '*/*',
      'Connection': 'keep-alive',
      'Accept-Language': CacheManager.locale!.languageCode,
    };
    dio!.options.validateStatus = (status) {
      if (status == 401) {
        return true;
      } else {
        return true;
      }
    };

    return await dio!.delete(
      url,
      queryParameters: query,
    );
  }

  Future<Response> postData(/**/ {
    required String url,
    Map<String, dynamic>? query,
    var data,
    String lang = 'en',
    String? token,
    String? contentType,
  }) async {
    dio!.options.validateStatus = (status) {
      if (status == 422) {
        return true;
      } else {
        return true;
      }
    };
    dio!.options.headers = {
      'Content-Type': contentType ?? 'application/json',
      if (token != null) 'Authorization': "Bearer $token",
      'Accept': 'application/json',
      'Connection': 'keep-alive',
      'Accept-Language': CacheManager.locale!.languageCode,
    };
    dio!.options.followRedirects = false; // Prevent automatic redirection
    debugPrint("post data => $url ${data.toString()}");
    return dio!.post(
      options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          }),
      url,
      queryParameters: query,
      data: data ?? "",
    );
  }

  Future<Response> putData(/**/ {
    required String url,
    Map<String, dynamic>? query,
    var data,
    String lang = 'en',
    String? token,
    String? contentType,
  }) async {
    dio!.options.validateStatus = (status) {
      if (status == 422) {
        return true;
      } else {
        return true;
      }
    };
    dio!.options.headers = {
      'Content-Type': contentType ?? 'application/json',
      'Authorization': token != null ? "Bearer $token" : "",
      'Accept': 'application/json',
      'Connection': 'keep-alive',
      'Accept-Language': CacheManager.locale!.languageCode,
    };
    dio!.options.followRedirects = false; // Enable redirect following
    dio!.options.maxRedirects = 5; // Specify max number of redirects
    debugPrint("post data => $url ${data.toString()}");
    return dio!.put(
      options: Options(
          followRedirects: false,
          validateStatus: (status) {
            return status! < 500;
          }),
      url,
      queryParameters: query,
      data: data ?? "",
    );
  }

  Future<Response> downloadData(/**/ {
    required String url,
    Map<String, dynamic>? query,
    var data,
    String lang = 'en',
    String? token,
    String? contentType,
    String? filePath,
  }) async {
    dio!.options.validateStatus = (status) {
      if (status == 422) {
        return true;
      } else {
        return true;
      }
    };
    dio!.options.headers = {
      'Content-Type': contentType ?? 'application/json',
      'Authorization': token != null ? "Bearer $token" : "",
    };
    debugPrint("post data => $url ${data.toString()}");
    return dio!.download(
      url,
      filePath,
      // queryParameters: query,
      data: data ?? "",
    );
  }
}
