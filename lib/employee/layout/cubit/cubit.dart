import 'package:future_hub/employee/layout/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeesLayoutCubit extends Cubit<EmployeeLayoutStates> {
  EmployeesLayoutCubit()
      : super(EmployeesLayoutDrawerState(isDrawerOpen: false));

  changeDrawerState() {
    var oldState = state as EmployeesLayoutDrawerState;
    emit(EmployeesLayoutDrawerState(isDrawerOpen: !oldState.isDrawerOpen));
  }
}
