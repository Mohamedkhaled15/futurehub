import 'package:future_hub/puncher/orders/model/service_provider_order_model.dart';

abstract class ServiceProviderOrderStates {}

class ServiceProviderOrdersInitState extends ServiceProviderOrderStates {}

class ServiceProviderOrdersLoadedState extends ServiceProviderOrderStates {
  final List<Datum> orders;
  final int total;

  ServiceProviderOrdersLoadedState(this.orders, this.total);
}

class ServiceProviderServicesOrdersLoadedState
    extends ServiceProviderOrderStates {
  final List<Datum> orders;
  final int total;

  ServiceProviderServicesOrdersLoadedState(this.orders, this.total);
}

class ServiceProviderOrdersServicesLoadingState
    extends ServiceProviderOrderStates {
  final List<Datum> oldOrders;
  final bool isFirstFetch;

  ServiceProviderOrdersServicesLoadingState(this.oldOrders,
      {this.isFirstFetch = false});
}

class ServiceProviderOrdersLoadingState extends ServiceProviderOrderStates {
  final List<Datum> oldOrders;
  final bool isFirstFetch;

  ServiceProviderOrdersLoadingState(this.oldOrders,
      {this.isFirstFetch = false});
}

class ServiceProviderOrdersErrorState extends ServiceProviderOrderStates {
  final String error;

  ServiceProviderOrdersErrorState(this.error);
}
