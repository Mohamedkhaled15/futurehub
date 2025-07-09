// To parse this JSON data, do
//
//     final servicesBranchDeatils = servicesBranchDeatilsFromJson(jsonString);

import 'dart:convert';

import 'package:equatable/equatable.dart';

ServicesBranchDeatils servicesBranchDeatilsFromJson(String str) =>
    ServicesBranchDeatils.fromJson(json.decode(str));

class ServicesBranchDeatils {
  Data data;

  ServicesBranchDeatils({
    required this.data,
  });

  factory ServicesBranchDeatils.fromJson(Map<String, dynamic> json) =>
      ServicesBranchDeatils(
        data: Data.fromJson(json["data"]),
      );
}

class Data {
  int id;
  Title title;
  int serviceProviderId;
  String serviceProviderName;
  Title? address;
  String latitude;
  String longitude;
  String city;
  String image;
  List<CompanyProduct> services;

  Data({
    required this.id,
    required this.title,
    required this.serviceProviderId,
    required this.serviceProviderName,
    this.address,
    required this.latitude,
    required this.longitude,
    required this.city,
    required this.image,
    required this.services,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        title: Title.fromJson(json["title"]),
        serviceProviderId: json["service_provider_id"],
        serviceProviderName: json["service_provider_name"],
        address: _parseAddress(json["address"]),
        latitude: json["latitude"],
        longitude: json["longitude"],
        city: json["city"],
        image: json["image"],
        services: List<CompanyProduct>.from(
            json["services"].map((x) => CompanyProduct.fromJson(x))),
      );
  static Title? _parseAddress(dynamic addressData) {
    if (addressData is Map<String, dynamic>) {
      return Title.fromJson(addressData);
    } else if (addressData is List) {
      return null; // Return null for empty list case
    }
    return null;
  }
}

class CompanyProduct {
  int id;
  Title title;
  String price;
  String image;
  Title? description;
  List<Category>? categories;

  CompanyProduct({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    this.description,
    this.categories,
  });

  factory CompanyProduct.fromJson(Map<String, dynamic> json) => CompanyProduct(
        id: json["id"],
        title: Title.fromJson(json["title"]),
        description: json["description"] == null
            ? null
            : Title.fromJson(json["description"]),
        price: json["price"],
        image: json["image"],
      );
}

class Title {
  String en;
  String ar;

  Title({
    required this.en,
    required this.ar,
  });

  factory Title.fromJson(Map<String, dynamic> json) => Title(
        en: json["en"],
        ar: json["ar"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "ar": ar,
      };
}

// class CompanyProduct {
//   int id;
//   String? imagePath;
//   String price;
//   String? description;
//   String? category;
//   Packing? packing;
//   Packing? title;
//   List<Category>? categories;
//
//   CompanyProduct({
//     required this.id,
//     this.title,
//     required this.price,
//     this.imagePath,
//     this.description,
//     this.packing,
//     this.category,
//     this.categories,
//   });
//
//   factory CompanyProduct.fromJson(Map<String, dynamic> json) => CompanyProduct(
//         id: json["id"],
//         title: Packing.fromJson(json["title"]),
//         price: json["price"],
//         imagePath: json["image"],
//         description: json["sku"], // Assuming SKU is treated as a description
//         packing: Packing.fromJson(json["packing"]),
//         category: json["category"] ?? "oilCoolants",
//       );
// }
//
// class Packing {
//   String? en;
//   String? ar;
//
//   Packing({
//     this.en,
//     this.ar,
//   });
//
//   factory Packing.fromJson(Map<String, dynamic> json) => Packing(
//         en: json["en"],
//         ar: json["ar"],
//       );
// }

class Category extends Equatable {
  final String id;
  final String title;

  const Category({required this.id, required this.title});

  @override
  List<Object?> get props => [id, title];
}
