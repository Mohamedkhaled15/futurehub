import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/cubits/products_cubit/products_states.dart';
import 'package:future_hub/common/shared/models/products.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/infinite_list_view.dart';
import 'package:future_hub/common/shared/widgets/loading_indicator.dart';
import 'package:future_hub/company/products/widgets/product_card.dart';
import 'package:go_router/go_router.dart';

import '../../../common/shared/cubits/products_cubit/products_cubit.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  Future<void> _onLoadMore() async {
    // return BlocProvider.of<ProductsCubit>(context).loadProducts(context);
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return BlocBuilder<AuthCubit, AuthState>(
      builder: (context, authState) {
        final canUpdatePrice =
            (authState as AuthSignedIn).user.company?.canUpdatePrice;

        return BlocBuilder<ProductsCubit, ProductsStates>(
          builder: (context, state) {
            if (state is CompanyProductsLoadingState && state.isFirstFetch) {
              return const PaginatorLoadingIndicator();
            }
            List<CompanyProduct> products = [];
            bool canLoadMore = true;
            int total = 0;

            if (state is CompanyProductsLoadingState) {
              products = state.oldProducts;
              total = state.total;
            } else if (state is CompanyProductsLoadedState) {
              total = state.total;
              products = state.products;
              // canLoadMore = state.canLoadMore;
            }
            return Scaffold(
              appBar: FutureHubAppBar(
                title: Text(t.my_products),
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
                              t.products,
                              style: theme.textTheme.titleLarge,
                            ),
                            const SizedBox(width: 6.0),
                            Text(
                              '(${t.count_products(total)})',
                              style: theme.textTheme.titleMedium!
                                  .copyWith(color: Palette.greyColor.shade600),
                            ),
                          ],
                        ),
                        const SizedBox(height: 16.0),
                      ],
                    ),
                  ),
                  Expanded(
                    child: InfiniteListView(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      itemCount: products.length,
                      canLoadMore: canLoadMore,
                      onLoadMore: _onLoadMore,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12.0),
                          child: ProductCard(
                            onPressed: () => context.push(
                              '/company/product/${products[index].id}?company=$canUpdatePrice',
                              extra: products[index],
                            ),
                            product: products[index],
                            details: canUpdatePrice != true,
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
      },
    );
  }
}
