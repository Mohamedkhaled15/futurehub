// import 'package:future_hub/common/points/cubit/states.dart';
// import 'package:future_hub/common/points/models/gift_brand.dart';
// import 'package:future_hub/common/points/services/points_service.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
//
// class GiftsCubit extends Cubit<GiftsState> {
//   GiftsCubit() : super(GiftsInitState());
//
//   static GiftsCubit get(context) => BlocProvider.of(context);
//
//   final _pointsService = PointsService();
//   int page = 1;
//   Future<void> loadBrands(context) async {
//     if (state is GiftsBrandsLoadingState) return;
//
//     final currentState = state;
//
//     var oldBrands = <GiftBrand>[];
//     if (currentState is GiftsBrandsLoaded) {
//       oldBrands = currentState.brands;
//     }
//     emit(
//       GiftsBrandsLoadingState(
//         oldBrands,
//         isFirstFetch: false,
//       ),
//     );
//     var newBrands = await _pointsService.getYouGotAGiftBrands(page: page);
//     page++;
//     final brands = (state as GiftsBrandsLoadingState).oldBrands;
//     brands.addAll(newBrands.data);
//     debugPrint(brands.length.toString());
//
//     emit(
//       GiftsBrandsLoaded(
//         brands: brands,
//         canLoadMore: newBrands.hasMorePages,
//       ),
//     );
//   }
// }
