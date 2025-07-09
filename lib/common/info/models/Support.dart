import 'dart:convert';

Support supportFromJson(String str) => Support.fromJson(json.decode(str));

class Support {
  bool success;
  String message;
  SupportData data;

  Support({
    required this.success,
    required this.message,
    required this.data,
  });

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        success: json["success"] ?? false, // Handle null success
        message: json["message"] ?? '', // Handle null message
        data: json["data"] != null
            ? SupportData.fromJson(json["data"])
            : SupportData.empty(), // Handle null data
      );
}

class SupportData {
  String email;
  String phone;
  String whatsApp;
  String facebook;
  String twitter;
  String youTube;
  String linkedIn;
  String instagram;

  SupportData({
    required this.email,
    required this.phone,
    required this.whatsApp,
    required this.facebook,
    required this.twitter,
    required this.youTube,
    required this.linkedIn,
    required this.instagram,
  });

  // Empty factory constructor to provide default values
  factory SupportData.empty() => SupportData(
        email: '',
        phone: '',
        whatsApp: '',
        facebook: '',
        twitter: '',
        youTube: '',
        linkedIn: '',
        instagram: '',
      );

  factory SupportData.fromJson(Map<String, dynamic> json) => SupportData(
        email: json["email"] ?? '', // Handle null email
        phone: json["phone"] ?? '', // Handle null phone
        whatsApp: json["whatsApp"] ?? '', // Handle null whatsApp
        facebook: json["facebook"] ?? '', // Handle null facebook
        twitter: json["twitter"] ?? '', // Handle null twitter
        youTube: json["youTube"] ?? '', // Handle null youTube
        linkedIn: json["linkedIn"] ?? '', // Handle null linkedIn
        instagram: json["instagram"] ?? '', // Handle null instagram
      );
}
