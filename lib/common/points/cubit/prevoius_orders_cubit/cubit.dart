import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/points/cubit/prevoius_orders_cubit/states.dart';

class UserGiftsCubit extends Cubit<UserGiftsStates> {
  UserGiftsCubit() : super(UserGiftsInitState());

  static UserGiftsCubit get(context) => BlocProvider.of(context);

//   final _pointsService = PointsService();
//   int page = 1;
//   Future<void> loadPreviousGifts(context) async {
//     if (state is UserGiftsLoadingState) return;
//
//     final currentState = state;
//
//     var oldGifts = <UserGift>[];
//     var total = 0;
//     if (currentState is UserGiftsLoadingState) {
//       oldGifts = currentState.oldGifts;
//       total = currentState.total;
//     }
//
//     emit(
//       UserGiftsLoadingState(
//         oldGifts,
//         isFirstFetch: page == 1,
//         total: total,
//       ),
//     );
//     var newGifts = await _pointsService.fetchPreviousGifts(page);
//     page++;
//     final gifts = (state as UserGiftsLoadingState).oldGifts;
//     gifts.addAll(newGifts.data);
//
//     emit(
//       UserGiftsLoaded(
//         gifts: gifts,
//         canLoadMore: newGifts.hasMorePages,
//         total: newGifts.total,
//       ),
//     );
//   }
// Future<void> update(context) async {
//     if (state is UserGiftsLoadingState) return;
//
//     final currentState = state;
//
//     var oldGifts = <UserGift>[];
//     var total = 0;
//     if (currentState is UserGiftsLoadingState) {
//       oldGifts = currentState.oldGifts;
//       total = currentState.total;
//     }
//
//     emit(
//       UserGiftsLoadingState(
//         oldGifts,
//         isFirstFetch: true,
//         total: total,
//       ),
//     );
//     var newGifts = await _pointsService.fetchPreviousGifts(1);
//     final gifts = newGifts.data;
//
//     emit(
//       UserGiftsLoaded(
//         gifts: gifts,
//         canLoadMore: false,
//         total: newGifts.total,
//       ),
//     );
//   }
}
