import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/widgets/chevron_card.dart';
import 'package:future_hub/company/employees/model/driver_model.dart';
import 'package:future_hub/company/employees/widgets/employee_details.dart';

class EmployeeListItem extends StatelessWidget {
  final DriverData employee;
  final void Function()? onPressed;

  const EmployeeListItem({
    super.key,
    this.onPressed,
    required this.employee,
  });

  @override
  Widget build(BuildContext context) {
    return ChevronCard(
      onPressed: onPressed,
      child: EmployeeDetails(employee: employee),
    );
  }
}
