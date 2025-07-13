import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/company/employees/cubit/employees_cubit.dart';
import 'package:future_hub/company/employees/cubit/employees_state.dart';
import 'package:future_hub/company/employees/widgets/add_employees_bottom_sheet.dart';
import 'package:go_router/go_router.dart';

class CompanyEmployeesScreen extends StatelessWidget {
  const CompanyEmployeesScreen({super.key});

  void _addEmployee(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => const AddEmployeesBottomSheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.employees,
          style: const TextStyle(
              color: Palette.blackColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        context: context,
      ),
      body: BlocBuilder<EmployeesCubit, EmployeesState>(
        builder: (context, state) {
          if (state is EmployeesLoaded) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24.0,
                    left: 24.0,
                    right: 24.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 4,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .stretch, // Center elements in the container
                          children: [
                            Text(
                              t.teamProgress,
                              style: const TextStyle(
                                color: Palette.primaryColor,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      '10',
                                      style: TextStyle(
                                        color: Palette.blackColor,
                                        fontSize: 54,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset('assets/images/fire.png',
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,),
                                    const SizedBox(
                                      width: 70,
                                    ),
                                    Image.asset('assets/images/statistics.png',
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,),
                                  ],
                                ),
                                Image.asset('assets/images/grow.png',
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,),
                              ],
                            ),

                            const SizedBox(height: 20),
                            // const SizedBox(height: 5),
                            Text(
                              t.order_total,
                              style: const TextStyle(
                                color: Palette.greyColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Row(
                      //   crossAxisAlignment: CrossAxisAlignment.end,
                      //   children: [
                      //     Text(
                      //       t.employees,
                      //       style: theme.textTheme.titleLarge,
                      //     ),
                      //     const SizedBox(width: 6.0),
                      //     Text(
                      //       '(${t.count_employees(state.employees.length)})',
                      //       style: theme.textTheme.titleMedium!
                      //           .copyWith(color: Palette.greyColor.shade600),
                      //     ),
                      //   ],
                      // ),
                      const SizedBox(height: 20.0),
                      GestureDetector(
                        onTap: () {
                          _addEmployee(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 2,
                                blurRadius: 4,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/add.png'),
                              const SizedBox(
                                width: 15,
                              ),
                              Text(
                                t.add_an_employee,
                                style: const TextStyle(
                                  color: Palette.primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      // ChevronDashedBorder(
                      //   child: ChevronButton(
                      //     onPressed: () => _addEmployee(context),
                      //     style: ChevronButtonStyle.dashed(),
                      //     child: Row(
                      //       mainAxisAlignment: MainAxisAlignment.center,
                      //       children: [
                      //         SvgPicture.asset('assets/icons/add.svg'),
                      //         const SizedBox(width: 8.0),
                      //         Text(t.add_an_employee),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      const SizedBox(height: 16.0),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                GestureDetector(
                  onTap: () {
                    context.push(
                      '/company/employees',
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 4,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Employee Count and Label
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                      'assets/images/user.png'), // Icon for employees
                                  const SizedBox(
                                      width: 4), // Space between icon and text
                                  Text(
                                    t.employees,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.purple,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 20),
                              Text(
                                t.count_employees(state.total ?? 0),
                                style: theme.textTheme.titleMedium!.copyWith(
                                    color: Palette.blackColor,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w400),
                              ),
                            ],
                          ),
                          // Grouped Avatars
                          state.employees.length == 3
                              ? SizedBox(
                                  width: 100,
                                  child: Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Positioned(
                                        left:
                                            35, // Adjust the spacing between avatars
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundImage:
                                              state.employees[0].image != null
                                                  ? NetworkImage(state
                                                          .employees[0].image ??
                                                      '')
                                                  : null, // Example image URL
                                        ),
                                      ),
                                      Positioned(
                                        left: 5,
                                        child: CircleAvatar(
                                          radius: 20,
                                          backgroundImage:
                                              state.employees[1].image != null
                                                  ? NetworkImage(state
                                                          .employees[1].image ??
                                                      '')
                                                  : null, // Example image URL
                                        ),
                                      ),
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundImage: state
                                                    .employees[2].image !=
                                                null
                                            ? NetworkImage(
                                                state.employees[2].image ?? '')
                                            : null, // Example image URL
                                      ),
                                    ],
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    ),
                  ),
                ),
                // Expanded(
                //   child: ListView.builder(
                //     padding: const EdgeInsets.symmetric(horizontal: 24.0),
                //     itemCount: state.employees.length,
                //     itemBuilder: (context, index) {
                //       return Padding(
                //         padding: const EdgeInsets.only(bottom: 12.0),
                //         child: EmployeeListItem(
                //           employee: state.employees[index],
                //           onPressed: () {
                //             context.push(
                //               '/company/employee/${state.employees[index].id}',
                //             );
                //           },
                //         ),
                //       );
                //     },
                //   ),
                // ),
              ],
            );
          }

          // TODO: handle loading and failure states
          return Container();
        },
      ),
    );
  }
}
