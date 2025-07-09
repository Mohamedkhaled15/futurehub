import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/graphql/schema.gql.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/company/employees/cubit/employees_state.dart';
import 'package:future_hub/company/employees/model/driver_model.dart';
import 'package:future_hub/company/employees/model/vehicles_models.dart';
import 'package:future_hub/company/employees/services/employees_service.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

import '../model/branch_model.dart';

class EmployeesCubit extends Cubit<EmployeesState> {
  EmployeesCubit() : super(EmployeesLoading());

  static EmployeesCubit get(context) => BlocProvider.of(context);

  final _employeesService = EmployeesService();

  int _currentPage = 1;
  bool _isFetching = false; // Prevent duplicate API calls

  bool hasMorePages = true;
  List<DriverData> _employees = [];
  int total = 0;
  bool _isLoading = false; // Prevent multiple requests
  List<Vehicles> vehicle = [];
  int? branchId;
  int? vehicleId;
  Future<void> stopEmployee({
    required String id,
    required BuildContext context,
  }) async {
    if (state is! EmployeesLoaded) return;

    await runFetch(
      context: context,
      fetch: () async {
        // Call the service to stop the employee
        await _employeesService.stopEmployee(id: int.parse(id));

        // Get the current list of employees
        final employees = (state as EmployeesLoaded).employees;

        // Update the employee list
        List<DriverData> updated = employees.map((employee) {
          if (employee.id.toString() == id) {
            return DriverData(
              id: employee.id,
              createAt: employee.createAt,
              branch: employee.branch,
              name: employee.name,
              username: employee.username,
              mobile: employee.mobile,
              email: employee.email,
              nationalId: employee.nationalId,
              walletLimit: employee.walletLimit,
              image: employee.image,
              ordersCount: employee.ordersCount,
              orders: employee.orders,
              vehicles: employee.vehicles,
              isActive: 0, // Mark as inactive
              wallet: employee.wallet,
              transactionHistory: employee.transactionHistory,
            );
          }
          return employee;
        }).toList();

        // Emit the updated state
        emit(EmployeesLoaded(
            employees: updated, total: (state as EmployeesLoaded).total));

        // Show a success toast
        if (context.mounted) {
          final t = AppLocalizations.of(context)!;
          showToast(
            text: t.employee_stopped_successfully,
            state: ToastStates.success,
          );
        }
      },
    );
  }

  Future<void> activateEmployee({
    required String id,
    required BuildContext context,
  }) async {
    if (state is! EmployeesLoaded) return;

    await runFetch(
      context: context,
      fetch: () async {
        await _employeesService.activateEmployee(id: int.parse(id));

        final employees = (state as EmployeesLoaded).employees;

        // Update the employee list
        List<DriverData> updated = employees.map((employee) {
          if (employee.id.toString() == id) {
            return DriverData(
              createAt: employee.createAt,
              id: employee.id,
              branch: employee.branch,
              name: employee.name,
              username: employee.username,
              mobile: employee.mobile,
              email: employee.email,
              nationalId: employee.nationalId,
              walletLimit: employee.walletLimit,
              image: employee.image,
              ordersCount: employee.ordersCount,
              orders: employee.orders,
              vehicles: employee.vehicles,
              isActive: 1, // Mark as active
              wallet: employee.wallet,
              transactionHistory: employee.transactionHistory,
            );
          }
          return employee;
        }).toList();
        emit(EmployeesLoaded(employees: updated, total: total));
        if (context.mounted) {
          final t = AppLocalizations.of(context)!;
          showToast(
              text: t.employee_activated_successfully,
              state: ToastStates.success);
        }
      },
    );
  }

  Future<void> deleteEmployee({
    required String id,
    required BuildContext context,
  }) async {
    if (state is! EmployeesLoaded) return;

    await runFetch(
      context: context,
      fetch: () async {
        await _employeesService.deleteEmployee(id: int.parse(id));

        final employees = (state as EmployeesLoaded).employees;
        final updated = employees
            .where((employee) => employee.id.toString() != id)
            .toList();
        if (context.mounted) {
          init();
          context.pop();
          context.pop();
          final t = AppLocalizations.of(context)!;
          showToast(
              text: t.employee_deleted_successfully,
              state: ToastStates.success);
        }

        emit(EmployeesLoaded(employees: updated, total: total));
      },
    );
  }

