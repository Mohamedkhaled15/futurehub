import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/graphql/schema.gql.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/shared/widgets/chevron_bottom_sheet.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/company/employees/cubit/employees_cubit.dart';
import 'package:future_hub/company/employees/services/employees_service.dart';
import 'package:go_router/go_router.dart';

class AddBalanceBottomSheet extends StatefulWidget {
  const AddBalanceBottomSheet({required this.id, super.key});
  final int id;

  @override
  State<AddBalanceBottomSheet> createState() => _AddBalanceBottomSheetState();
}

class _AddBalanceBottomSheetState extends State<AddBalanceBottomSheet> {
  bool _loading = false;
  final _employeeService = EmployeesService();
  final _textController = TextEditingController();

  void _onActivate() async {
    await runFetch(
      context: context,
      fetch: () async {
        setState(() {
          _loading = true;
        });
        await context.read<EmployeesCubit>().addBalanceToEmployee(
            context: context,
            id: widget.id,
            amount: double.parse(_textController.text),
            paymentMethod: EnumPaymentMethod.ONLINE_METHOD);
        // await _employeeService.addBalanceToEmployee(
        //     id: widget.id,
        //     amount: double.parse(_textController.text),
        //     paymentMethod: EnumPaymentMethod.ONLINE_METHOD);

        if (!mounted) return;
        final t = AppLocalizations.of(context)!;
        showToast(
            text: t.amount_added_successfully, state: ToastStates.success);
        context.pop();
      },
      after: () async {
        setState(() {
          _loading = false;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: ChevronBottomSheet(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              t.add_to_wallet,
              style: theme.textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            Container(
              width: double.infinity,
              color: theme.primaryColor.withAlpha(25),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    t.the_amount,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                      child: TextFormField(
                    controller: _textController,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: "0",
                      contentPadding: EdgeInsets.only(
                          left: 15, bottom: 11, top: 11, right: 15),
                    ),
                  )),
                  Text(
                    t.sar,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            ChevronButton(
              loading: _loading,
              onPressed: _onActivate,
              child: Text(t.add_the_amount),
            ),
            const SizedBox(height: 16.0),
            ChevronButton(
              onPressed: context.pop,
              style: ChevronButtonStyle.text(),
              child: Text(t.back),
            ),
          ],
        ),
      ),
    );
  }
}
