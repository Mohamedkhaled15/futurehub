import 'package:future_hub/common/points/models/gift_brand.dart';

abstract class GiftsState {}

class GiftsInitState extends GiftsState {}

class GiftsBrandsLoaded extends GiftsState {
  final bool canLoadMore;
  final List<GiftBrand> brands;
  GiftsBrandsLoaded({required this.brands, required this.canLoadMore});
}

class GiftsBrandsLoadingState extends GiftsState {
  final List<GiftBrand> oldBrands;
  final bool isFirstFetch;
  // final int total;

  GiftsBrandsLoadingState(
    this.oldBrands, {
    this.isFirstFetch = false,
    // required this.total,
  });
}
