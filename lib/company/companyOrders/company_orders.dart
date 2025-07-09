import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/infinite_list_view.dart';
import 'package:future_hub/common/shared/widgets/labeled_icon_placeholder.dart';
import 'package:future_hub/common/shared/widgets/loading_indicator.dart';
import 'package:future_hub/puncher/components/past_order_card.dart';
import 'package:go_router/go_router.dart';

import 'cubit/cubit/company_order_cubit.dart';
import 'cubit/states/company_order_state.dart';
import 'model/order_company_model.dart';

class CompanyOrdersScreen extends StatelessWidget {
  const CompanyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future<void> _onLoadMore() async {
      // return BlocProvider.of<OrdersCubit>(context).loadOrders();
    }

    final theme = Theme.of(context);
    final t = AppLocalizations.of(context)!;

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
            mainAxisSize: MainAxisSize.min, // Adjusts size to content
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Purple Header Section
              // Container(
              //   width: double.infinity,
              //   decoration: const BoxDecoration(
              //     color: Colors.purple,
              //     borderRadius: BorderRadius.only(
              //       topLeft: Radius.circular(26.0),
              //       topRight: Radius.circular(26.0),
              //     ),
              //   ),
              //   padding: const EdgeInsets.symmetric(
              //       vertical: 20.0, horizontal: 30.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Icon(Icons.list_alt, color: Colors.white),
              //       const SizedBox(width: 10),
              //       Text(
              //         'الطلبات الأخيرة',
              //         style: theme.textTheme.titleLarge!
              //             .copyWith(color: Colors.white),
              //       ),
              //     ],
              //   ),
              // ),
              // const SizedBox(height: 16.0),

              // Orders List Section
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: BlocBuilder<CompanyOrderCubit, CompanyOrderState>(
                    builder: (context, state) {
                      if (state is CompanyOrderLoadingState &&
                          state.isFirstFetch) {
                        return const PaginatorLoadingIndicator();
                      }

                      List<CompanyOrder> orders = [];
                      bool canLoadMore = true;
                      if (state is CompanyOrderLoadingState) {
                        orders = state.oldOrders;
                      } else if (state is CompanyOrderLoadedState) {
                        orders = state.orders;
                        // canLoadMore = state.canLoadMore;
                      }

                      return InfiniteListView(
                        canLoadMore: canLoadMore,
                        empty: LabeledIconPlaceholder(
                          icon: SvgPicture.asset('assets/icons/no-orders.svg'),
                          label: t.there_are_no_orders,
                        ),
                        onLoadMore: _onLoadMore,
                        padding: EdgeInsets.zero,
                        itemCount: orders.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: GestureDetector(
                              onTap: () => context.push(
                                '/company/order-details',
                                extra: orders[index],
                              ),
                              child: PastOrderCard(
                                  order: orders[index],
                                  isLast: orders.last == orders[index]),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
