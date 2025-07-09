import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/loading_indicator.dart';
import 'package:future_hub/company/employees/cubit/employees_cubit.dart';
import 'package:future_hub/company/employees/cubit/employees_state.dart';
import 'package:future_hub/company/employees/widgets/employee_list_item.dart';
import 'package:go_router/go_router.dart';

class CompanyEmployeeScreen extends StatelessWidget {
  const CompanyEmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.employees,
          style: const TextStyle(
            color: Palette.blackColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: BlocBuilder<EmployeesCubit, EmployeesState>(
                  builder: (context, state) {
                    if (state is EmployeesLoading) {
                      return const Center(child: PaginatorLoadingIndicator());
                    } else if (state is EmployeesLoaded) {
                      return NotificationListener<ScrollNotification>(
                        onNotification: (ScrollNotification scrollInfo) {
                          if (scrollInfo.metrics.pixels ==
                                  scrollInfo.metrics.maxScrollExtent &&
                              context.read<EmployeesCubit>().hasMorePages) {
                            context.read<EmployeesCubit>().loadMore();
                          }
                          return false;
                        },
                        child: ListView.builder(
                          padding: const EdgeInsets.symmetric(horizontal: 24.0),
                          itemCount: state.employees.length + 1,
                          itemBuilder: (context, index) {
                            if (index == state.employees.length) {
                              return context.read<EmployeesCubit>().hasMorePages
                                  ? const Center(
                                      child: PaginatorLoadingIndicator())
                                  : const SizedBox();
                            }
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 12.0),
                              child: EmployeeListItem(
                                employee: state.employees[index],
                                onPressed: () {
                                  context.push(
                                      '/company/employee/${state.employees[index].id.toString()}');
                                },
                              ),
                            );
                          },
                        ),
                      );
                    }
                    return Center(child: Text(t.noPartners));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
