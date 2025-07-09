import 'package:future_hub/puncher/daily_report/model/puncher_report_model.dart';

// States
abstract class PincherReportState {}

class PincherReportInitial extends PincherReportState {}

class PincherReportLoading extends PincherReportState {}

class PincherReportLoaded extends PincherReportState {
  final UserReport report;
  PincherReportLoaded(this.report);
}

class PincherReportError extends PincherReportState {
  final String message;
  PincherReportError(this.message);
}
