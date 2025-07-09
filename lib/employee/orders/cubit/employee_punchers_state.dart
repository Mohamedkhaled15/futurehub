import 'package:future_hub/employee/orders/models/puncher_branch.dart';

abstract class EmployeePunchersState {}

class EmployeePunchersInitState extends EmployeePunchersState {}

class EmployeePunchersChangeScreenState extends EmployeePunchersState {}

class ChangePunchersState extends EmployeePunchersState {}

class PunchersLoadedState extends EmployeePunchersState {
  final List<Punchers> punchers;

  // final bool canLoadMore;
  PunchersLoadedState(
    this.punchers,
  );
}

class PunchersLoadingState extends EmployeePunchersState {
  final List<Punchers> oldPunchers;
  final bool isFirstFetch;

  PunchersLoadingState(this.oldPunchers, {this.isFirstFetch = false});
}

class PunchersErrorState extends EmployeePunchersState {}
