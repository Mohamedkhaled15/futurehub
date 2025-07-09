// To parse this JSON data, do
//
//     final servicesCategories = servicesCategoriesFromJson(jsonString);

import 'dart:convert';

ServicesCategories servicesCategoriesFromJson(String str) =>
    ServicesCategories.fromJson(json.decode(str));

class ServicesCategories {
  bool success;
  List<Categories> categories;

  ServicesCategories({
    required this.success,
    required this.categories,
  });

  factory ServicesCategories.fromJson(Map<String, dynamic> json) =>
      ServicesCategories(
        success: json["success"],
        categories: List<Categories>.from(
            json["message"].map((x) => Categories.fromJson(x))),
      );
}

class Categories {
  int id;
  Title title;
  String image;

  Categories({
    required this.id,
    required this.title,
    required this.image,
  });

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        id: json["id"],
        title: Title.fromJson(json["title"]),
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
}
