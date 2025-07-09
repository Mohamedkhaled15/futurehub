abstract class EmployeeLayoutStates {}

class EmployeesLayoutDrawerState extends EmployeeLayoutStates {
  bool isDrawerOpen;

  EmployeesLayoutDrawerState({required this.isDrawerOpen});
}