  Future<void> addEmployeesSheet(
      {required BuildContext context, required File file}) async {
    if (state is! EmployeesLoaded) return;
    await _employeesService.addEmployeeFile(file: file);
  }

  Future<void> addEmployee({
    required String name,
    required String phone,
    required String email,
    required String idNumber,
    // required int branchId,
    // required int vehicleId,
    required XFile image,
    required double? limit,
    required BuildContext context,
    OnValidation? onValidation,
  }) async {
    if (state is! EmployeesLoaded) return;
    await runFetch(
      context: context,
      fetch: () async {
        final user = await _employeesService.addSingleEmployee(
          name: name,
          phone: phone,
          email: email,
          idNumber: idNumber,
          branchId: branchId ?? 0,
          vehicleId: vehicleId ?? 0,
          image: image,
          limit: limit,
        );

        final employees = (state as EmployeesLoaded).employees;
        final added = [...employees, user];

        if (context.mounted) {
          context.pop();
        }
        emit(EmployeesLoaded(employees: added, total: total));
      },
      onValidation: onValidation,
    );
    // Optionally emit success or refresh employee data
  }

  Future<void> updateEmployee({
    required String name,
    required String phone,
    required String email,
    required String idNumber,
    required int id,
    // required int vehicleId,
    required XFile image,
    required double? limit,
    required BuildContext context,
  }) async {
    if (state is! EmployeesLoaded) return;

    await runFetch(
      context: context,
      fetch: () async {
        await _employeesService.updateEmployee(
          name: name,
          phone: phone,
          email: email,
          idNumber: idNumber,
          branchId: branchId ?? 0,
          vehicleId: vehicleId ?? 0,
          image: image,
          limit: limit,
        );
        final employees = (state as EmployeesLoaded).employees;
        List<DriverData> updated = employees.map((employee) {
          if (employee.id.toString() == id.toString()) {
            return DriverData(
              createAt: employee.createAt,
              id: employee.id,
              branch: employee.branch,
              name: employee.name,
              username: employee.username,
              mobile: employee.mobile,
              email: employee.email,
              nationalId: employee.nationalId,
              walletLimit: employee.walletLimit,
              image: employee.image,
              ordersCount: employee.ordersCount,
              orders: employee.orders,
              vehicles: employee.vehicles,
              isActive: 1, // Mark as active
              wallet: employee.wallet,
              transactionHistory: employee.transactionHistory,
            );
          }
          return employee;
        }).toList();
        emit(EmployeesLoaded(employees: updated, total: total));
        if (context.mounted) {
          final t = AppLocalizations.of(context)!;
          showToast(
              text: t.employee_updated_successfully,
              state: ToastStates.success);
        }
      },
    );
  }

  Future<void> addBalanceToEmployee({
    required int id,
    required double amount,
    required EnumPaymentMethod paymentMethod,
    required BuildContext context,
  }) async {
    if (state is! EmployeesLoaded) return;
    await runFetch(
      context: context,
      fetch: () async {
        await _employeesService.addBalanceToEmployee(
            amount: amount, id: id, paymentMethod: paymentMethod);
        final employees = (state as EmployeesLoaded).employees;
        List<DriverData> updated = employees.map((employee) {
          if (employee.id.toString() == id.toString()) {
            return DriverData(
              createAt: employee.createAt,
              id: employee.id,
              branch: employee.branch,
              name: employee.name,
              username: employee.username,
              mobile: employee.mobile,
              email: employee.email,
              nationalId: employee.nationalId,
              walletLimit: employee.walletLimit,
              image: employee.image,
              ordersCount: employee.ordersCount,
              orders: employee.orders,
              vehicles: employee.vehicles,
              isActive: 1, // Mark as active
              wallet: employee.wallet! + amount.toInt(),
              transactionHistory: employee.transactionHistory,
            );
          }
          return employee;
        }).toList();
        emit(EmployeesLoaded(employees: updated, total: total));
        if (context.mounted) {
          final t = AppLocalizations.of(context)!;
          showToast(
              text: t.amount_added_successfully, state: ToastStates.success);
        }
      },
    );
  }

  Future<void> init() async {
    _currentPage = 1;
    hasMorePages = true;
    _employees.clear();
    await _loadEmployees(page: _currentPage, isInitialLoad: true);
  }

