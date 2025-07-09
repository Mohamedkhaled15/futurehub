import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/company/coupons/cubit/coupons_states.dart';
import 'package:future_hub/company/coupons/services/coupons_service.dart';

class CouponsCubit extends Cubit<CouponsStates> {
  CouponsCubit() : super(CouponsInitState());

  static CouponsCubit get(context) => BlocProvider.of(context);

  int page = 1;
  final _couponsService = CouponsService();

  // List<Coupon> coupons = [];

  // Future<void> loadCoupons(context) async {
  //   if (state is CouponsLoadingState) return;
  //
  //   final currentState = state;
  //   var oldCoupons = <Coupon>[];
  //   var total = 0;
  //   if (currentState is CouponsLoadedState) {
  //     oldCoupons = currentState.coupons;
  //     total = currentState.total;
  //   }
  //   emit(
  //     CouponsLoadingState(
  //       oldCoupons,
  //       isFirstFetch: page == 1,
  //       total: total,
  //     ),
  //   );
  //   var newCoupons = await _couponsService.fetchCoupons(page);
  //   page++;
  //   final coupons = (state as CouponsLoadingState).oldCoupons;
  //   coupons.addAll(newCoupons.data);
  //
  //   emit(
  //     CouponsLoadedState(
  //       coupons: coupons,
  //       canLoadMore: newCoupons.hasMorePages,
  //       total: newCoupons.total,
  //     ),
  //   );
  // }
}
