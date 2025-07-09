import 'package:future_hub/common/shared/models/products.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/employee/oil/models/car_brand.dart';
import 'package:future_hub/employee/oil/models/car_model.dart';
import 'package:future_hub/employee/oil/models/car_year.dart';

import '../../../common/shared/utils/paginator_info.dart';

class OilService {
  final _dioHelper = DioHelper();
  Future<List<Brand>> getCarBrands() async {
    final token = await CacheManager.getToken();
    try {
      final response = await _dioHelper.getData(
        url: ApiConstants.brandsCar,
        token: token,
      );
      if (response.statusCode == 200) {
        final carBrand = CarBrand.fromJson(response.data);
        return carBrand.data ?? [];
      } else {
        throw Exception('Failed to fetch car brands');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<List<Model>> getCarModels({required int brand}) async {
    final token = await CacheManager.getToken();
    final queryParams = {
      'brand': brand,
    };
    try {
      final response = await _dioHelper.getData(
        url: '${ApiConstants.modelCar}/$brand',
        token: token,
        // query: queryParams,
      );
      if (response.statusCode == 200) {
        final carModel = CarModel.fromJson(response.data);
        return carModel.data ?? [];
      } else {
        throw Exception('Failed to fetch car brands');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<List<Year>> getCarYears() async {
    final token = await CacheManager.getToken();

    try {
      final response = await _dioHelper.getData(
        url: ApiConstants.yearCar,
        token: token,
      );
      if (response.statusCode == 200) {
        final carYear = CarYear.fromJson(response.data);
        return carYear.data ?? [];
      } else {
        throw Exception('Failed to fetch car brands');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  Future<PaginatorInfo<CompanyProduct>> getBestOils({
    required int page,
    required int carModelId,
    required int brandModelId,
    required int yearModelId,
  }) async {
    try {
      final token = await CacheManager.getToken();
      final queryParams = {
        'page': page,
      };
      final response = await _dioHelper.postData(
        url: ApiConstants.bestOil,
        query: queryParams,
        token: token,
        data: {
          // "page": page,
          "car_model_id": carModelId,
          "car_brand_id": brandModelId,
          "car_year_id": yearModelId,
        },
      );
      if (response.statusCode == 200) {
        final responseData = response.data;
        final hasMorePages = responseData["meta"]["has_more_pages"] ?? false;

        final oils = (responseData["data"] as List)
            .map((item) => CompanyProduct.fromJson(item))
            .toList();

        return PaginatorInfo(data: oils, hasMorePages: hasMorePages);
      } else {
        throw Exception(
            "Failed to fetch oils. Status code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("Error fetching oils: $e");
    }
  }
}
