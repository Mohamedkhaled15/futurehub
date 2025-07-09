import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/company/employees/model/driver_model.dart';
import 'package:intl/intl.dart';

class EmployeeDetails extends StatelessWidget {
  final DriverData employee;

  const EmployeeDetails({
    super.key,
    required this.employee,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final direction = Directionality.of(context);
    String formatDateTime(DateTime dateTime) {
      final timeFormat = DateFormat('hh:mm a',
          direction == ui.TextDirection.rtl ? 'ar' : 'en'); // Time in Arabic
      final month =
          DateFormat('MMMM', direction == ui.TextDirection.rtl ? 'ar' : 'en');
      final day = DateFormat('dd', 'en');
      final year = DateFormat('yyyy', 'en');

      // final dateFormat = DateFormat('yyyy dd',
      //     direction == ui.TextDirection.rtl ? 'en' : 'en'); // Date in Arabic

      final timeString = timeFormat.format(dateTime);
      // final dateString = dateFormat.format(dateTime);
      final monthString = month.format(dateTime);
      final dayString = day.format(dateTime);
      final yearString = year.format(dateTime);

      return '$timeString\n\n$dayString $monthString ,$yearString';
    }

    String formattedDateTime =
        formatDateTime(DateTime.parse(employee.createAt ?? ''));
    return Row(
      children: [
        CircleAvatar(
          radius: 25.0,
          backgroundImage:
              employee.image != null ? NetworkImage(employee.image!) : null,
        ),
        const SizedBox(width: 16.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                employee.name!,
                style: theme.textTheme.bodyLarge,
              ),
              const SizedBox(height: 8.0),
              Text(
                employee.id!.toString(),
                style: theme.textTheme.bodySmall,
              ),
            ],
          ),
        ),
        // if (employee.firstLoginAt != null)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              t.date_added,
              style: theme.textTheme.labelMedium!.copyWith(
                color: Palette.primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              formattedDateTime,
              style: theme.textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}
