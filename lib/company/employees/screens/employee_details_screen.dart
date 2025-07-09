import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_card.dart';
import 'package:future_hub/common/wallet/widgets/balance_details.dart';
import 'package:future_hub/company/employees/cubit/employees_cubit.dart';
import 'package:future_hub/company/employees/cubit/employees_state.dart';
import 'package:future_hub/company/employees/widgets/delete_employee_bottom_sheet.dart';
import 'package:future_hub/company/employees/widgets/employee_details.dart';
import 'package:future_hub/company/employees/widgets/employee_orders_list_view.dart';
import 'package:go_router/go_router.dart';

import '../widgets/add_balance_bottom_sheet.dart';

class EmployeeDetailsScreen extends StatefulWidget {
  final String id;

  const EmployeeDetailsScreen(this.id, {super.key});

  @override
  State<EmployeeDetailsScreen> createState() => _EmployeeDetailsScreenState();
}

class _EmployeeDetailsScreenState extends State<EmployeeDetailsScreen> {
  Future<void> _stopEmployee() async {
    context
        .read<EmployeesCubit>()
        .stopEmployee(id: widget.id, context: context);
  }

  Future<void> _activateEmployee() async {
    context
        .read<EmployeesCubit>()
        .activateEmployee(id: widget.id, context: context);
  }

  Future<void> _deleteEmployee() async {
    showModalBottomSheet(
      context: context,
      builder: (context) => DeleteEmployeeBottomSheet(
        id: widget.id,
      ),
    );
  }

  Future<void> _addBalance() async {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => AddBalanceBottomSheet(
        id: int.parse(widget.id),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return BlocBuilder<EmployeesCubit, EmployeesState>(
        builder: (context, state) {
      if (state is EmployeesLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      final employee = (state as EmployeesLoaded)
          .employees
          .firstWhereOrNull((employee) => employee.id.toString() == widget.id);
      if (employee == null) {
        return const Scaffold();
      }
      return Scaffold(
        appBar: FutureHubAppBar(
          title: Text(employee.name!),
          context: context,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 24.0,
                  right: 24.0,
                  left: 24.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ChevronCard(
                      child: Column(
                        children: [
                          EmployeeDetails(employee: employee),
                          const Padding(
                            padding: EdgeInsets.only(top: 16.0, bottom: 8.0),
                            child: Divider(height: 0),
                          ),
                          IntrinsicHeight(
                            child: Row(
                              children: [
                                Expanded(
                                  child: ChevronButton(
                                    onPressed: () => context.push(
                                        '/edit-employee',
                                        extra: employee),
                                    dense: true,
                                    style: ChevronButtonStyle.text(
                                        Palette.primaryColor),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/edit.svg'),
                                        const SizedBox(width: 6.0),
                                        Text(t.edit),
                                      ],
                                    ),
                                  ),
                                ),
                                const VerticalDivider(),
                                Expanded(
                                  child: employee.isActive == 1
                                      ? ChevronButton(
                                          onPressed: _stopEmployee,
                                          dense: true,
                                          style: ChevronButtonStyle.text(
                                              Palette.successColor),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/icons/pause.svg'),
                                              const SizedBox(width: 6.0),
                                              Text(t.stop),
                                            ],
                                          ),
                                        )
                                      : ChevronButton(
                                          onPressed: _activateEmployee,
                                          dense: true,
                                          style: ChevronButtonStyle.text(
                                              Palette.successColor),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SvgPicture.asset(
                                                  'assets/icons/pause.svg'),
                                              const SizedBox(width: 6.0),
                                              Text(t.activate),
                                            ],
                                          ),
                                        ),
                                ),
                                const VerticalDivider(),
                                Expanded(
                                  child: ChevronButton(
                                    onPressed: _deleteEmployee,
                                    dense: true,
                                    style: ChevronButtonStyle.text(
                                        Palette.dangerColor),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            'assets/icons/delete.svg'),
                                        const SizedBox(width: 6.0),
                                        Text(t.delete),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Text(
                      t.wallet,
                      style: theme.textTheme.titleLarge,
                    ),
                    const SizedBox(height: 18.0),
                    ChevronCard(
                      child: IntrinsicHeight(
                        child: Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () => context.push(
                                  '/company/employee/${employee.id}/employee-wallet?balance=${employee.wallet}',
                                  extra: employee.transactionHistory,
                                ),
                                child: BalanceDetails(
                                  balance: employee.wallet.toString(),
                                  gradient: true,
                                  isEmployeeDetails: true,
                                ),
                              ),
                            ),
                            const VerticalDivider(),
                            Expanded(
                              child: ChevronButton(
                                onPressed: () => _addBalance(),
                                style: ChevronButtonStyle.text(
                                    Palette.primaryColor),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                        'assets/icons/withdraw.svg'),
                                    const SizedBox(width: 8.0),
                                    Text(t.add),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 24.0),
                    Text(
                      t.orders,
                      style: theme.textTheme.titleLarge,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18.0),
              SizedBox(
                height: 0.65 * MediaQuery.sizeOf(context).height,
                child: EmployeeOrdersListView(
                  driverOrder: employee.orders,
                  id: int.parse(widget.id),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
