import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/models/products.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/employee/orders/models/sub_catogery_model.dart';

class ProductsService {
  final _dioHelper = DioHelper();
  Future<ServicesBranchDeatils> fetchBranchProducts(
      {required int branchId,
      required int categoryId,
      String? search,
      int? subCategoryId}) async {
    try {
      final token = await CacheManager.getToken();
      final queryParams = {
        'category_id': categoryId,
        if (subCategoryId != null) 'sub_category_id': subCategoryId,
        if (search != null) 'search': search
      };
      final response = await _dioHelper.getData(
        query: queryParams,
        url: "/service-providers/show-branch-with-services/$branchId",
        token: token,
      );
      // Check if the response is successful
      if (response.statusCode == 200) {
        return ServicesBranchDeatils.fromJson(
          response.data is String ? jsonDecode(response.data) : response.data,
        );
      } else {
        throw Exception(
            "Failed to fetch products. Status code: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint("Error fetching branch products: $e");
      throw Exception("Error fetching branch products");
    }
  }

  Future<ServicesSubcategories> fetchServiceSubcategories({
    required int categoryId,
  }) async {
    try {
      final token = await CacheManager.getToken();
      final response = await _dioHelper.getData(
        url: ApiConstants.servicesSubcategories,
        query: {'category_id': categoryId},
        token: token,
      );

      if (response.statusCode == 200) {
        return ServicesSubcategories.fromJson(
          response.data is String ? jsonDecode(response.data) : response.data,
        );
      } else {
        throw Exception(
            "Failed to fetch subcategories. Status code: ${response.statusCode}");
      }
    } catch (e) {
      debugPrint("Error fetching service subcategories: $e");
      throw Exception("Error fetching service subcategories");
    }
  }

  // Future<PaginatorInfo<Category>> fetchCategories(int page) async {
  //   final result = await Client.current.queryCategories(
  //     OptionsQueryCategories(
  //       variables: VariablesQueryCategories(page: page),
  //     ),
  //   );
  //   final data = result.parsedData?.categories;
  //   final categories = data!.data;
  //   final hasMorePages = data.paginatorInfo.hasMorePages;
  //   final total = data.paginatorInfo.total;
  //
  //   if (result.hasException) {
  //     throw FetchException.fromOperation(result.exception!);
  //   }
  //
  //   return PaginatorInfo(
  //     data: categories
  //         .map((product) => Category(
  //               id: product.id,
  //               title: product.title,
  //             ))
  //         .toList(),
  //     hasMorePages: hasMorePages,
  //     total: total,
  //   );
  // }
  //
  // Future<void> updateProduct(
  //     {required double price, required String productId}) async {
  //   final result = await Client.current.mutateUpdateProduct(
  //     OptionsMutationUpdateProduct(
  //       variables:
  //           VariablesMutationUpdateProduct(price: price, product_id: productId),
  //     ),
  //   );
  //
  //   final data = result.parsedData?.updateProduct;
  //   final status = data?.status;
  //   final message = data?.message;
  //
  //   if (result.hasException) {
  //     throw FetchException.fromOperation(result.exception!);
  //   }
  //
  //   if (status == 'FAIL') {
  //     throw FetchException(message!);
  //   }
  //
  //   debugPrint(message);
  // }
}
