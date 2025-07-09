import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/infinite_list_view.dart';
import 'package:future_hub/common/shared/widgets/loading_indicator.dart';
import 'package:future_hub/puncher/components/service_provider_order_card.dart';
import 'package:future_hub/puncher/components/services_puncher_order_card.dart';
import 'package:future_hub/puncher/orders/model/service_provider_order_model.dart';
import 'package:future_hub/puncher/orders/order_cubit/order_states/service_provider_order_states.dart';
import 'package:future_hub/puncher/orders/order_cubit/service_provider_orders_cubit.dart';
import 'package:go_router/go_router.dart';

class PuncherOrdersListView extends StatefulWidget {
  const PuncherOrdersListView({super.key});

  @override
  State<PuncherOrdersListView> createState() => _PuncherOrdersListViewState();
}

class _PuncherOrdersListViewState extends State<PuncherOrdersListView> {
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
    final theme = Theme.of(context);

    return BlocBuilder<ServiceProviderOrdersCubit, ServiceProviderOrderStates>(
      builder: (context, state) {
        final authState = context.read<AuthCubit>().state;
        final isFuelUser = authState is AuthSignedIn &&
            authState.user.puncherTypes!.contains('Fuel');
        if (state is ServiceProviderOrdersLoadingState && state.isFirstFetch ||
            state is ServiceProviderOrdersServicesLoadingState &&
                state.isFirstFetch) {
          return const PaginatorLoadingIndicator();
        }
        List<Datum> orders = [];
        bool canLoadMore =
            context.read<ServiceProviderOrdersCubit>().canLoadMore;
        if (state is ServiceProviderOrdersLoadingState) {
          orders = state.oldOrders;
        } else if (state is ServiceProviderOrdersServicesLoadingState) {
          orders = state.oldOrders;
        } else if (state is ServiceProviderOrdersLoadedState) {
          orders = state.orders;
          // canLoadMore = state.canLoadMore;
        } else if (state is ServiceProviderServicesOrdersLoadedState) {
          orders = state.orders;
        }
        final filteredOrders =
            orders.where((order) => order.status == 1).toList();
        filteredOrders.sort((a, b) {
          final dateA = DateTime.tryParse(a.createdAt ?? "") ?? DateTime(0);
          final dateB = DateTime.tryParse(b.createdAt ?? "") ?? DateTime(0);
          return dateB.compareTo(dateA); // Sort by newest first
        });

        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    children: [
                      Text(
                        t.orders,
                        style:
                            theme.textTheme.titleLarge!.copyWith(fontSize: 26),
                      ),
                      Text(
                        " (${t.count_orders(filteredOrders.length)})",
                        style: const TextStyle(
                          fontSize: 15,
                          color: Palette.primaryLightColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: InfiniteListView(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      canLoadMore: canLoadMore,
                      onLoadMore: _onLoadMore,
                      empty: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/images/orders.svg',
                            height: MediaQuery.of(context).size.height * 0.25,
                          ),
                          // Image.asset(
                          //   'assets/images/empty.png',
                          //   height: MediaQuery.of(context).size.height * 0.25,
                          // ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            t.the_place_here_is_empty,
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            t.you_can_find_your_orders_here,
                            style: const TextStyle(
                              fontSize: 20,
                              color: Palette.textGreyColor,
                            ),
                          )
                        ],
                      ),
                      itemCount: filteredOrders.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(
                            bottom: index == orders.length - 1 ? 80 : 16.0,
                            left: 24.0,
                            right: 24.0,
                          ),
                          child: GestureDetector(
                            onTap: () => context.push(
                              '/puncher/order-details-screen',
                              extra: orders[index],
                            ),
                            child: isFuelUser
                                ? ServiceProviderOrderCard(
                                    order: filteredOrders[index],
                                    isLast: filteredOrders.last ==
                                        filteredOrders[index],
                                  )
                                : ServicesPuncherOrderCard(
                                    order: filteredOrders[index],
                                    isLast: filteredOrders.last ==
                                        filteredOrders[index],
                                  ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
