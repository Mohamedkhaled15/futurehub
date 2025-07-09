import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/employee/orders/models/employee_order_model.dart';
import 'package:future_hub/employee/orders/services/order_service.dart';

import 'employee_order_state.dart';

class EmployeeOrderCubit extends Cubit<EmployeeOrderStates> {
  EmployeeOrderCubit() : super(EmployeeOrdersInitState());

  final _orderService = OrderService();

  // Separate state for each type
  int fuelPage = 1;
  int servicesPage = 1;

  List<EmployeeOrder> fuelOrders = [];
  List<EmployeeOrder> servicesOrders = [];

  bool canLoadMoreFuel = true;
  bool canLoadMoreServices = true;

  Future<void> loadOrders({bool refresh = false}) async {
    if (state is EmployeeOrdersLoadingState) return;

    if (refresh) {
      fuelPage = 1;
      fuelOrders = [];
    }

    emit(EmployeeOrdersLoadingState(
      fuelOrders,
      isFirstFetch: fuelPage == 1,
    ));

    try {
      final newOrders = await _orderService.fetchOrders(page: fuelPage);
      canLoadMoreFuel = newOrders.meta?.currentPage != newOrders.meta?.lastPage;
      fuelPage++;

      if (newOrders.data != null) {
        fuelOrders.addAll(newOrders.data!);
      }

      emit(EmployeeOrdersLoadedState(fuelOrders, canLoadMoreFuel));
    } catch (e) {
      emit(EmployeeOrdersOrdersErrorState(e.toString()));
    }
  }

  Future<void> loadServicesOrders({bool refresh = false}) async {
    if (state is EmployeeServicesOrdersLoadingState) return;

    if (refresh) {
      servicesPage = 1;
      servicesOrders = [];
    }

    emit(EmployeeServicesOrdersLoadingState(
      servicesOrders,
      isFirstFetch: servicesPage == 1,
    ));

    try {
      final newOrders =
          await _orderService.fetchServicesOrders(page: servicesPage);
      canLoadMoreServices =
          newOrders.meta?.currentPage != newOrders.meta?.lastPage;
      servicesPage++;

      if (newOrders.data != null) {
        servicesOrders.addAll(newOrders.data!);
      }

      emit(EmployeeServicesOrdersLoadedState(
        servicesOrders,
        canLoadMoreServices,
      ));
    } catch (e) {
      emit(EmployeeOrdersOrdersErrorState(e.toString()));
    }
  }
}
