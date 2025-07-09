import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/models/order_model.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_card.dart';
import 'package:future_hub/common/shared/widgets/infinite_list_view.dart';
import 'package:future_hub/common/shared/widgets/loading_indicator.dart';
import 'package:future_hub/common/shared/widgets/price_text.dart';
import 'package:future_hub/company/coupons/cubit/coupons_cubit.dart';
import 'package:future_hub/company/coupons/cubit/coupons_states.dart';

class CouponsScreen extends StatefulWidget {
  const CouponsScreen({super.key});

  @override
  State<CouponsScreen> createState() => _CouponsScreenState();
}

class _CouponsScreenState extends State<CouponsScreen> {
  static const _discountTypePercentage = 0;

  Future<void> _onLoadMore() async {
    // return BlocProvider.of<CouponsCubit>(context).loadCoupons(context);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return BlocConsumer<CouponsCubit, CouponsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is CouponsLoadingState && state.isFirstFetch) {
          return const PaginatorLoadingIndicator();
        }
        List<Coupon> coupons = [];
        bool canLoadMore = true;

        if (state is CouponsLoadingState) {
          coupons = state.oldCoupons;
        } else if (state is CouponsLoadedState) {
          coupons = state.coupons;
          canLoadMore = state.canLoadMore;
        }
        return Scaffold(
          appBar: FutureHubAppBar(
            title: Text(t.coupons),
            context: context,
          ),
          body: Column(
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
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          t.coupons,
                          style: theme.textTheme.titleLarge,
                        ),
                        const SizedBox(width: 6.0),
                        //
                      ],
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
              ),
              Expanded(
                child: InfiniteListView(
                  canLoadMore: canLoadMore,
                  onLoadMore: _onLoadMore,
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  itemCount: coupons.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 12.0),
                      child: ChevronCard(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              coupons[index].title!,
                              style: theme.textTheme.bodyLarge!
                                  .copyWith(fontSize: 22),
                            ),
                            const SizedBox(height: 16.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      t.coupon_code,
                                      style:
                                          theme.textTheme.bodySmall!.copyWith(
                                        color: Palette.primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                    Text(
                                      coupons[index].code!,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 50,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        t.discount,
                                        style:
                                            theme.textTheme.bodySmall!.copyWith(
                                          color: Palette.primaryColor,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const SizedBox(height: 8.0),
                                      if (coupons[index].discountType ==
                                          _discountTypePercentage)
                                        Text(
                                          '%${coupons[index].discount}',
                                          style: theme.textTheme.bodyMedium,
                                        )
                                      else
                                        PriceText(
                                          price: coupons[index].discount ?? 0,
                                        ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      t.start_date,
                                      style:
                                          theme.textTheme.bodySmall!.copyWith(
                                        color: Palette.primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                    Text(
                                      coupons[index].startDate!,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      t.end_date,
                                      style:
                                          theme.textTheme.bodySmall!.copyWith(
                                        color: Palette.primaryColor,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                    Text(
                                      coupons[index].expireDate!,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
