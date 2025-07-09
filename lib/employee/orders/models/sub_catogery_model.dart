// To parse this JSON data, do
//
//     final servicesSubcategories = servicesSubcategoriesFromJson(jsonString);

import 'dart:convert';

ServicesSubcategories servicesSubcategoriesFromJson(String str) =>
    ServicesSubcategories.fromJson(json.decode(str));

class ServicesSubcategories {
  bool success;
  List<SubCatogeryModel> message;

  ServicesSubcategories({
    required this.success,
    required this.message,
  });

  factory ServicesSubcategories.fromJson(Map<String, dynamic> json) =>
      ServicesSubcategories(
        success: json["success"],
        message: List<SubCatogeryModel>.from(
            json["message"].map((x) => SubCatogeryModel.fromJson(x))),
      );
}

class SubCatogeryModel {
  int? id;
  SubTitle title;
  String? image;

  SubCatogeryModel({
    this.id,
    required this.title,
    this.image,
  });

  factory SubCatogeryModel.fromJson(Map<String, dynamic> json) =>
      SubCatogeryModel(
        id: json["id"],
        title: SubTitle.fromJson(json["title"]),
        image: json["image"],
      );
}

class SubTitle {
  String en;
  String ar;

  SubTitle({
    required this.en,
    required this.ar,
  });

  factory SubTitle.fromJson(Map<String, dynamic> json) => SubTitle(
        en: json["en"],
        ar: json["ar"],
      );
}
