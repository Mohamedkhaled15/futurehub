import 'package:bloc/bloc.dart';
import 'package:future_hub/common/info/cubit/info_state.dart';
import 'package:future_hub/common/info/models/Support.dart';
import 'package:future_hub/common/info/models/about_company.dart';
import 'package:future_hub/common/info/models/info_model.dart';
import 'package:future_hub/common/info/models/privacy_model.dart';
import 'package:future_hub/common/info/models/questions_model.dart';
import 'package:future_hub/common/info/services/info_service.dart';

class InfoCubit extends Cubit<InfoState> {
  InfoCubit() : super(InfoLoading());

  final InfoService _infoService = InfoService();
  Future<void> init() async {
    try {
      // Run all the asynchronous calls concurrently and specify the return types
      final results = await Future.wait([
        _infoService.getInfo(),
        _infoService.getPrivacy(),
        _infoService.aboutCompany(),
        _infoService.supportData(),
        _infoService.questionsData(),
      ]);

      // Cast each result to the appropriate type
      final Info info = results[0] as Info;
      final PrivacyModel privacy = results[1] as PrivacyModel;
      final Data data = results[2] as Data;
      final SupportData support = results[3] as SupportData;
      final QuestionData question = results[4] as QuestionData;

      // Emit the loaded data
      emit(InfoLoaded(info, privacy, data, question, support));
    } catch (e) {
      // Handle any errors here
      print("Error occurred while loading data: $e");
    }
  }
}
