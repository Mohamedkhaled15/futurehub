import 'package:future_hub/common/shared/models/order_model.dart';

abstract class CouponsStates {}

class CouponsInitState extends CouponsStates {}

class CouponsLoadedState extends CouponsStates {
  final bool canLoadMore;
  final List<Coupon> coupons;
  final int total;
  CouponsLoadedState({
    required this.coupons,
    required this.canLoadMore,
    required this.total,
  });
}

class CouponsLoadingState extends CouponsStates {
  final List<Coupon> oldCoupons;
  final bool isFirstFetch;
  final int total;

  CouponsLoadingState(
    this.oldCoupons, {
    this.isFirstFetch = false,
    required this.total,
  });
}
