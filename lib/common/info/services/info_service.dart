import 'package:future_hub/common/info/models/Support.dart';
import 'package:future_hub/common/info/models/about_company.dart';
import 'package:future_hub/common/info/models/info_model.dart';
import 'package:future_hub/common/info/models/privacy_model.dart';
import 'package:future_hub/common/info/models/questions_model.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';

class InfoService {
  final DioHelper _dioHelper = DioHelper();
  Future<Info> getInfo() async {
    final token = await CacheManager.getToken();
    try {
      final response = await _dioHelper.getData(
        url: ApiConstants.termsConditions,
        token: token,
      );
      if (response.statusCode == 200) {
        // Assuming your response is wrapped in a 'data' key
        return Info.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }

  Future<PrivacyModel> getPrivacy() async {
    final token = await CacheManager.getToken();
    try {
      final response = await _dioHelper.getData(
        url: ApiConstants.privacy,
        token: token,
      );
      if (response.statusCode == 200) {
        // Assuming your response is wrapped in a 'data' key
        return PrivacyModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }

  Future<Data> aboutCompany() async {
    final token = await CacheManager.getToken();
    try {
      final response = await _dioHelper.getData(
        url: ApiConstants.aboutCompany,
        token: token,
      );
      if (response.statusCode == 200) {
        // Assuming your response is wrapped in a 'data' key
        return Data.fromJson(response.data["data"]);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }

  Future<SupportData> supportData() async {
    final token = await CacheManager.getToken();
    try {
      final response = await _dioHelper.getData(
        url: ApiConstants.support,
        token: token,
      );
      if (response.statusCode == 200) {
        // Assuming your response is wrapped in a 'data' key
        return SupportData.fromJson(response.data["data"]);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }

  Future<QuestionData> questionsData() async {
    final token = await CacheManager.getToken();
    try {
      final response = await _dioHelper.getData(
        url: ApiConstants.questions,
        token: token,
      );
      if (response.statusCode == 200) {
        // Assuming your response is wrapped in a 'data' key
        return QuestionData.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }
}
