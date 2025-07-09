import 'dart:convert';

CompanyVehiclesModel companyVehiclesModelFromJson(String str) =>
    CompanyVehiclesModel.fromJson(json.decode(str));

class CompanyVehiclesModel {
  List<Vehicles>? vehicles;

  CompanyVehiclesModel({
    this.vehicles,
  });
  factory CompanyVehiclesModel.fromJson(Map<String, dynamic> json) =>
      CompanyVehiclesModel(
        vehicles: List<Vehicles>.from(
            json["vehicles"].map((x) => Vehicles.fromJson(x))),
      );
}

class Vehicles {
  int? id;
  PlateLetters? plateLetters;
  String? plateNumbers;
  String? consumptionType;
  String? consumptionMethod;
  String? maxConsumption;
  String? carType;
  String? carBrand;
  String? carModel;
  String? manufactureYear;
  String? fuelType;
  String? internalId;
  String? installationType;
  String? consumptionRate;
  String? chassisNumber;
  String? other1;
  String? other2;

  Vehicles({
    this.id,
    this.plateLetters,
    this.plateNumbers,
    this.consumptionType,
    this.consumptionMethod,
    this.maxConsumption,
    this.carType,
    this.carBrand,
    this.carModel,
    this.manufactureYear,
    this.fuelType,
    this.internalId,
    this.installationType,
    this.consumptionRate,
    this.chassisNumber,
    this.other1,
    this.other2,
  });

  factory Vehicles.fromJson(Map<String, dynamic> json) => Vehicles(
        id: json["id"],
        plateLetters: PlateLetters.fromJson(json["plate_letters"]),
        plateNumbers: json["plate_numbers"],
        consumptionType: json["consumption_type"],
        consumptionMethod: json["consumption_method"],
        maxConsumption: json["max_consumption"],
        carType: json["car_type"],
        carBrand: json["car_brand"],
        carModel: json["car_model"],
        manufactureYear: json["manufacture_year"],
        fuelType: json["fuel_type"],
        internalId: json["internal_id"],
        installationType: json["installation_type"],
        consumptionRate: json["consumption_rate"],
        chassisNumber: json["chassis_number"],
        other1: json["other_1"],
        other2: json["other_2"],
      );
}

class PlateLetters {
  String? en;
  String? ar;

  PlateLetters({
    this.en,
    this.ar,
  });

  factory PlateLetters.fromJson(Map<String, dynamic> json) => PlateLetters(
        en: json["en"],
        ar: json["ar"],
      );
}
