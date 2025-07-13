import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/cubits/drawer_cubit/cubit.dart';
import 'package:future_hub/common/shared/cubits/drawer_cubit/states.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/widgets/company_nav_drawer.dart';
import 'package:future_hub/common/shared/widgets/home_app_bar.dart';
import 'package:future_hub/common/shared/widgets/labeled_icon_placeholder.dart';
import 'package:future_hub/common/shared/widgets/loading_indicator.dart';
import 'package:future_hub/company/companyOrders/cubit/cubit/company_order_cubit.dart';
import 'package:future_hub/company/companyOrders/cubit/states/company_order_state.dart';
import 'package:future_hub/company/companyOrders/model/order_company_model.dart';
import 'package:future_hub/company/employees/cubit/employees_cubit.dart';
import 'package:future_hub/company/employees/cubit/employees_state.dart';
import 'package:future_hub/company/employees/widgets/employee_list_item.dart';
import 'package:future_hub/company/home/widget/company_bottom_navbar.dart';
import 'package:future_hub/puncher/components/past_order_card.dart';
import 'package:go_router/go_router.dart';

class CompanyHomeScreen extends StatefulWidget {
  const CompanyHomeScreen({
    super.key,
    this.onTapBalance,
  });

  final void Function()? onTapBalance;

  @override
  State<CompanyHomeScreen> createState() => _CompanyHomeScreenState();
}

