import 'package:equatable/equatable.dart';
import 'package:future_hub/common/info/models/Support.dart';
import 'package:future_hub/common/info/models/about_company.dart';
import 'package:future_hub/common/info/models/info_model.dart';
import 'package:future_hub/common/info/models/privacy_model.dart';
import 'package:future_hub/common/info/models/questions_model.dart';

abstract class InfoState extends Equatable {}

class InfoLoading extends InfoState {
  @override
  List<Object?> get props => [];
}

class InfoLoaded extends InfoState {
  final Info info;
  final PrivacyModel privacyModel;
  final Data data;
  final QuestionData questionData;
  final SupportData supportData;
  InfoLoaded(this.info, this.privacyModel, this.data, this.questionData,
      this.supportData);

  @override
  List<Object?> get props => [info];
}
