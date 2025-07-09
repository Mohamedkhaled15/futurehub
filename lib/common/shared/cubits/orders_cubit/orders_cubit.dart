import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/shared/cubits/orders_cubit/orders_states.dart';
import 'package:future_hub/common/shared/services/orders_services.dart';

import '../../models/order_model.dart';

class OrdersCubit extends Cubit<OrderStates> {
  OrdersCubit() : super(OrdersInitState());

  static OrdersCubit get(context) => BlocProvider.of(context);

  int page = 1;
  final _ordersService = OrdersService();
  List<Order> cubitOrders = [];

  // Future<void> loadOrders({bool refresh = false}) async {
  //   if (state is OrdersLoadingState) return;
  //   final currentState = state;
  //   var oldOrders = <Order>[];
  //
  //   if (currentState is OrdersLoadedState) {
  //     oldOrders = currentState.orders;
  //   }
  //   if (refresh) {
  //     page = 1;
  //     oldOrders = [];
  //   }
  //   emit(OrdersLoadingState(oldOrders, isFirstFetch: page == 1));
  //
  //   var newOrders = await _ordersService.fetchOrders(page: page);
  //   page++;
  //   final orders = (state as OrdersLoadingState).oldOrders;
  //   orders.addAll(newOrders.data);
  //   cubitOrders = orders;
  //   emit(
  //     OrdersLoadedState(
  //       orders,
  //       newOrders.hasMorePages,
  //     ),
  //   );
  // }

  // Future<void> updatOrders() async {
  //   if (state is OrdersLoadingState) return;
  //   final currentState = state;
  //   var oldOrders = <Order>[];
  //
  //   if (currentState is OrdersLoadedState) {
  //     oldOrders = currentState.orders;
  //   }
  //   emit(OrdersLoadingState(oldOrders, isFirstFetch: false));
  //
  //   var newOrders = await _ordersService.fetchOrders(page: 1, cache: false);
  //
  //   cubitOrders = newOrders.data;
  //   emit(
  //     OrdersLoadedState(
  //       cubitOrders,
  //       false,
  //     ),
  //   );
  // }
}
