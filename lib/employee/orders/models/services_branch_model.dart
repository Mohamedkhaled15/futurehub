// To parse this JSON data, do
//
//     final servicesPuncherBranch = servicesPuncherBranchFromJson(jsonString);

import 'dart:convert';

ServicesPuncherBranch servicesPuncherBranchFromJson(String str) =>
    ServicesPuncherBranch.fromJson(json.decode(str));

class ServicesPuncherBranch {
  bool success;
  List<ServicesPuncher> servicesPuncher;

  ServicesPuncherBranch({
    required this.success,
    required this.servicesPuncher,
  });

  factory ServicesPuncherBranch.fromJson(Map<String, dynamic> json) =>
      ServicesPuncherBranch(
        success: json["success"],
        servicesPuncher: List<ServicesPuncher>.from(
            json["message"].map((x) => ServicesPuncher.fromJson(x))),
      );
}

class ServicesPuncher {
  int? id;
  Title? title;
  int? serviceProviderId;
  String? serviceProviderName;
  Title? address;
  String? latitude;
  String? longitude;
  String? city;
  String? image;
  String? distanceInKm;

  ServicesPuncher({
    this.id,
    this.title,
    this.serviceProviderId,
    this.serviceProviderName,
    this.address,
    this.latitude,
    this.longitude,
    this.city,
    this.image,
    this.distanceInKm,
  });

  factory ServicesPuncher.fromJson(Map<String, dynamic> json) =>
      ServicesPuncher(
        id: json["id"],
        title: Title.fromJson(json["title"]),
        serviceProviderId: json["service_provider_id"],
        serviceProviderName: json["service_provider_name"],
        address: _parseAddress(json["address"]),
        latitude: json["latitude"],
        longitude: json["longitude"],
        distanceInKm: json["distance"],
        city: json["city"],
        image: json["image"],
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
