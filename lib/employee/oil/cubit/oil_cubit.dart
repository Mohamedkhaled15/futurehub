import 'package:bloc/bloc.dart';
import 'package:future_hub/employee/oil/cubit/oil_state.dart';
import 'package:future_hub/employee/oil/services/oil_service.dart';

class OilCubit extends Cubit<OilState> {
  OilCubit() : super(OilSearchState());

  final _oilService = OilService();

  Future<void> init() async {
    await fetchCarBrands();
    await fetchCarYears();
  }

  Future<void> chooseCarBrand(int? brandId) async {
    if (state is! OilSearchState) return;

    final current = state as OilSearchState;

    if (current.chosenBrand == brandId) return;

    if (brandId == null) {
      return emit(
        current.copyWith(
          models: const [],
          chosenBrand: brandId,
        ),
      );
    }

    emit(
      current.copyWith(
        models: [],
        isLoadingModels: true,
        chosenBrand: brandId,
      ),
    );

    return fetchCarModels(brandId);
  }

  Future<void> fetchCarBrands() async {
    if (state is! OilSearchState) return;

    final current = state as OilSearchState;
    final brands = await _oilService.getCarBrands();

    emit(
      current.copyWith(
        brands: brands,
        isLoadingBrands: false,
      ),
    );
  }

  Future<void> fetchCarModels(int brandId) async {
    if (state is! OilSearchState) return;

    final current = state as OilSearchState;
    final models = await _oilService.getCarModels(brand: brandId);

    emit(
      current.copyWith(
        models: models,
        isLoadingModels: false,
      ),
    );
  }

  Future<void> fetchCarYears() async {
    if (state is! OilSearchState) return;

    final current = state as OilSearchState;
    final years = await _oilService.getCarYears();

    emit(
      current.copyWith(
        years: years,
        isLoadingYears: false,
      ),
    );
  }
}
