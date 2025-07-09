import 'package:future_hub/employee/orders/models/employee_order_model.dart';

abstract class EmployeeOrderStates {}

class EmployeeOrdersInitState extends EmployeeOrderStates {
  EmployeeOrdersInitState();
}

class EmployeeOrdersLoadedState extends EmployeeOrderStates {
  final List<EmployeeOrder> orders;
  bool canLoadMore;
  EmployeeOrdersLoadedState(this.orders, this.canLoadMore);
  bool get canLoadMoreOrders => canLoadMore;
}

class EmployeeOrdersLoadingState extends EmployeeOrderStates {
  final List<EmployeeOrder> oldOrders;
  final bool isFirstFetch;

  EmployeeOrdersLoadingState(this.oldOrders, {this.isFirstFetch = false});
}

class EmployeeServicesOrdersLoadedState extends EmployeeOrderStates {
  final List<EmployeeOrder> orders;
  bool canLoadMore;

  EmployeeServicesOrdersLoadedState(this.orders, this.canLoadMore);
  bool get canLoadMoreOrders => canLoadMore;
}

class EmployeeServicesOrdersLoadingState extends EmployeeOrderStates {
  final List<EmployeeOrder> oldOrders;
  final bool isFirstFetch;
  EmployeeServicesOrdersLoadingState(this.oldOrders,
      {this.isFirstFetch = false});
}

class EmployeeOrdersOrdersErrorState extends EmployeeOrderStates {
  final String error;

  EmployeeOrdersOrdersErrorState(this.error);
}
