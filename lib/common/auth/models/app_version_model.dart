// To parse this JSON data, do
//
//     final appVersion = appVersionFromJson(jsonString);

import 'dart:convert';

AppVersion appVersionFromJson(String str) =>
    AppVersion.fromJson(json.decode(str));

class AppVersion {
  bool success;
  String message;
  Version version;

  AppVersion({
    required this.success,
    required this.message,
    required this.version,
  });

  factory AppVersion.fromJson(Map<String, dynamic> json) => AppVersion(
        success: json["success"],
        message: json["message"],
        version: Version.fromJson(json["data"]),
      );
}

class Version {
  String androidVersion;
  String appleVersion;

  Version({
    required this.androidVersion,
    required this.appleVersion,
  });

  factory Version.fromJson(Map<String, dynamic> json) => Version(
        androidVersion: json["android_version"],
        appleVersion: json["apple_version"],
      );
}
