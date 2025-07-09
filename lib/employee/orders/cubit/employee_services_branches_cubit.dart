import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/shared/services/map_services.dart';
import 'package:future_hub/employee/orders/models/services_branch_model.dart';
import 'package:future_hub/employee/orders/services/punchers_services.dart';
import 'package:geolocator/geolocator.dart';

import 'employee_services_barnches_state.dart';

class ServicesPunchersCubit extends Cubit<EmployeeServicesBranchesState> {
  ServicesPunchersCubit() : super(EmployeeServicesBranchesInitState());

  static ServicesPunchersCubit get(context) => BlocProvider.of(context);

  int page = 1;
  int? _lastCategoryId;
  final _punchersService = PunchersServices();
  List<ServicesPuncher> servicePunchers = [];
  static Position? position;
  int screenIndex = 0;

  // Future<void> loadServicesPunchers(
  //     {bool refresh = false, bool fetchAll = false, required int id}) async {
  //   if (_lastCategoryId != id) {
  //     // If category ID has changed, reset
  //     refresh = true;
  //     _lastCategoryId = id;
  //   }
  //   if (state is EmployeeServicesBranchesLoadingState) return;
  //   final currentState = state;
  //   var oldServicesPunchers = <ServicesPuncher>[];
  //
  //   if (currentState is EmployeeServicesBranchesLoadedState) {
  //     oldServicesPunchers = currentState.servicesPuncher;
  //   }
  //   if (refresh || fetchAll) {
  //     page = 1;
  //     oldServicesPunchers = [];
  //   }
  //   emit(
  //     EmployeeServicesBranchesLoadingState(
  //       oldServicesPunchers,
  //       isFirstFetch: page == 1,
  //     ),
  //   );
  //
  //   try {
  //     ServicesPuncherBranch newPunchers;
  //     newPunchers = fetchAll
  //         ? await _punchersService.fetchAllServicesBranches(id)
  //         : await _punchersService.fetchServicesBranches(page, id);
  //     if (!fetchAll) page++;
  //     final punchers = List<ServicesPuncher>.from(
  //         (state as EmployeeServicesBranchesLoadingState).oldServicesPuncher);
  //     punchers.addAll(newPunchers.servicesPuncher ?? []);
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
  //             double.parse(branch.latitude ?? "0.0"),
  //             double.parse(branch.longitude ?? "0.0"),
  //           );
  //           branch.distanceInKm = (distance / 1000).toStringAsFixed(2);
  //           print("Distance for branch ${branch.title?.ar}: $distance");
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
  //     servicePunchers = validPunchers.map((entry) => entry.key).toList();
  //     print("Sorted punchers: ${servicePunchers.map((p) => p.title).toList()}");
  //
  //     emit(
  //       EmployeeServicesBranchesLoadedState(servicePunchers
  //           // newPunchers.hasMorePages,
  //           ),
  //     );
  //   } catch (e) {
  //     print("Error loading punchers: $e");
  //     emit(PunchersErrorState());
  //   }
  // }

  Future<void> loadServicesPunchers(
      {bool refresh = false, bool fetchAll = false, required int id}) async {
    if (_lastCategoryId != id) {
      // If category ID has changed, reset
      refresh = true;
      _lastCategoryId = id;
    }
    if (state is EmployeeServicesBranchesLoadingState) return;
    final currentState = state;
    var oldServicesPunchers = <ServicesPuncher>[];
    if (currentState is EmployeeServicesBranchesLoadedState) {
      oldServicesPunchers = currentState.servicesPuncher;
    }
    if (refresh || fetchAll) {
      page = 1;
      oldServicesPunchers = [];
    }
    emit(
      EmployeeServicesBranchesLoadingState(
        oldServicesPunchers,
        isFirstFetch: page == 1,
      ),
    );

    try {
      position = await MapServices.getCurrentLocation();
      if (position == null) {
        throw Exception("Unable to fetch current location.");
      }
      print(
          "User's current location: ${position!.latitude}, ${position!.longitude}");
      ServicesPuncherBranch newPunchers;
      newPunchers = fetchAll
          ? await _punchersService.fetchAllServicesBranches(
              id, position!.latitude, position!.longitude)
          : await _punchersService.fetchServicesBranches(
              page, id, position!.latitude, position!.longitude);
      if (!fetchAll) page++;
      final punchers = List<ServicesPuncher>.from(
          (state as EmployeeServicesBranchesLoadingState).oldServicesPuncher);
      punchers.addAll(newPunchers.servicesPuncher ?? []);
      // Update the list
      servicePunchers = punchers;
      emit(
        EmployeeServicesBranchesLoadedState(servicePunchers
            // newPunchers.hasMorePages,
            ),
      );
    } catch (e) {
      print("Error loading punchers: $e");
      emit(PunchersErrorState());
    }
  }

  // changeCubitPunchers(List<ServicesPuncher> servicesPunchers) {
  //   servicePunchers = servicesPunchers;
  //   emit(ChangeServicesBranchesState());
  // }
  void resetPunchersState(int index) {
    screenIndex = index;
    servicePunchers = [];
    page = 1;
    _lastCategoryId = null;
    emit(EmployeeServicesBranchesInitState());
  }

  changeScreenIndex(int index, List<ServicesPuncher> servicesPunchers) {
    screenIndex = index;
    servicesPunchers = servicesPunchers;
    emit(EmployeeServicesBranchesChangeScreenState());
  }
}
