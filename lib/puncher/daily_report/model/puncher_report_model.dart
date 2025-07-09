// To parse this JSON data, do
//
//     final userReport = userReportFromJson(jsonString);

import 'dart:convert';

UserReport userReportFromJson(String str) =>
    UserReport.fromJson(json.decode(str));

String userReportToJson(UserReport data) => json.encode(data.toJson());

class UserReport {
  int? ordersCount;
  num? totalQuantity;
  String? totalPrice;
  List<FuelDetail>? fuelDetails;

  UserReport({
    this.ordersCount,
    this.totalQuantity,
    this.totalPrice,
    this.fuelDetails,
  });

  factory UserReport.fromJson(Map<String, dynamic> json) => UserReport(
        ordersCount: json["orders_count"],
        totalQuantity: json["total_quantity"],
        totalPrice: json["total_price"],
        fuelDetails: json["fuel_details"] == null
            ? []
            : List<FuelDetail>.from(
                json["fuel_details"]!.map((x) => FuelDetail.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "orders_count": ordersCount,
        "total_quantity": totalQuantity,
        "total_price": totalPrice,
        "fuel_details": fuelDetails == null
            ? []
            : List<dynamic>.from(fuelDetails!.map((x) => x.toJson())),
      };
}

class FuelDetail {
  String? fuelType;
  num? totalQuantity;
  String? totalPrice;

  FuelDetail({
    this.fuelType,
    this.totalQuantity,
    this.totalPrice,
  });

  factory FuelDetail.fromJson(Map<String, dynamic> json) => FuelDetail(
        fuelType: json["fuel_type"],
        totalQuantity: json["total_quantity"],
        totalPrice: json["total_price"],
      );

  Map<String, dynamic> toJson() => {
        "fuel_type": fuelType,
        "total_quantity": totalQuantity,
        "total_price": totalPrice,
      };
}
