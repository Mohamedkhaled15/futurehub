import 'package:future_hub/company/companyOrders/model/order_company_model.dart';

abstract class CompanyOrderState {}

class CompanyOrderInitState extends CompanyOrderState {}

class CompanyOrderLoadedState extends CompanyOrderState {
  final List<CompanyOrder>
      orders; // Use Datum instead of ServiceProviderOrderModel

  CompanyOrderLoadedState(this.orders);
}

class CompanyOrderLoadingState extends CompanyOrderState {
  final List<CompanyOrder> oldOrders;
  final bool isFirstFetch;

  CompanyOrderLoadingState(this.oldOrders, {this.isFirstFetch = false});
}

class CompanyOrderErrorState extends CompanyOrderState {
  final String error;

  CompanyOrderErrorState(this.error);
}
