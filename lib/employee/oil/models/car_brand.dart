// To parse this JSON data, do
//
//     final carBrand = carBrandFromJson(jsonString);

import 'dart:convert';

CarBrand carBrandFromJson(String str) => CarBrand.fromJson(json.decode(str));

class CarBrand {
  bool? success;
  String? message;
  List<Brand>? data;

  CarBrand({
    this.success,
    this.message,
    this.data,
  });

  factory CarBrand.fromJson(Map<String, dynamic> json) => CarBrand(
        success: json["success"],
        message: json["message"],
        data: List<Brand>.from(json["data"].map((x) => Brand.fromJson(x))),
      );
}

class Brand {
  int? id;
  Title? title;
  String? image;

  Brand({
    this.id,
    this.title,
    this.image,
  });

  factory Brand.fromJson(Map<String, dynamic> json) => Brand(
        id: json["id"],
        title: Title.fromJson(json["title"]),
        image: json["image"],
      );
}

class Title {
  String? en;
  String? ar;

  Title({
    this.en,
    this.ar,
  });

  factory Title.fromJson(Map<String, dynamic> json) => Title(
        en: json["en"],
        ar: json["ar"],
      );
}
