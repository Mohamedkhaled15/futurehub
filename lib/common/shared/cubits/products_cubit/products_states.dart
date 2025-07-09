import 'package:future_hub/common/shared/models/products.dart';
import 'package:future_hub/employee/orders/models/sub_catogery_model.dart';

abstract class ProductsStates {}

class CompanyProductsInitState extends ProductsStates {}

class CompanyProductsLoadedState extends ProductsStates {
  final List<CompanyProduct> products;
  final int total;
  ServicesBranchDeatils branchDeatils;

  CompanyProductsLoadedState({
    required this.products,
    required this.total,
    required this.branchDeatils,
  });
}

class CompanyProductsLoadingState extends ProductsStates {
  final List<CompanyProduct> oldProducts;
  final bool isFirstFetch;
  final int total;

  CompanyProductsLoadingState(
    this.oldProducts, {
    required this.isFirstFetch,
    required this.total,
  });
}

class CompanyProductsErrorState extends ProductsStates {
  final String error;

  CompanyProductsErrorState(this.error);
}

class LoadingState extends ProductsStates {}

class SubcategoriesLoadedState extends ProductsStates {
  final List<SubCatogeryModel> subCatogeries;

  SubcategoriesLoadedState(this.subCatogeries);
}
