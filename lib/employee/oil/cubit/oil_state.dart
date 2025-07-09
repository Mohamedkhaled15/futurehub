import 'package:equatable/equatable.dart';
import 'package:future_hub/employee/oil/models/car_brand.dart';
import 'package:future_hub/employee/oil/models/car_model.dart';
import 'package:future_hub/employee/oil/models/car_year.dart';

abstract class OilState extends Equatable {}

class OilSearchState extends OilState {
  final List<Brand> brands;
  final List<Model> models;
  final List<Year> years;
  final bool isLoadingBrands;
  final bool isLoadingModels;
  final bool isLoadingYears;
  final int? chosenBrand;

  OilSearchState({
    this.brands = const [],
    this.models = const [],
    this.years = const [],
    this.isLoadingBrands = true,
    this.isLoadingModels = true,
    this.isLoadingYears = true,
    this.chosenBrand,
  });

  OilSearchState copyWith({
    List<Brand>? brands,
    List<Model>? models,
    List<Year>? years,
    bool? isLoadingBrands,
    bool? isLoadingModels,
    bool? isLoadingYears,
    int? chosenBrand,
  }) {
    return OilSearchState(
      brands: brands ?? this.brands,
      models: models ?? this.models,
      years: years ?? this.years,
      isLoadingBrands: isLoadingBrands ?? this.isLoadingBrands,
      isLoadingModels: isLoadingModels ?? this.isLoadingModels,
      chosenBrand: chosenBrand ?? this.chosenBrand,
    );
  }

  @override
  List<Object?> get props => [
        brands,
        models,
        years,
        isLoadingBrands,
        isLoadingModels,
        isLoadingYears,
        chosenBrand,
      ];
}
