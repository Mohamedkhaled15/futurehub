import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/company/companyOrders/cubit/states/company_order_state.dart';
import 'package:future_hub/company/companyOrders/model/order_company_model.dart';
import 'package:future_hub/company/companyOrders/sevices/company_order_service.dart';

class CompanyOrderCubit extends Cubit<CompanyOrderState> {
  CompanyOrderCubit() : super(CompanyOrderInitState());
  static CompanyOrderCubit get(context) => BlocProvider.of(context);
  int page = 1;
  final _ordersService = CompanyOrderServices();
  List<CompanyOrder> cubitOrders = [];
  Future<void> loadCompanyOrders({bool refresh = false}) async {
    if (state is CompanyOrderLoadingState) return;
    final currentState = state;
    var oldOrders = <CompanyOrder>[];
    if (currentState is CompanyOrderLoadedState) {
      oldOrders = currentState.orders;
    }
    if (refresh) {
      page = 1;
      oldOrders = [];
    }
    emit(CompanyOrderLoadingState(oldOrders, isFirstFetch: page == 1));
    try {
      final newOrders = await _ordersService.fetchCompanyOrders(page: page);
      page++;
      final orders = (state as CompanyOrderLoadingState).oldOrders;
      if (newOrders.data != null) {
        orders.addAll(newOrders.data!); // Append new data
      }
      cubitOrders = orders;
      emit(CompanyOrderLoadedState(
        orders,
      ));
    } catch (e) {
      print('Error loading orders: $e');
      emit(CompanyOrderErrorState(e.toString()));
    }
  }
}