  Future<void> loadMore() async {
    if (!hasMorePages || _isLoading) return;
    await _loadEmployees(page: _currentPage + 1);
  }

  Future<void> _loadEmployees(
      {required int page, bool isInitialLoad = false}) async {
    _isLoading = true;
    try {
      if (isInitialLoad) emit(EmployeesLoading());
      // Fetch employees from the service
      final model = await _employeesService.getEmployees(page: page);

      // Update pagination and employees list
      _currentPage =
          model.pagination?.currentPage ?? page; // Use default if null
      hasMorePages =
          _currentPage < (model.pagination?.lastPage ?? _currentPage);

      if (isInitialLoad) {
        _employees = model.data ?? [];
      } else {
        _employees = List.from(_employees)..addAll(model.data ?? []);
      }
      final currentState = state is EmployeesLoaded
          ? state as EmployeesLoaded
          : EmployeesLoaded(
              employees: const [], // Default empty list
              branches: const [], // Default empty list
              vehicles: const [], // Default empty list
            );
      emit(EmployeesLoaded(
        branches: currentState.branches,
        vehicles: currentState.vehicles,
        employees: List.from(_employees),
        total: model.pagination?.total ?? 0,
        selectedBranch: currentState.selectedBranch,
        selectedVehicle: currentState.selectedVehicle,
      ));
    } catch (error) {
      emit(EmployeesLoadFailed());
    } finally {
      _isLoading = false;
    }
  }

  // Fetch branches and emit them directly from Cubit
  Future<void> fetchBranches() async {
    if (_isFetching) return;
    _isFetching = true;
    try {
      emit(EmployeesLoading());
      final branches = await _employeesService.getBranches(page: _currentPage);
      if (branches != null && branches.data!.isNotEmpty) {
        // Directly update the state with parsed branches
        final currentState = state is EmployeesLoaded
            ? state as EmployeesLoaded
            : EmployeesLoaded(
                branches: const [], // Default empty list
                vehicles: const [], // Default empty list
                employees: const [], // Default empty list
              );

        emit(EmployeesLoaded(
          employees: currentState.employees,
          branches: List<BranchData>.from(branches.data ?? []),
          vehicles: currentState.vehicles,
          selectedBranch: currentState.selectedBranch,
          selectedVehicle: currentState.selectedVehicle,
          total: currentState.total,
        ));

        // Check pagination and increment page if more branches exist
        if (branches.nextPageUrl != null) {
          _currentPage++;
        }
      } else {
        print('No more branches to load.');
      }
    } catch (error) {
      print('Error fetching branches: $error');
      emit(EmployeesLoadFailed());
    } finally {
      _isFetching = false;
    }
  }

// Fetch vehicles and emit them directly from Cubit
  Future<void> fetchVehicles() async {
    try {
      final vehicles = await _employeesService.getVehicle();
      if (vehicles.isNotEmpty) {
        // Directly update the state with parsed vehicles
        vehicle.addAll(vehicles);
        print(vehicle.length);
        final currentState = state is EmployeesLoaded
            ? state as EmployeesLoaded
            : EmployeesLoaded(
                employees: const [], // Default empty list
                branches: const [], // Default empty list
                vehicles: const [], // Default empty list
              );

        emit(currentState.copyWith(vehicles: vehicles));
      } else {
        print('No vehicles available.');
      }
    } catch (error) {
      print('Error fetching vehicles: $error');
      emit(EmployeesLoadFailed());
    }
  }

// Select branch and emit selected branch
  void selectBranch(BranchData branch) {
    if (state is EmployeesLoaded) {
      branchId = branch.id;
      emit((state as EmployeesLoaded).copyWith(selectedBranch: branch));
    }
  }

// Select vehicle and emit selected vehicle
  void selectVehicle(Vehicles vehicle) {
    if (state is EmployeesLoaded) {
      // vehicleId ??= [];
      // // Add the selected vehicle ID if it's not already in the list
      // if (vehicle.id != null && !vehicleId.contains(vehicle.id)) {
      //   vehicleId.add(vehicle.id!);
      //   print(vehicleId);
      // }
      vehicleId = vehicle.id;
      emit((state as EmployeesLoaded).copyWith(selectedVehicle: vehicle));
    }
  }
}
