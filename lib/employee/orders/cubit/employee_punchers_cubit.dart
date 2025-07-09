import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/shared/services/map_services.dart';
import 'package:future_hub/employee/orders/cubit/employee_punchers_state.dart';
import 'package:future_hub/employee/orders/models/puncher_branch.dart';
import 'package:future_hub/employee/orders/models/services_branch_model.dart';
import 'package:future_hub/employee/orders/services/punchers_services.dart';
import 'package:geolocator/geolocator.dart';

class EmployeePunchersCubit extends Cubit<EmployeePunchersState> {
  EmployeePunchersCubit() : super(EmployeePunchersInitState());

  static EmployeePunchersCubit get(context) => BlocProvider.of(context);

  int page = 1;

  final _punchersService = PunchersServices();

  List<Punchers> cubitPunchers = [];
  List<ServicesPuncher> servicePunchers = [];
  static Position? position;
  // String? distanceInKm;
  // Future<void> loadPunchers(
  //     {bool refresh = false, bool fetchAll = false}) async {
  //   if (state is PunchersLoadingState) return;
  //
  //   final currentState = state;
  //   var oldPunchers = <Punchers>[];
  //
  //   if (currentState is PunchersLoadedState) {
  //     oldPunchers = currentState.punchers;
  //   }
  //   if (refresh || fetchAll) {
  //     page = 1;
  //     oldPunchers = [];
  //   }
  //   emit(
  //     PunchersLoadingState(
  //       oldPunchers,
  //       isFirstFetch: page == 1,
  //     ),
  //   );
  //
  //   try {
  //     PuncherBranch newPunchers;
  //     newPunchers = fetchAll
  //         ? await _punchersService.fetchAllBranches()
  //         : await _punchersService.fetchBranches(page);
  //     if (!fetchAll) page++;
  //     final punchers =
  //         List<Punchers>.from((state as PunchersLoadingState).oldPunchers);
  //     punchers.addAll(newPunchers.data ?? []);
  //
  //     // Fetch the user's current position once
  //     position = await MapServices.getCurrentLocation();
  //     if (position == null) {
  //       throw Exception("Unable to fetch current location.");
  //     }
  //     print(
  //         "User's current location: ${position!.latitude}, ${position!.longitude}");
  //
  //     // Calculate distances for all punchers
  //     final punchersWithDistances = await Future.wait(
  //       punchers.map((branch) async {
  //         try {
  //           final distance = Geolocator.distanceBetween(
  //             position!.latitude,
  //             position!.longitude,
  //             double.parse(branch.latitude ?? "0"),
  //             double.parse(branch.longitude ?? "0"),
  //           );
  //           branch.distanceInKm = (distance / 1000).toStringAsFixed(2);
  //           print("Distance for branch ${branch.title}: $distance");
  //           return MapEntry(branch, distance);
  //         } catch (e) {
  //           print("Error calculating distance for branch ${branch.title}: $e");
  //           return null; // Skip problematic branches
  //         }
  //       }),
  //     );
  //
  //     // Filter out null results
  //     final validPunchers = punchersWithDistances.whereNotNull().toList();
  //     // Sort branches by distance
  //     validPunchers.sort((a, b) => a.value!.compareTo(b.value ?? 0.0));
  //     // Update the list
  //     cubitPunchers = validPunchers.map((entry) => entry.key).toList();
  //     print("Sorted punchers: ${cubitPunchers.map((p) => p.title).toList()}");
  //
  //     emit(
  //       PunchersLoadedState(cubitPunchers
  //           // newPunchers.hasMorePages,
  //           ),
  //     );
  //   } catch (e) {
  //     print("Error loading punchers: $e");
  //     emit(PunchersErrorState());
  //   }
  // }

  Future<void> loadPunchers(
      {bool refresh = false, bool fetchAll = false}) async {
    if (state is PunchersLoadingState) return;
    final currentState = state;
    var oldPunchers = <Punchers>[];
    if (currentState is PunchersLoadedState) {
      oldPunchers = currentState.punchers;
    }
    if (refresh || fetchAll) {
      page = 1;
      oldPunchers = [];
    }
    emit(PunchersLoadingState(oldPunchers, isFirstFetch: page == 1));

    try {
      position = await MapServices.getCurrentLocation();
      if (position == null) {
        throw Exception("Unable to fetch current location.");
      }
      print(
          "User's current location: ${position!.latitude}, ${position!.longitude}");
      PuncherBranch newPunchers;
      newPunchers = fetchAll
          ? await _punchersService.fetchAllBranches(
              position!.latitude, position!.longitude)
          : await _punchersService.fetchBranches(
              page, position!.latitude, position!.longitude);
      if (!fetchAll) page++;
      final punchers =
          List<Punchers>.from((state as PunchersLoadingState).oldPunchers);
      punchers.addAll(newPunchers.data ?? []);
      // Simply assign the new punchers without distance calculation or sorting
      cubitPunchers = punchers;
      emit(PunchersLoadedState(cubitPunchers));
    } catch (e) {
      print("Error loading punchers: $e");
      emit(PunchersErrorState());
    }
  }

  changeCubitPunchers(List<Punchers> punchers) {
    cubitPunchers = punchers;
    emit(ChangePunchersState());
  }

  int screenIndex = 0;

  changeScreenIndex(int index, List<Punchers> punchers) {
    screenIndex = index;
    cubitPunchers = punchers;
    emit(EmployeePunchersChangeScreenState());
  }
}
