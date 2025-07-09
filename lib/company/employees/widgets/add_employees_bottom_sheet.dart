import 'package:future_hub/common/shared/widgets/chevron_bottom_sheet.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_dashed_border.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

enum AddEmployeeMode {
  single,
  group,
}

class AddEmployeesBottomSheet extends StatefulWidget {
  const AddEmployeesBottomSheet({super.key});

  @override
  State<AddEmployeesBottomSheet> createState() =>
      _AddEmployeesBottomSheetState();
}

class _AddEmployeesBottomSheetState extends State<AddEmployeesBottomSheet> {
  AddEmployeeMode? _mode;

  void _changeMode(AddEmployeeMode mode) {
    setState(() {
      _mode = mode;
    });
  }

  void _start() {
    switch (_mode) {
      case AddEmployeeMode.single:
        context.pop();
        context.push('/company/employees/add-single');
        break;
      case AddEmployeeMode.group:
        context.pop();
        context.push('/company/employees/add-group');
        break;
      default:
        throw UnimplementedError();
    }
  }

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
            t.add_an_employee,
            style: theme.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24.0),
          SizedBox(
            height: 125.0,
            child: Row(
              children: [
                Expanded(
                  child: ChevronDashedBorder(
                    child: ChevronButton(
                      onPressed: () => _changeMode(AddEmployeeMode.single),
                      style: ChevronButtonStyle.dashed(
                        filled: _mode == AddEmployeeMode.single,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Icon(Icons.person, size: 50.0),
                          const SizedBox(height: 8.0),
                          Text(t.add_an_employee),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: ChevronDashedBorder(
                    child: ChevronButton(
                      onPressed: () => _changeMode(AddEmployeeMode.group),
                      style: ChevronButtonStyle.dashed(
                        filled: _mode == AddEmployeeMode.group,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Icon(Icons.groups, size: 50.0),
                          const SizedBox(height: 8.0),
                          Text(t.add_a_group),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16.0),
          ChevronButton(
            onPressed: _start,
            child: Text(t.start),
          ),
          const SizedBox(height: 16.0),
          ChevronButton(
            onPressed: context.pop,
            style: ChevronButtonStyle.text(),
            child: Text(t.back),
          ),
        ],
      ),
    );
  }
}
