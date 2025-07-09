import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/puncher/daily_report/cubit/report_states.dart';
import 'package:future_hub/puncher/daily_report/services/report_services.dart';

class PincherReportCubit extends Cubit<PincherReportState> {
  PincherReportCubit() : super(PincherReportInitial());
  static PincherReportCubit get(context) => BlocProvider.of(context);

  final _reportService = PuncherReportServices();

  Future<void> getDailyReport(
    String date,
    int employeeId,
    String type,
  ) async {
    emit(PincherReportLoading());
    try {
      final report =
          await _reportService.getDailyReport(date, employeeId, type);
      emit(PincherReportLoaded(report));
    } catch (e) {
      emit(PincherReportError(e.toString()));
    }
  }
}
