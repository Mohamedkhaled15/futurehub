import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/infinite_list_view.dart';
import 'package:future_hub/common/shared/widgets/loading_indicator.dart';
import 'package:future_hub/puncher/components/service_provider_order_card.dart';
import 'package:future_hub/puncher/components/services_puncher_order_card.dart';
import 'package:future_hub/puncher/orders/model/service_provider_order_model.dart';
import 'package:future_hub/puncher/orders/order_cubit/order_states/service_provider_order_states.dart';
import 'package:future_hub/puncher/orders/order_cubit/service_provider_orders_cubit.dart';
import 'package:go_router/go_router.dart';

class PuncherOrdersScreen extends StatefulWidget {
  const PuncherOrdersScreen({super.key});

  @override
  State<PuncherOrdersScreen> createState() => _PuncherOrdersScreenState();
}

class _PuncherOrdersScreenState extends State<PuncherOrdersScreen> {
  Future<void> _onLoadMore() async {
    final authState = context.read<AuthCubit>().state;
    final ordersCubit = context.read<ServiceProviderOrdersCubit>();
    if (authState is AuthSignedIn &&
        authState.user.puncherTypes!.contains('Fuel')) {
      await ordersCubit.loadOrders();
    } else {
      await ordersCubit.loadServicesOrders();
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final authState = context.read<AuthCubit>().state;
    final isFuelUser = authState is AuthSignedIn &&
        authState.user.puncherTypes!.contains('Fuel');
    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.orders,
          style: const TextStyle(
              color: Palette.blackColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        context: context,
      ),
      body: BlocBuilder<ServiceProviderOrdersCubit, ServiceProviderOrderStates>(
        builder: (context, state) {
          List<Datum> orders = [];
          bool canLoadMore =
              context.read<ServiceProviderOrdersCubit>().canLoadMore;
          bool isLoadingMore = false;

          if (state is ServiceProviderOrdersLoadingState &&
              state.isFirstFetch) {
            // First time loading
            return const Center(child: PaginatorLoadingIndicator());
          } else if (state is ServiceProviderOrdersLoadingState) {
            orders = state.oldOrders;
            isLoadingMore = true;
          } else if (state is ServiceProviderOrdersLoadedState) {
            orders = state.orders;
          } else if (state is ServiceProviderServicesOrdersLoadedState) {
            orders = state.orders;
          } else if (state is ServiceProviderOrdersServicesLoadingState &&
              state.isFirstFetch) {
            return const Center(child: PaginatorLoadingIndicator());
          } else if (state is ServiceProviderOrdersServicesLoadingState) {
            orders = state.oldOrders;
            isLoadingMore = true;
          }
          final filteredOrders = orders
              .where((order) => order.status == 1)
              .toList()
            ..sort((a, b) {
              final dateA = DateTime.tryParse(a.createdAt ?? "") ?? DateTime(0);
              final dateB = DateTime.tryParse(b.createdAt ?? "") ?? DateTime(0);
              return dateB.compareTo(dateA); // Newest first
            });

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // const SizedBox(height: 16),
              // Row(
              //   children: [
              //     const SizedBox(width: 15),
              //     _buildTabButton(context, t.fuel, 0),
              //     const SizedBox(width: 15),
              //     _buildTabButton(context, t.services, 1),
              //   ],
              // ),
              const SizedBox(height: 30),
              Expanded(
                child: InfiniteListView(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  canLoadMore: canLoadMore,
                  onLoadMore: _onLoadMore,
                  itemCount: filteredOrders.length + (isLoadingMore ? 1 : 0),
                  itemBuilder: (context, index) {
                    if (index >= filteredOrders.length) {
                      return const Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Center(child: CircularProgressIndicator()),
                      );
                    }

                    final order = filteredOrders[index];

                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: index == filteredOrders.length - 1 ? 80 : 16.0,
                        left: 24.0,
                        right: 24.0,
                      ),
                      child: GestureDetector(
                        onTap: () => context.push(
                          '/puncher/order-details-screen',
                          extra: order,
                        ),
                        child: !isFuelUser
                            ? ServicesPuncherOrderCard(
                                order: order,
                                isLast: filteredOrders.last == order,
                              )
                            : ServiceProviderOrderCard(
                                order: order,
                                isLast: filteredOrders.last == order,
                              ),
                      ),
                    );
                  },
                  empty: Column(
                    children: [
                      SvgPicture.asset(
                        'assets/images/orders.svg',
                        height: MediaQuery.of(context).size.height * 0.25,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        t.the_place_here_is_empty,
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        t.you_can_find_your_orders_here,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Palette.textGreyColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  // Widget _buildTabButton(BuildContext context, String title, int tabIndex) {
  //   return GestureDetector(
  //     onTap: () {
  //       setState(() {
  //         selectedTabIndex = tabIndex;
  //       });
  //       if (tabIndex == 0) {
  //         BlocProvider.of<ServiceProviderOrdersCubit>(context)
  //             .loadOrders(refresh: true);
  //       } else {
  //         BlocProvider.of<ServiceProviderOrdersCubit>(context)
  //             .loadServicesOrders(refresh: true);
  //       }
  //     },
  //     child: Container(
  //       padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
  //       decoration: BoxDecoration(
  //         color: selectedTabIndex == tabIndex
  //             ? const Color(0xFF55217F)
  //             : const Color(0xFFF4F4F4).withOpacity(0.5),
  //         borderRadius: BorderRadius.circular(10),
  //       ),
  //       child: Text(
  //         title,
  //         style: TextStyle(
  //           color: selectedTabIndex == tabIndex
  //               ? Colors.white
  //               : const Color(0xff505050).withOpacity(0.5),
  //           fontWeight: FontWeight.bold,
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
