// To parse this JSON data, do
//
//     final carYear = carYearFromJson(jsonString);

import 'dart:convert';

CarYear carYearFromJson(String str) => CarYear.fromJson(json.decode(str));

class CarYear {
  bool? success;
  String? message;
  List<Year>? data;

  CarYear({
    this.success,
    this.message,
    this.data,
  });

  factory CarYear.fromJson(Map<String, dynamic> json) => CarYear(
        success: json["success"],
        message: json["message"],
        data: List<Year>.from(json["data"].map((x) => Year.fromJson(x))),
      );
}

class Year {
  int? id;
  Title? title;
  String? image;

  Year({
    this.id,
    this.title,
    this.image,
  });

  factory Year.fromJson(Map<String, dynamic> json) => Year(
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
