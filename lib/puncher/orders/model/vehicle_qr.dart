// To parse this JSON data, do
//
//     final vehicleQr = vehicleQrFromJson(jsonString);

import 'dart:convert';

VehicleQr vehicleQrFromJson(String str) => VehicleQr.fromJson(json.decode(str));

class VehicleQr {
  String type;
  String id;
  VehicleData data;

  VehicleQr({
    required this.type,
    required this.id,
    required this.data,
  });

  factory VehicleQr.fromJson(Map<String, dynamic> json) => VehicleQr(
        type: json["type"],
        id: json["id"],
        data: VehicleData.fromJson(json["data"]),
      );
}

class VehicleData {
  int id;
  PlateLetters plateLetters;
  String plateNumbers;
  String carType;
  String carBrand;
  String carModel;
  String manufactureYear;
  String fuelType;
  dynamic litrePrice; // Can be String or LitrePrice
  dynamic productId; // Can be int or ProductId
  String internalId;
  String other1;
  List<Driver> drivers;

  VehicleData({
    required this.id,
    required this.plateLetters,
    required this.plateNumbers,
    required this.carType,
    required this.carBrand,
    required this.carModel,
    required this.manufactureYear,
    required this.fuelType,
    required this.litrePrice,
    required this.productId,
    required this.internalId,
    required this.other1,
    required this.drivers,
  });

  factory VehicleData.fromJson(Map<String, dynamic> json) => VehicleData(
        id: json["id"],
        plateLetters: PlateLetters.fromJson(json["plate_letters"]),
        plateNumbers: json["plate_numbers"],
        carType: json["car_type"],
        carBrand: json["car_brand"],
        carModel: json["car_model"],
        manufactureYear: json["manufacture_year"],
        fuelType: json["fuel_type"],
        litrePrice: _parseLitrePrice(json["litre_price"]),
        productId: _parseProductId(json["product_id"]),
        internalId: json["internal_id"],
        other1: json["other_1"],
        drivers:
            List<Driver>.from(json["drivers"].map((x) => Driver.fromJson(x))),
      );
  static dynamic _parseLitrePrice(dynamic price) {
    if (price is String) {
      return price; // Return as String for Diesel
    } else if (price is Map<String, dynamic>) {
      return LitrePrice.fromJson(price); // Return as LitrePrice for Petrol
    }
    return null; // Fallback
  }

  // Helper method to parse productId dynamically
  static dynamic _parseProductId(dynamic id) {
    if (id is int) {
      return id; // Return as int for Diesel
    } else if (id is Map<String, dynamic>) {
      return ProductId.fromJson(id); // Return as ProductId for Petrol
    }
    return null; // Fallback
  }
}

class Driver {
  int id;
  int active;
  String branch;
  String name;
  String mobile;
  int companyId;
  String companyName;
  String nationalId;
  // num? walletLimit;
  String createdAt;
  num? walletAmount;
  num? pullLimit;
  int? ordersCount;
  String image;

  Driver({
    required this.id,
    required this.active,
    required this.branch,
    required this.name,
    required this.mobile,
    required this.companyId,
    required this.companyName,
    required this.nationalId,
    // this.walletLimit,
    required this.createdAt,
    this.walletAmount,
    this.pullLimit,
    this.ordersCount,
    required this.image,
  });

  factory Driver.fromJson(Map<String, dynamic> json) => Driver(
        id: json["id"],
        active: json["active"],
        branch: json["branch"],
        name: json["name"],
        mobile: json["mobile"],
        companyId: json["company_id"],
        companyName: json["company_name"],
        nationalId: json["national_id"],
        // walletLimit: _parseWalletLimit(
        //     json["wallet_limit"]), // Handle empty string or num
        createdAt: json["created_at"],
        walletAmount: num.tryParse(json["balance_fuel"]),
        pullLimit: num.tryParse(json["fuel_pull_limit"]),
        ordersCount: json["orders_count"],
        image: json["image"],
      );
  // static num? _parseWalletLimit(dynamic value) {
  //   if (value is num) {
  //     return value; // Return the num value if it's a num
  //   } else if (value == "" || value == null) {
  //     return null; // Return null if it's an empty string or null
  //   }
  //   return null; // Fallback for unexpected types
  // }
}

class PlateLetters {
  String en;
  String ar;

  PlateLetters({
    required this.en,
    required this.ar,
  });

  factory PlateLetters.fromJson(Map<String, dynamic> json) => PlateLetters(
        en: json["en"],
        ar: json["ar"],
      );
}

class LitrePrice {
  String gasoline91;
  String gasoline95;

  LitrePrice({
    required this.gasoline91,
    required this.gasoline95,
  });

  factory LitrePrice.fromJson(Map<String, dynamic> json) => LitrePrice(
        gasoline91: json["gasoline_91"],
        gasoline95: json["gasoline_95"],
      );

  Map<String, dynamic> toJson() => {
        "gasoline_91": gasoline91,
        "gasoline_95": gasoline95,
      };
}

class ProductId {
  int gasoline91;
  int gasoline95;

  ProductId({
    required this.gasoline91,
    required this.gasoline95,
  });

  factory ProductId.fromJson(Map<String, dynamic> json) => ProductId(
        gasoline91: json["gasoline_91"],
        gasoline95: json["gasoline_95"],
      );

  Map<String, dynamic> toJson() => {
        "gasoline_91": gasoline91,
        "gasoline_95": gasoline95,
      };
}
