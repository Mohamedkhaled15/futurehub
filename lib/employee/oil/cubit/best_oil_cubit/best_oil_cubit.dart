import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/shared/models/products.dart';
import 'package:future_hub/employee/oil/cubit/best_oil_cubit/best_oil_state.dart';

import '../../services/oil_service.dart';

class ProductsCubit extends Cubit<BestOilsState> {
  ProductsCubit() : super(BestOilsInitState());

  static ProductsCubit get(context) => BlocProvider.of(context);

  int page = 1;

  final _oilsService = OilService();

  Map<String, List<CompanyProduct>> oils = {
    'oilCoolants': [],
    'oilDifferential': [],
    'oilEngine': [],
    'oilPowerSteering': [],
    'oilTransferBox': [],
    'oilAutomaticTransmission': [],
    'oilManualTransmission': [],
  };

  Future<void> loadProducts(
      context, int brandModel, int carModel, int yearModel) async {
    if (state is BestOilsLoadingState) return;

    final currentState = state;

    Map<String, List<CompanyProduct>> oldOils = oils;
    if (currentState is BestOilsLoadedState) {
      oldOils = currentState.oils;
    }

    emit(
      BestOilsLoadingState(
        oldOils,
        isFirstFetch: false,
      ),
    );
    var newOils = await _oilsService.getBestOils(
        page: page,
        carModelId: carModel,
        brandModelId: brandModel,
        yearModelId: yearModel);
    page++;
    final products = (state as BestOilsLoadingState).oldOils;
    products["oilCoolants"] = newOils.data
        .where((oil) => oil.categories!.contains("oilCoolants"))
        .toList();
    products['oilDifferential'] = newOils.data
        .where((oil) => oil.categories!.contains("oilDifferential"))
        .toList();
    products['oilEngine'] = newOils.data
        .where((oil) => oil.categories!.contains("oilEngine"))
        .toList();

    products['oilPowerSteering'] = newOils.data
        .where((oil) => oil.categories!.contains("oilPowerSteering"))
        .toList();
    products['oilTransferBox'] = newOils.data
        .where((oil) => oil.categories!.contains("oilTransferBox"))
        .toList();
    products['oilAutomaticTransmission'] = newOils.data
        .where((oil) => oil.categories!.contains("oilAutomaticTransmission"))
        .toList();
    products['oilManualTransmission'] = newOils.data
        .where((oil) => oil.categories!.contains("oilManualTransmission"))
        .toList();
    emit(
      BestOilsLoadedState(
        oils: products,
        canLoadMore: newOils.hasMorePages,
      ),
    );
  }
}
