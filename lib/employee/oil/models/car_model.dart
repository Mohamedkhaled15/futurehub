// To parse this JSON data, do
//
//     final carModel = carModelFromJson(jsonString);

import 'dart:convert';

CarModel carModelFromJson(String str) => CarModel.fromJson(json.decode(str));

class CarModel {
  bool? success;
  String? message;
  List<Model>? data;

  CarModel({
    this.success,
    this.message,
    this.data,
  });

  factory CarModel.fromJson(Map<String, dynamic> json) => CarModel(
        success: json["success"],
        message: json["message"],
        data: List<Model>.from(json["data"].map((x) => Model.fromJson(x))),
      );
}

class Model {
  int? id;
  Title? title;
  String? image;

  Model({
    this.id,
    this.title,
    this.image,
  });

  factory Model.fromJson(Map<String, dynamic> json) => Model(
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
