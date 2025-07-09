import 'package:future_hub/common/shared/widgets/chevron_bottom_sheet.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/company/employees/cubit/employees_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

class DeleteEmployeeBottomSheet extends StatelessWidget {
  const DeleteEmployeeBottomSheet({required this.id, super.key});
  final String id;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return ChevronBottomSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            t.do_you_want_to_delete_this_employee,
            style: theme.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16.0),
          ChevronButton(
            onPressed: context.pop,
            child: Text(t.back),
          ),
          const SizedBox(height: 16.0),
          ChevronButton(
            onPressed: () {
              context
                  .read<EmployeesCubit>()
                  .deleteEmployee(id: id, context: context);
            },
            style: ChevronButtonStyle.text(),
            child: Text(t.delete),
          ),
        ],
      ),
    );
  }
}
