import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/models/order_model.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/infinite_list_view.dart';
import 'package:future_hub/common/shared/widgets/order_card_item.dart';
import 'package:future_hub/employee/orders/cubit/order_cubit.dart';
import 'package:future_hub/employee/orders/models/sub_catogery_model.dart';
import 'package:go_router/go_router.dart';

import '../../../common/shared/cubits/products_cubit/products_cubit.dart';
import '../../../common/shared/cubits/products_cubit/products_states.dart';
import '../../../common/shared/models/products.dart';
import '../../../common/shared/widgets/loading_indicator.dart';

class EmployeePuncherScreen extends StatefulWidget {
  const EmployeePuncherScreen(this.id,
      {required this.name, required this.categoryId, super.key});
  final int id;
  final String name;
  final int categoryId;
  @override
  State<EmployeePuncherScreen> createState() => _EmployeePuncherScreenState();
}

class _EmployeePuncherScreenState extends State<EmployeePuncherScreen> {
  int? selectedSubCategoryId;
  List<SubCatogeryModel> subcategories = [];
  SubTitle title = SubTitle(en: 'all', ar: 'الكل');
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    final orderCubit = context.read<OrderCubit>();
    final productCubit = context.read<ProductsCubit>();
    orderCubit.choosePuncher(widget.id);
    _loadDataInParallel(productCubit);
    selectedSubCategoryId = null;
    title = SubTitle(en: 'all', ar: 'الكل');
  }

  void _loadDataInParallel(ProductsCubit productCubit) async {
    await Future.wait([
      productCubit.loadSubcategories(widget.categoryId),
      productCubit.loadProducts(
        widget.id,
        refresh: true,
        categoryId: widget.categoryId,
      ),
    ]);
  }

  void _onSearch() {
    setState(() {
      // Trigger search with the current search term and selected subcategory
      context.read<ProductsCubit>().loadProducts(
            widget.id,
            refresh: true,
            categoryId: widget.categoryId,
            subCategoryId: selectedSubCategoryId,
            search: searchController.text,
          );
    });
  }

  void _onClearSearch() {
    setState(() {
      searchController.clear();
      context.read<ProductsCubit>().loadProducts(
            widget.id,
            refresh: true,
            categoryId: widget.categoryId,
            subCategoryId: selectedSubCategoryId,
          );
    });
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return BlocConsumer<ProductsCubit, ProductsStates>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is CompanyProductsLoadingState && state.isFirstFetch) {
          return const PaginatorLoadingIndicator();
        }

        List<CompanyProduct> products = [];
        ServicesBranchDeatils? selectedBranch;
        bool canLoadMore = true;

        if (state is CompanyProductsLoadingState) {
          products = state.oldProducts.toSet().toList();
        } else if (state is CompanyProductsLoadedState) {
          products = state.products.toSet().toList();
          selectedBranch = state.branchDeatils;
        }

        if (state is SubcategoriesLoadedState) {
          subcategories = [
            SubCatogeryModel(id: null, title: title),
            ...state.subCatogeries,
          ];
          selectedSubCategoryId ??= null; // Default selection is "All"
        }

        return Scaffold(
          backgroundColor: Palette.whiteColor,
          appBar: FutureHubAppBar(
            title: Text(
              widget.name,
              style: const TextStyle(
                fontSize: 22,
                color: Palette.blackColor,
                fontWeight: FontWeight.w900,
              ),
            ),
            isCart: false,
            context: context,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 16),
                // Subcategories Tabs
                SizedBox(
                  height: 40,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: subcategories.length,
                    separatorBuilder: (_, __) => const SizedBox(width: 8),
                    itemBuilder: (context, index) {
                      final subcategory = subcategories[index];
                      final isSelected =
                          subcategory.id == selectedSubCategoryId;
                      return GestureDetector(
                        onTap: () {
                          searchController.clear();
                          setState(() {
                            selectedSubCategoryId = subcategory.id;
                            title = subcategory.title;
                          });
                          context.read<ProductsCubit>().loadProducts(
                                widget.id,
                                refresh: true,
                                categoryId: widget.categoryId,
                                subCategoryId: selectedSubCategoryId,
                                // search: searchController.text,
                              );
                        },
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? const Color(0xFF55217F)
                                : const Color(0xFFF4F4F4).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              subcategory.title.ar,
                              style: TextStyle(
                                fontSize: 14,
                                color: isSelected
                                    ? Colors.white
                                    : const Color(0xff505050).withOpacity(0.5),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 25),
                // Search Input
                TextField(
                  controller: searchController,
                  decoration: InputDecoration(
                    hintText: t.search,
                    prefixIcon: const Icon(Icons.search),
                    suffixIcon: searchController.text.isNotEmpty
                        ? IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: _onClearSearch,
                          )
                        : null,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Palette.greyColor),
                    ),
                  ),
                  onSubmitted: (_) => _onSearch(),
                  onChanged: (value) {
                    if (value.isEmpty) {
                      _onClearSearch();
                    }
                    // else {
                    //   _onSearch();
                    // }
                  },
                ),
                const SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    // '${CacheManager.locale! == const Locale("en") ? title.en : title.ar} ${products.length} '
                    t.services,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
                const SizedBox(height: 25),
                BlocBuilder<AuthCubit, AuthState>(
                  builder: (context, state) {
                    final user = (state as AuthSignedIn).user;
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 0),
                        child: InfiniteListView(
                          itemCount: products.length,
                          canLoadMore: canLoadMore,
                          onLoadMore: () => context
                              .read<ProductsCubit>()
                              .loadProducts(widget.id,
                                  categoryId: widget.categoryId,
                                  subCategoryId: selectedSubCategoryId,
                                  search: searchController.text),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5.0, vertical: 0),
                              child: InkWell(
                                onTap: () {
                                  context.push(
                                    '/company/product/${products[index].id}?company=false',
                                    extra: {
                                      'user': user, // Pass the user model
                                      'selectedPunchers': selectedBranch,
                                      'product': products[index],
                                    },
                                  );
                                },
                                child: OrderCardItem(
                                  showQuantity: false,
                                  showPrice: true,
                                  product: OrderProducts(
                                    id: int.parse(
                                        products[index].id.toString()),
                                    product: products[index],
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
