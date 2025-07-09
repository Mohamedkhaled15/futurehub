import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/shared/router.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/infinite_list_view.dart';
import 'package:future_hub/common/shared/widgets/labeled_icon_placeholder.dart';
import 'package:future_hub/common/shared/widgets/loading_indicator.dart';
import 'package:future_hub/employee/components/services_order_card.dart';
import 'package:future_hub/employee/orders/cubit/employee_order_cubit.dart';
import 'package:future_hub/employee/orders/cubit/employee_order_state.dart';
import 'package:future_hub/employee/orders/models/employee_order_model.dart';
import 'package:future_hub/employee/orders/widgets/employee_order_card.dart';
import 'package:go_router/go_router.dart';

class EmployeeOrdersScreen extends StatefulWidget {
  const EmployeeOrdersScreen({super.key});

  @override
  State<EmployeeOrdersScreen> createState() => _EmployeeOrdersScreenState();
}

class _EmployeeOrdersScreenState extends State<EmployeeOrdersScreen>
    with RouteAware {
  int _selectedTabIndex = 0;
  bool isServices = false;
  @override
  void initState() {
    super.initState();
    _refreshData();
  }

  void _refreshData() {
    if (_selectedTabIndex == 0) {
      BlocProvider.of<EmployeeOrderCubit>(context).loadOrders(refresh: true);
    } else {
      BlocProvider.of<EmployeeOrderCubit>(context)
          .loadServicesOrders(refresh: true);
    }
  }

  Future<void> _onLoadMore() async {
    if (_selectedTabIndex == 0) {
      return BlocProvider.of<EmployeeOrderCubit>(context).loadOrders();
    } else {
      return BlocProvider.of<EmployeeOrderCubit>(context).loadServicesOrders();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    routeObserver.unsubscribe(this);
    super.dispose();
  }

  @override
  void didPopNext() {
    _refreshData();
    super.didPopNext();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(t.my_orders),
        context: context,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          Row(
            children: [
              const SizedBox(width: 15),
              _buildTab(t.fuel, 0),
              const SizedBox(width: 15),
              _buildTab(t.services, 1),
            ],
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: BlocBuilder<EmployeeOrderCubit, EmployeeOrderStates>(
              builder: (context, state) {
                int ordersCount = 0;
                if (state is EmployeeOrdersLoadedState) {
                  ordersCount = state.orders.length;
                } else if (state is EmployeeServicesOrdersLoadedState) {
                  ordersCount = state.orders.length;
                } else if (state is EmployeeOrdersLoadingState) {
                  ordersCount = state.oldOrders.length;
                } else if (state is EmployeeServicesOrdersLoadingState) {
                  ordersCount = state.oldOrders.length;
                }
                return Text(
                  '${t.orders} ($ordersCount)',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: BlocBuilder<EmployeeOrderCubit, EmployeeOrderStates>(
              builder: (context, state) {
                if (state is EmployeeOrdersLoadingState && state.isFirstFetch ||
                    state is EmployeeServicesOrdersLoadingState &&
                        state.isFirstFetch) {
                  return const PaginatorLoadingIndicator();
                }

                List<EmployeeOrder> orders = [];
                bool canLoadMore = _selectedTabIndex == 0
                    ? context.read<EmployeeOrderCubit>().canLoadMoreFuel
                    : context.read<EmployeeOrderCubit>().canLoadMoreServices;
                if (state is EmployeeOrdersLoadedState) {
                  isServices = false;
                  orders = state.orders;
                } else if (state is EmployeeServicesOrdersLoadedState) {
                  isServices = true;
                  orders = state.orders;
                } else if (state is EmployeeOrdersLoadingState) {
                  orders = state.oldOrders;
                } else if (state is EmployeeServicesOrdersLoadingState) {
                  orders = state.oldOrders;
                }

                return InfiniteListView(
                  canLoadMore: canLoadMore,
                  onLoadMore: _onLoadMore,
                  itemCount: orders.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: index == orders.length - 1 ? 80 : 16.0,
                        left: 24.0,
                        right: 24.0,
                      ),
                      child: GestureDetector(
                        onTap: () => context.push(
                          '/employee/order-details',
                          extra: orders[index],
                        ),
                        child: isServices
                            ? ServicesOrderCard(
                                isLast: orders.last == orders[index],
                                order: orders[index],
                              )
                            : EmployeeOrderCard(
                                order: orders[index],
                              ),
                      ),
                    );
                  },
                  empty: LabeledIconPlaceholder(
                    icon: SvgPicture.asset('assets/images/orders.svg'),
                    label: t.there_are_no_orders,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTab(String title, int tabIndex) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTabIndex = tabIndex;
        });
        if (tabIndex == 0) {
          BlocProvider.of<EmployeeOrderCubit>(context)
              .loadOrders(refresh: true);
        } else {
          BlocProvider.of<EmployeeOrderCubit>(context)
              .loadServicesOrders(refresh: true);
        }
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: _selectedTabIndex == tabIndex
              ? const Color(0xFF55217F)
              : const Color(0xFFF4F4F4).withOpacity(0.5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: TextStyle(
            color: _selectedTabIndex == tabIndex
                ? Colors.white
                : const Color(0xff505050).withOpacity(0.5),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
