import 'dart:convert';

CheckUser checkUserFromJson(String str) => CheckUser.fromJson(json.decode(str));

class CheckUser {
  bool success;
  String message;
  Data? data;

  CheckUser({
    required this.success,
    required this.message,
    this.data,
  });

  factory CheckUser.fromJson(Map<String, dynamic> json) => CheckUser(
        success: json["success"] ?? false, // Handle null for 'success'
        message: json["message"] ?? '', // Handle null for 'message'
        data: json["data"] != null
            ? Data.fromJson(json["data"])
            : null, // Safely parse 'data'
      );
}

class Data {
  UserCheck? user;

  Data({
    this.user,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: json["user"] != null
            ? UserCheck.fromJson(json["user"])
            : null, // Safely parse 'user'
      );
}

class UserCheck {
  int? otp;
  UserCheck({
    this.otp,
  });

  factory UserCheck.fromJson(Map<String, dynamic> json) => UserCheck(
        otp: json["otp"], // Allow null
      );
}
