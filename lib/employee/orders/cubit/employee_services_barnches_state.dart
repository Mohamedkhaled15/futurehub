import 'package:future_hub/employee/orders/models/services_branch_model.dart';

abstract class EmployeeServicesBranchesState {}

class EmployeeServicesBranchesInitState extends EmployeeServicesBranchesState {}

class EmployeeServicesBranchesChangeScreenState
    extends EmployeeServicesBranchesState {}

class ChangeServicesBranchesState extends EmployeeServicesBranchesState {}

class EmployeeServicesBranchesLoadedState
    extends EmployeeServicesBranchesState {
  final List<ServicesPuncher> servicesPuncher;

  // final bool canLoadMore;
  EmployeeServicesBranchesLoadedState(this.servicesPuncher);
}

class EmployeeServicesBranchesLoadingState
    extends EmployeeServicesBranchesState {
  final List<ServicesPuncher> oldServicesPuncher;
  final bool isFirstFetch;

  EmployeeServicesBranchesLoadingState(this.oldServicesPuncher,
      {this.isFirstFetch = false});
}

class PunchersErrorState extends EmployeeServicesBranchesState {}
