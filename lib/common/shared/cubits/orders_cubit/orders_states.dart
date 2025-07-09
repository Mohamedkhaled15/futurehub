import 'package:future_hub/common/shared/models/order_model.dart';

abstract class OrderStates {}

class OrdersInitState extends OrderStates {}

class OrdersLoadedState extends OrderStates {
  final bool canLoadMore;
  final List<Order> orders;

  OrdersLoadedState(this.orders, this.canLoadMore);
}

class OrdersLoadingState extends OrderStates {
  final List<Order> oldOrders;
  final bool isFirstFetch;

  OrdersLoadingState(this.oldOrders, {this.isFirstFetch = false});
}
