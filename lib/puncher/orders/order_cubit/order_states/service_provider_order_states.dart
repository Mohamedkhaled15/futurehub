import 'package:future_hub/puncher/orders/model/service_provider_order_model.dart';

abstract class ServiceProviderOrderStates {}

class ServiceProviderOrdersInitState extends ServiceProviderOrderStates {}

class ServiceProviderOrdersLoadedState extends ServiceProviderOrderStates {
  final List<Datum> orders; // Use Datum instead of ServiceProviderOrderModel

  ServiceProviderOrdersLoadedState(this.orders);
}

class ServiceProviderServicesOrdersLoadedState
    extends ServiceProviderOrderStates {
  final List<Datum> orders; // Use Datum instead of ServiceProviderOrderModel

  ServiceProviderServicesOrdersLoadedState(this.orders);
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
