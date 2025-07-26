import 'package:equatable/equatable.dart';

import 'company.dart'; // Update this import to point to the correct Company model

class User extends Equatable {
  final int? id;
  final String? type;
  final String? name;
  final String? username;
  final String? mobile;
  final int? firstLogin;
  final DateTime? firstLoginAt;
  final int? active;
  final int? companyId;
  final int? puncherId;
  final dynamic balance;
  final dynamic balanceFuel;
  final dynamic balanceProduct;
  final dynamic balanceService;
  final String? fuelPullLimit;
  final String? productPullLimit;
  final String? servicePullLimit;
  final num? deposit;
  final num? withdrawal;
  final int? isMeterNumberRequired;
  final int? isMeterImageRequired;
  final int? points;
  final String? image;
  final dynamic lang;
  final String? apiToken;
  final Company? company;
  final List<String>? puncherTypes;
  final List<Vehicle>? vehicles;

  final String? email;
  final int? secondsPerRequest;
  final int? scanPlateByAi;

  const User({
    this.id,
    this.type,
    this.name,
    this.username,
    this.mobile,
    this.firstLogin,
    this.firstLoginAt,
    this.active,
    this.companyId,
    this.puncherId,
    this.balance,
    this.balanceFuel,
    this.balanceProduct,
    this.balanceService,
    this.fuelPullLimit,
    this.productPullLimit,
    this.servicePullLimit,
    this.deposit,
    this.withdrawal,
    this.points,
    this.image,
    this.lang,
    this.apiToken,
    this.email,
    this.isMeterNumberRequired,
    this.isMeterImageRequired,
    this.vehicles,
    this.puncherTypes,
    this.company,
    this.secondsPerRequest,
    this.scanPlateByAi,
  });

  /// Parsing JSON into the `User` object
  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        type: json["type"],
        name: json["name"],
        email: json["email"],
        username: json["username"],
        mobile: json["mobile"],
        firstLogin: json["first_login"],
        firstLoginAt: (json["first_login_at"] != null &&
                json["first_login_at"].isNotEmpty)
            ? DateTime.tryParse(json["first_login_at"])
            : null,
        active: json["active"],
        companyId: json["company_id"] is int
            ? json["company_id"] as int
            : (json["company_id"] is String && json["company_id"].isNotEmpty
                ? int.tryParse(json["company_id"])
                : null),
        puncherId: json["puncher_id"] is int
            ? json["puncher_id"] as int
            : (json["puncher_id"] is String && json["puncher_id"].isNotEmpty
                ? int.tryParse(json["puncher_id"])
                : null),
        balance: json["balance"]?.toString() ?? '',
        balanceFuel: json["balance_fuel"]?.toString() ?? '',
        // balanceProduct: json["balance_product"],
        balanceService: json["balance_service"]?.toString() ?? '',
        fuelPullLimit: json["fuel_pull_limit"],
        // productPullLimit: json["product_pull_limit"],
        servicePullLimit: json["service_pull_limit"],
        deposit: json["deposit"],
        withdrawal: json["withdrawal"],
        points: json["points"],
        image: json["image"],
        lang: json["lang"],
        apiToken: json["api_token"],
        isMeterNumberRequired: json["is_meter_number_required"],
        isMeterImageRequired: json["is_meter_image_required"],
        puncherTypes: json["puncher_types"] == null
            ? []
            : List<String>.from(json["puncher_types"]!.map((x) => x)),
        vehicles: json["vehicles"] != null
            ? List<Vehicle>.from(
                json["vehicles"].map((x) => Vehicle.fromJson(x)))
            : null,

