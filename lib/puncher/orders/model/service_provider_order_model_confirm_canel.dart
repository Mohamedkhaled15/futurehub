// To parse this JSON data, do
//
//     final serviceProviderOrderConfirmCancelModel = serviceProviderOrderConfirmCancelModelFromJson(jsonString);

import 'dart:convert';

ServiceProviderOrderConfirmCancelModel
    serviceProviderOrderConfirmCancelModelFromJson(String str) =>
        ServiceProviderOrderConfirmCancelModel.fromJson(json.decode(str));

class ServiceProviderOrderConfirmCancelModel {
  bool? success;
  String? message;
  String? type;
  Data? data;

  ServiceProviderOrderConfirmCancelModel({
    this.success,
    this.message,
    this.type,
    this.data,
  });

  factory ServiceProviderOrderConfirmCancelModel.fromJson(
          Map<String, dynamic> json) =>
      ServiceProviderOrderConfirmCancelModel(
        type: json["type"],
        success: json["success"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );
}

class Data {
  int? id;
  String? driverName;
  String? driverImage;
  String? referenceNumber;
  int? status;
  num? totalPrice;
  String? createdAt;
  String? updatedAt;
  dynamic vehicleId;
  String? vehiclePlateNumbers;
  PlateLetterClass? plateLetters;
  String? vehicleBrand;
  String? vehicleModel;
  String? vehicleYear;
  num? totalQuantity;
  int? productsCount;
  String? fuelType;
  String? serviceName;
  String? serviceImage;
  List<Product>? products;

  Data({
    this.id,
    this.driverName,
    this.driverImage,
    this.referenceNumber,
    this.status,
    this.totalPrice,
    this.createdAt,
    this.updatedAt,
    this.productsCount,
    this.vehicleId,
    this.plateLetters,
    this.vehiclePlateNumbers,
    this.totalQuantity,
    this.vehicleBrand,
    this.vehicleModel,
    this.vehicleYear,
    this.fuelType,
    this.serviceName,
    this.serviceImage,
    this.products,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        driverName: json["driver_name"],
        driverImage: json["driver_image"],
        referenceNumber: json["reference_number"],
        status: json["status"],
        totalPrice: json["total_price"] is String
            ? num.tryParse(json["total_price"])
            : json["total_price"] as num?,
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        vehicleId: json["vehicle_id"],
        vehiclePlateNumbers: json["vehicle_plate_numbers"],
        plateLetters: json["plate_letters"] is Map<String, dynamic>
            ? PlateLetterClass.fromJson(json["plate_letters"])
            : null,
        productsCount: json["products_count"],
        vehicleBrand: json["vehicle_brand"],
        vehicleModel: json["vehicle_model"],
        vehicleYear: json["vehicle_year"],
        totalQuantity: json["total_quantity"],
        fuelType: json["fuel_type"],
        serviceName: json["service_name"],
        serviceImage: json["service_image"],

        // products: List<Product>.from(
        //     json["products"].map((x) => Product.fromJson(x))),
      );
}

class Product {
  int? id;
  Packing? title;
  num? price;
  String? sku;
  Packing? packing;
  String? image;

  Product({
    this.id,
    this.title,
    this.price,
    this.sku,
    this.packing,
    this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: Packing.fromJson(json["title"]),
        price: json["price"],
        sku: json["sku"],
        packing: Packing.fromJson(json["packing"]),
        image: json["image"],
      );
}

class Packing {
  String? en;
  String? ar;

  Packing({
    this.en,
    this.ar,
  });

  factory Packing.fromJson(Map<String, dynamic> json) => Packing(
        en: json["en"],
        ar: json["ar"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "ar": ar,
      };
}

class PlateLetterClass {
  String? en;
  String? ar;

  PlateLetterClass({
    this.en,
    this.ar,
  });

  factory PlateLetterClass.fromJson(Map<String, dynamic> json) =>
      PlateLetterClass(
        en: json["en"],
        ar: json["ar"],
      );
}
