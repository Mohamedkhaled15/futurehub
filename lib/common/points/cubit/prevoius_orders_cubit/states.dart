import 'package:future_hub/common/points/models/user_gift.dart';

abstract class UserGiftsStates {}

class UserGiftsInitState extends UserGiftsStates {}

class UserGiftsLoaded extends UserGiftsStates {
  final bool canLoadMore;
  final List<UserGift> gifts;
  final int total;

  UserGiftsLoaded(
      {required this.gifts, required this.canLoadMore, required this.total});
}

class UserGiftsLoadingState extends UserGiftsStates {
  final List<UserGift> oldGifts;
  final bool isFirstFetch;
  final int total;

  UserGiftsLoadingState(
    this.oldGifts, {
    this.isFirstFetch = false,
    required this.total,
  });
}