        // If null, set vehicles to null
        company: json["company_user"] != null
            ? Company.fromJson(json["company_user"])
            : null,
        secondsPerRequest: json["seconds_per_request"],
        scanPlateByAi: json["scan_plate_by_ai"],
      );

  /// Copy constructor for immutability
  User copyWith(
      {final int? id,
      final String? type,
      final String? name,
      final String? username,
      final String? mobile,
      final int? firstLogin,
      final DateTime? firstLoginAt,
      final int? active,
      final int? companyId,
      final int? puncherId,
      String? balance,
      String? balanceFuel,
      String? balanceProduct,
      String? balanceService,
      String? fuelPullLimit,
      String? productPullLimit,
      String? servicePullLimit,
      final int? deposit,
      final int? withdrawal,
      final int? points,
      final String? email,
      final String? image,
      final dynamic lang,
      final int? isMeterNumberRequired,
      final int? isMeterImageRequired,
      final List<String>? puncherTypes,
      List<Vehicle>? vehicles,
      final String? apiToken,
      Company? company,
      final int? secondsPerRequest,
      final int? scanPlateByAi}) {
    return User(
        id: id ?? this.id,
        name: name ?? this.name,
        mobile: mobile ?? this.mobile,
        image: image ?? this.image,
        type: type ?? this.type,
        email: email ?? this.email,
        username: username ?? this.username,
        active: active ?? this.active,
        balance: balance ?? this.balance,
        balanceFuel: balanceFuel ?? this.balanceFuel,
        balanceProduct: balanceProduct ?? this.balanceProduct,
        balanceService: balanceService ?? this.balanceService,
        fuelPullLimit: fuelPullLimit ?? this.fuelPullLimit,
        productPullLimit: productPullLimit ?? this.productPullLimit,
        servicePullLimit: servicePullLimit ?? this.servicePullLimit,
        points: points ?? this.points,
        company: company ?? this.company,
        firstLoginAt: firstLoginAt ?? this.firstLoginAt,
        apiToken: apiToken ?? this.apiToken,
        companyId: companyId ?? this.companyId,
        deposit: deposit ?? this.deposit,
        firstLogin: firstLogin ?? this.firstLogin,
        lang: lang ?? this.lang,
        puncherTypes: puncherTypes ?? this.puncherTypes,
        puncherId: puncherId ?? this.puncherId,
        isMeterImageRequired:
            isMeterImageRequired ?? this.isMeterNumberRequired,
        isMeterNumberRequired:
            isMeterNumberRequired ?? this.isMeterNumberRequired,
        vehicles: vehicles ?? this.vehicles,
        withdrawal: withdrawal ?? this.withdrawal,
        secondsPerRequest: secondsPerRequest ?? this.secondsPerRequest,
        scanPlateByAi: scanPlateByAi ?? this.scanPlateByAi);
  }

  @override
  List<Object?> get props => [
        id,
        name,
        mobile,
        image,
        type,
        username,
        active,
        points,
        company,
        firstLoginAt,
        apiToken,
        companyId,
        deposit,
        firstLogin,
        lang,
        puncherId,
        withdrawal,
        isMeterImageRequired,
        isMeterNumberRequired,
        vehicles,
        balance,
        balanceFuel,
        balanceProduct,
        balanceService,
        fuelPullLimit,
        productPullLimit,
        servicePullLimit,
        secondsPerRequest,
        scanPlateByAi
      ];
}

class Vehicle {
  int id;
  PlateLetters plateLetters;
  String plateNumbers;
  String carType;
  String carBrand;
  String carModel;
  String manufactureYear;
  String fuelType;
  String internalId;
  String other1;

  Vehicle({
    required this.id,
    required this.plateLetters,
    required this.plateNumbers,
    required this.carType,
    required this.carBrand,
    required this.carModel,
    required this.manufactureYear,
    required this.fuelType,
    required this.internalId,
    required this.other1,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) => Vehicle(
        id: json["id"],
        plateLetters: PlateLetters.fromJson(json["plate_letters"]),
        plateNumbers: json["plate_numbers"],
        carType: json["car_type"],
        carBrand: json["car_brand"],
        carModel: json["car_model"],
        manufactureYear: json["manufacture_year"],
        fuelType: json["fuel_type"],
        internalId: json["internal_id"],
        other1: json["other_1"],
      );
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