class _CompanyHomeScreenState extends State<CompanyHomeScreen> {
  bool isDrawerOpen = false;
  bool showHint = false;
  bool showFirstImage = true;
  // Future<void> _onLoadMore() async {
  //   return BlocProvider.of<OrdersCubit>(context).loadOrders();
  // }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final paddingTop = MediaQuery.of(context).padding.top;
    // final appBarHeight = AppBar().preferredSize.height;
    final bool arabic = Directionality.of(context) == TextDirection.rtl;
    return BlocBuilder<DrawerCubit, DrawerStates>(builder: (context, state) {
      isDrawerOpen = (state as DrawerDataState).isDrawerOpen;
      return Scaffold(
        body: SizedBox(
          height: double.infinity,
          child: Stack(
            children: [
              const CompanyNavDrawer(),
              AnimatedContainer(
                height: MediaQuery.of(context).size.height,
                transform: Matrix4.translationValues(
                    isDrawerOpen
                        ? arabic
                            ? -MediaQuery.of(context).size.width * 0.28
                            : MediaQuery.of(context).size.width * 0.37
                        : 0.0,
                    isDrawerOpen
                        ? arabic
                            ? 90
                            : 130
                        : 0.0,
                    0)
                  ..scale(isDrawerOpen ? 0.78 : 1.00)
                  ..rotateZ(isDrawerOpen
                      ? arabic
                          ? 0.1
                          : -0.1
                      : 0),
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: isDrawerOpen
                      ? BorderRadius.circular(40)
                      : BorderRadius.circular(0),
                ),
              ),
              AnimatedContainer(
                height: MediaQuery.of(context).size.height,
                transform: Matrix4.translationValues(
                    isDrawerOpen
                        ? arabic
                            ? -MediaQuery.of(context).size.width * 0.42
                            : MediaQuery.of(context).size.width * 0.45
                        : 0.0,
                    isDrawerOpen
                        ? arabic
                            ? 55
                            : 90
                        : 0.0,
                    0)
                  ..scale(isDrawerOpen ? 0.85 : 1.00)
                  ..rotateZ(isDrawerOpen
                      ? arabic
                          ? 0.1
                          : -0.1
                      : 0),
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: isDrawerOpen
                      ? BorderRadius.circular(40)
                      : BorderRadius.circular(0),
                ),
              ),
              AnimatedContainer(
                height: MediaQuery.of(context).size.height,
                transform: Matrix4.translationValues(
                    isDrawerOpen
                        ? arabic
                            ? -MediaQuery.of(context).size.width * 0.55
                            : MediaQuery.of(context).size.width * 0.55
                        : 0.0,
                    isDrawerOpen
                        ? arabic
                            ? 30
                            : 60
                        : 0.0,
                    0)
                  ..scale(isDrawerOpen ? 0.90 : 1.00)
                  ..rotateZ(isDrawerOpen
                      ? arabic
                          ? 0.1
                          : -0.1
                      : 0),
                duration: const Duration(milliseconds: 300),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: isDrawerOpen
                      ? BorderRadius.circular(40)
                      : BorderRadius.circular(0),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: paddingTop),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        HomeAppBar(
                          icon: GestureDetector(
                            onTap: () => setState(() {
                              context.read<DrawerCubit>().changeDrawerState();
                            }),
                            child: Transform.flip(
                              flipX: !arabic,
                              child: SvgPicture.asset(
                                isDrawerOpen
                                    ? 'assets/icons/close.svg'
                                    : 'assets/icons/drawer.svg',
                                height: isDrawerOpen ? 40 : 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 24.0),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 24.0,
                            right: 24.0,
                            bottom: 18.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/trekker.png',
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    t.accountReview,
                                    style: const TextStyle(
                                      color: Palette.blackColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 14.0),
                                child: GestureDetector(
                                  onTap: widget.onTapBalance,
                                  child: BlocBuilder<AuthCubit, AuthState>(
                                    builder: (context, state) {
                                      return Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  context.push(
                                                    '/company/orders',
                                                  );
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.2),
                                                        spreadRadius: 2,
                                                        blurRadius: 4,
                                                        offset: const Offset(0,
                                                            3), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  padding: const EdgeInsets.all(
                                                      16.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center, // Center elements in the container
                                                    children: [
                                                      Image.asset(
                                                          'assets/images/Group 7.png',
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,),
                                                      const SizedBox(height: 5),
                                                      Text(
                                                        (state as AuthSignedIn)
                                                            .user
                                                            .company!
                                                            .ordersCount
                                                            .toString(),
                                                        style: const TextStyle(
                                                          color: Palette
                                                              .blackColor,
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Text(
                                                        t.order_total,
                                                        style: const TextStyle(
                                                          color:
                                                              Palette.greyColor,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  // context.push('/points');
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.2),
                                                        spreadRadius: 2,
                                                        blurRadius: 4,
                                                        offset: const Offset(0,
                                                            3), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  padding: const EdgeInsets.all(
                                                      16.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center, // Center elements in the container
                                                    children: [
                                                      Image.asset(
                                                          'assets/images/Group 7.png',
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        (state as AuthSignedIn)
                                                            .user
                                                            .company!
                                                            .vehiclesCount
                                                            .toString(),
                                                        style: const TextStyle(
                                                          color: Palette
                                                              .blackColor,
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        t.vicheleNumber,
                                                        style: const TextStyle(
                                                          color:
                                                              Palette.greyColor,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 50,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  context.push(
                                                      '/company/employee');
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20.0),
                                                    boxShadow: [
                                                      BoxShadow(
                                                        color: Colors.grey
                                                            .withOpacity(0.2),
                                                        spreadRadius: 2,
                                                        blurRadius: 4,
                                                        offset: const Offset(0,
                                                            3), // changes position of shadow
                                                      ),
                                                    ],
                                                  ),
                                                  padding: const EdgeInsets.all(
                                                      16.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center, // Center elements in the container
                                                    children: [
                                                      Image.asset(
                                                          'assets/images/Group 7.png',
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        t.count_employees(
                                                            num.parse(state
                                                                .user
                                                                .company!
                                                                .driversCount
                                                                .toString())),
                                                        style: const TextStyle(
                                                          color: Palette
                                                              .blackColor,
                                                          fontSize: 22,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        t.employees,
                                                        style: const TextStyle(
                                                          color:
                                                              Palette.greyColor,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 15,
                                              ),
                                              Container(
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20.0),
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.2),
                                                      spreadRadius: 2,
                                                      blurRadius: 4,
                                                      offset: const Offset(0,
                                                          3), // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                padding:
                                                    const EdgeInsets.all(16.0),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center, // Center elements in the container
                                                  children: [
                                                    Image.asset(
                                                        'assets/images/down.png',
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,),
                                                    const SizedBox(
                                                      height: 13,
                                                    ),
                                                    Text(
                                                      (state as AuthSignedIn)
                                                          .user
                                                          .balance!,
                                                      style: const TextStyle(
                                                        color:
                                                            Palette.blackColor,
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text(
                                                      t.balance,
                                                      style: const TextStyle(
                                                        color:
                                                            Palette.greyColor,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                      //   BalanceCard(
                                      //   balance: (state as AuthSignedIn)
                                      //       .user
                                      //       .wallet
                                      //       .toString(),
                                      //   onDeposit: () => context
                                      //       .push('/payment-methods-screen'),
                                      // );
                                    },
                                  ),
                                ),
                              ),
                              // const SizedBox(height: 24.0),
                              // Padding(
                              //   padding: const EdgeInsets.symmetric(
                              //     horizontal: 24.0,
                              //     vertical: 18.0,
                              //   ),
                              //   child: Text(
                              //     t.previous_orders,
                              //     style: theme.textTheme.titleLarge,
                              //   ),
                              // ),
                              // Expanded(
                              //   child: BlocBuilder<OrdersCubit, OrderStates>(
                              //     builder: (context, state) {
                              //       if (state is OrdersLoadingState &&
                              //           state.isFirstFetch) {
                              //         return const PaginatorLoadingIndicator();
                              //       }
                              //       List<Order> orders = [];
                              //       bool canLoadMore = true;
                              //       if (state is OrdersLoadingState) {
                              //         orders = state.oldOrders;
                              //       } else if (state is OrdersLoadedState) {
                              //         orders = state.orders;
                              //         canLoadMore = state.canLoadMore;
                              //       }
                              //
                              //       return InfiniteListView(
                              //         canLoadMore: canLoadMore,
                              //         onLoadMore: _onLoadMore,
                              //         padding: EdgeInsets.zero,
                              //         itemCount: orders.length,
                              //         itemBuilder: (context, index) {
                              //           return Padding(
                              //             padding: const EdgeInsets.symmetric(
                              //                 horizontal: 20, vertical: 10),
                              //             child: GestureDetector(
                              //               onTap: () => context.push(
                              //                 '/employee/order-details',
                              //                 extra: orders[index],
                              //               ),
                              //               child: OrderCard(
                              //                 order: orders[index],
                              //               ),
                              //             ),
                              //           );
                              //         },
                              //         empty: LabeledIconPlaceholder(
                              //           icon: SvgPicture.asset(
                              //               'assets/icons/no-orders.svg'),
                              //           label: t.there_are_no_orders,
                              //         ),
                              //       );
                              //     },
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(26.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize
                                  .min, // Content wraps based on child size
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                // Purple Header Section
                                Container(
                                  width: double.infinity, // Takes full width
                                  decoration: const BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(26.0),
                                      topRight: Radius.circular(26.0),
                                    ), // Rounded top corners
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0, horizontal: 30.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/vector.png',
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,),
                                      const SizedBox(
                                          width:
                                              10), // Spacing between icon and text
                                      Text(
                                        t.lastOrders,
                                        style: theme.textTheme.titleLarge!
                                            .copyWith(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                                // White List Section
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: SizedBox(
                                    height: 250, // Adjust height as needed
                                    child: BlocBuilder<CompanyOrderCubit,
                                        CompanyOrderState>(
                                      builder: (context, state) {
                                        if (state is CompanyOrderLoadingState &&
                                            state.isFirstFetch) {
                                          return const PaginatorLoadingIndicator();
                                        }

                                        List<CompanyOrder> orders = [];
                                        bool canLoadMore = true;
                                        if (state is CompanyOrderLoadingState) {
                                          orders = state.oldOrders;
                                        } else if (state
                                            is CompanyOrderLoadedState) {
                                          orders = state.orders;
                                          // canLoadMore = state.canLoadMore;
                                        }
                                        if (orders.length == 0) {
                                          return LabeledIconPlaceholder(
                                            icon: SvgPicture.asset(
                                                'assets/icons/no-orders.svg'),
                                            label: t.there_are_no_orders,
                                          );
                                        } else {
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            itemCount: orders.length > 4
                                                ? 4
                                                : orders.length,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                child: PastOrderCard(
                                                    order: orders[index],
                                                    isLast: orders.last ==
                                                        orders[index]),
                                              );
                                            },
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      context.push(
                                        '/company/orders',
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 16.0),
                                      child: Text(
                                        t.show_all,
                                        style: const TextStyle(
                                          color: Colors.purple,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(26.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 2,
                                  blurRadius: 4,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize
                                  .min, // Content wraps based on child size
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                // Purple Header Section
                                Container(
                                  width: double.infinity, // Takes full width
                                  decoration: const BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(26.0),
                                      topRight: Radius.circular(26.0),
                                    ), // Rounded top corners
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20.0, horizontal: 30.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/images/people.png',
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,),
                                      const SizedBox(
                                          width:
                                              10), // Spacing between icon and text
                                      Text(
                                        t.employees,
                                        style: theme.textTheme.titleLarge!
                                            .copyWith(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                                // White List Section
                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: SizedBox(
                                    height: 250, // Adjust height as needed
                                    child: BlocBuilder<EmployeesCubit,
                                        EmployeesState>(
                                      builder: (context, state) {
                                        if (state is EmployeesLoading) {
                                          return const PaginatorLoadingIndicator();
                                        }

                                        // List<Order> orders = [];
                                        // bool canLoadMore = true;
                                        // if (state is OrdersLoadingState) {
                                        //   orders = state.oldOrders;
                                        // } else if (state is OrdersLoadedState) {
                                        //   orders = state.orders;
                                        //   canLoadMore = state.canLoadMore;
                                        // }
                                        if (state is EmployeesLoaded) {
                                          return ListView.builder(
                                            padding: EdgeInsets.zero,
                                            itemCount:
                                                state.employees.length > 4
                                                    ? 4
                                                    : state.employees.length,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 10),
                                                child: EmployeeListItem(
                                                  employee:
                                                      state.employees[index],
                                                  onPressed: () {
                                                    // context.push(
                                                    //   '/company/employee/${state.employees[index].id}',
                                                    // );
                                                  },
                                                ),
                                              );
                                            },
                                          );
                                        }
                                        return Container();
                                      },
                                    ),
                                  ),
                                ),
                                Center(
                                  child: GestureDetector(
                                    onTap: () {
                                      // Handle show all action
                                      context.push(
                                        '/company/employee',
                                      );
                                    },
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 16.0),
                                      child: Text(
                                        t.show_all,
                                        style: const TextStyle(
                                          color: Colors.purple,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 16.0),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 70.0),
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   height: 1.75 * appBarHeight + paddingTop,
              //   child: FutureHubAppBar(
              //     title: Text(t.home),
              //     context: context,
              //   ),
              // ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  child: buildBottomNavBar(context, arabic),
                ),
              ),
              Positioned(
                bottom: 30,
                right: 0,
                left: 0,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.width,
                  child: buildCenterLogo(context, arabic),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget buildBottomNavBar(BuildContext context, bool arabic) {
    final size = MediaQuery.of(context).size;
    return AnimatedContainer(
      height: MediaQuery.of(context).size.height,
      transform: Matrix4.translationValues(
          isDrawerOpen
              ? size.width > 420
                  ? arabic
                      ? -size.width * 0.73
                      : size.width * 0.74
                  : arabic
                      ? -size.width * 0.71
                      : size.width * 0.71
              : 0.0,
          isDrawerOpen
              ? arabic
                  ? -size.height * 0.04
                  : size.height * 0.01
              : 0.0,
          0)
        ..scale(isDrawerOpen ? 0.90 : 1.00)
        ..rotateZ(isDrawerOpen
            ? arabic
                ? 0.1
                : -0.1
            : 0),
      duration: const Duration(milliseconds: 300),
      child: const CompanyBottomNavBar(),
    );
  }

  Widget buildCenterLogo(BuildContext context, bool arabic) {
    logoPressed() {
      if (showHint) {
        CacheManager.saveData('home-hint', 'true');
        setState(() {
          showHint = false;
        });
        context.push('/puncher/recieve-order');
        return;
      }
      context.push('/puncher/recieve-order');
    }

    return AnimatedContainer(
      height: MediaQuery.of(context).size.height,
      transform: Matrix4.translationValues(
          isDrawerOpen
              ? arabic
                  ? -MediaQuery.of(context).size.width * 0.55
                  : MediaQuery.of(context).size.width * 0.80
              : 0.0,
          isDrawerOpen ? 0.0 : 0.0,
          0)
        ..scale(isDrawerOpen ? 0.90 : 1.00)
        ..rotateZ(isDrawerOpen
            ? arabic
                ? 0.1
                : -0.1
            : 0),
      duration: const Duration(milliseconds: 300),
      child: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.1,
          child: Stack(
            alignment: Alignment.center,
            children: [
              // First Image
              AnimatedOpacity(
                opacity: showFirstImage ? 1.0 : 0.0, // Show/hide based on state
                duration: const Duration(milliseconds: 500), // Fade duration
                child: Image.asset(
                  'assets/images/home-logo.png',
                  fit: BoxFit.contain,
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false,
                ),
              ),
              // Second Image
              AnimatedOpacity(
                opacity: showFirstImage ? 0.0 : 1.0, // Show/hide based on state
                duration: const Duration(milliseconds: 500), // Fade duration
                child: Image.asset(
                  'assets/images/Service Provider.png',
                            filterQuality:
                                FilterQuality.none, // Disable mipmapping
                            isAntiAlias: false, // Your second image
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
