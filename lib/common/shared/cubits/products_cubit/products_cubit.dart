import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/shared/cubits/products_cubit/products_states.dart';

import '../../models/products.dart';
import '../../services/products_services.dart';

class ProductsCubit extends Cubit<ProductsStates> {
  ProductsCubit() : super(CompanyProductsInitState());

  static ProductsCubit get(context) => BlocProvider.of(context);

  int page = 1;

  final _productsService = ProductsService();

  List<CompanyProduct> companyProducts = [];
  Future<void> loadProducts(int branchId,
      {bool refresh = false,
      required int categoryId,
      int? subCategoryId,
      String? search}) async {
    if (state is CompanyProductsLoadingState) return;

    List<CompanyProduct> oldProducts = [];

    // Keep old products only if not refreshing
    if (state is CompanyProductsLoadedState && !refresh) {
      oldProducts = (state as CompanyProductsLoadedState).products;
    }
    emit(
      CompanyProductsLoadingState(
        oldProducts,
        isFirstFetch: refresh || oldProducts.isEmpty,
        total: oldProducts.length,
      ),
    );

    try {
      // Fetch new products
      final newProducts = await _productsService.fetchBranchProducts(
          branchId: branchId,
          categoryId: categoryId,
          subCategoryId: subCategoryId,
          search: search);

      // If refreshing, start with a clean list
      companyProducts = refresh
          ? newProducts.data.services
          : [...oldProducts, ...newProducts.data.services];

      emit(
        CompanyProductsLoadedState(
          products: companyProducts,
          total: companyProducts.length,
          branchDeatils: newProducts,
        ),
      );
    } catch (error) {
      emit(CompanyProductsErrorState(error.toString()));
    }
  }

  Future<void> loadSubcategories(int categoryId) async {
    try {
      emit(LoadingState());
      final subcategories = await _productsService.fetchServiceSubcategories(
        categoryId: categoryId,
      );
      emit(SubcategoriesLoadedState(subcategories.message));
    } catch (e) {
      emit(CompanyProductsErrorState(e.toString()));
    }
  }

  // Future<void> updateProduct({
  //   required double price,
  //   required String productId,
  //   required BuildContext context,
  // }) async {
  //   final bool canLoadMore = state is! CompanyProductsLoadedState ||
  //       (state as CompanyProductsLoadedState).canLoadMore;
  //   final int total = (state is CompanyProductsLoadedState)
  //       ? (state as CompanyProductsLoadedState).total
  //       : (state as CompanyProductsLoadingState).total;
  //
  //   emit(UpdateProductLoadingState());
  //   await runFetch(
  //     context: context,
  //     fetch: () async {
  //       await _productsService.updateProduct(
  //         price: price,
  //         productId: productId,
  //       );
  //     },
  //   );
  //
  //   companyProducts.firstWhere((product) => product.id == productId).price =
  //       price;
  //
  //   emit(
  //     CompanyProductsLoadedState(
  //       products: companyProducts,
  //       canLoadMore: canLoadMore,
  //       total: total,
  //     ),
  //   );
  //
  //   if (context.mounted) {
  //     final t = AppLocalizations.of(context)!;
  //     showToast(
  //         text: t.product_updated_successfully, state: ToastStates.success);
  //   }
  // }

  Set<Category> categories = {};

  int categoryIndex = 0;

  changeCategory(int index) {
    categoryIndex = index;
  }
}
