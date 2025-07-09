// To parse this JSON data, do
//
//     final info = infoFromJson(jsonString);

import 'dart:convert';

PrivacyModel infoFromJson(String str) =>
    PrivacyModel.fromJson(json.decode(str));

class PrivacyModel {
  bool success;
  String message;
  String data;
  PrivacyModel({
    required this.success,
    required this.message,
    required this.data,
  });
  factory PrivacyModel.fromJson(Map<String, dynamic> json) => PrivacyModel(
        success: json["success"],
        message: json["message"],
        data: json["data"],
      );
}
