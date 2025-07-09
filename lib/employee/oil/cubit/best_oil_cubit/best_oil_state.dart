import 'package:future_hub/common/shared/models/products.dart';

abstract class BestOilsState {}

class BestOilsInitState extends BestOilsState {}

class BestOilsLoadedState extends BestOilsState {
  final bool canLoadMore;
  final Map<String, List<CompanyProduct>> oils;
  BestOilsLoadedState({
    required this.oils,
    required this.canLoadMore,
  });
}

class BestOilsLoadingState extends BestOilsState {
  final Map<String, List<CompanyProduct>> oldOils;
  final bool isFirstFetch;

  BestOilsLoadingState(
    this.oldOils, {
    this.isFirstFetch = false,
  });
}
