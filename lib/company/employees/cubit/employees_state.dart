import 'package:equatable/equatable.dart';
import 'package:future_hub/company/employees/model/branch_model.dart';
import 'package:future_hub/company/employees/model/driver_model.dart';
import 'package:future_hub/company/employees/model/vehicles_models.dart';

abstract class EmployeesState extends Equatable {}

class EmployeesInitial extends EmployeesState {
  @override
  List<Object?> get props => [];
}

class EmployeesLoading extends EmployeesState {
  @override
  List<Object?> get props => [];
}

class EmployeesLoadFailed extends EmployeesState {
  @override
  List<Object?> get props => [];
}

class EmployeesLoaded extends EmployeesState {
  final List<DriverData> employees;
  final int? total;
  final List<BranchData> branches;
  final BranchData? selectedBranch;
  final List<Vehicles> vehicles;
  final Vehicles? selectedVehicle;
  EmployeesLoaded({
    required this.employees,
    this.total,
    this.branches = const [],
    this.selectedBranch,
    this.vehicles = const [],
    this.selectedVehicle,
  });

  EmployeesLoaded copyWith({
    List<DriverData>? employees,
    int? total,
    List<BranchData>? branches,
    BranchData? selectedBranch,
    List<Vehicles>? vehicles,
    Vehicles? selectedVehicle,
  }) {
    return EmployeesLoaded(
      employees: employees ?? this.employees,
      total: total ?? this.total,
      branches: branches ?? this.branches,
      selectedBranch: selectedBranch ?? this.selectedBranch,
      vehicles: vehicles ?? this.vehicles,
      selectedVehicle: selectedVehicle ?? this.selectedVehicle,
    );
  }

  @override
  List<Object?> get props => [employees, total, branches, selectedBranch];
}

class EmployeesSuccess extends EmployeesState {
  final String message;
  EmployeesSuccess({required this.message});

  @override
  List<Object> get props => [message];
}
