import 'dart:convert';

AboutCompany aboutCompanyFromJson(String str) =>
    AboutCompany.fromJson(json.decode(str));

class AboutCompany {
  bool success;
  String message;
  Data data;

  AboutCompany({
    required this.success,
    required this.message,
    required this.data,
  });

  factory AboutCompany.fromJson(Map<String, dynamic> json) => AboutCompany(
        success: json["success"] ?? false, // Handle null or missing boolean
        message: json["message"] ?? '', // Default empty string if null
        data: json["data"] != null ? Data.fromJson(json["data"]) : Data.empty(),
      );
}

class Data {
  String email;
  String phone;
  String whatsApp;
  String facebook;
  String twitter;
  String youTube;
  String linkedIn;
  String instagram;
  String snapchat;
  String about;
  String termsCondition;
  String privacy;
  String imagePath;
  int numberPoint;
  String excelUserUploadExample;

  Data({
    required this.email,
    required this.phone,
    required this.whatsApp,
    required this.facebook,
    required this.twitter,
    required this.youTube,
    required this.linkedIn,
    required this.instagram,
    required this.snapchat,
    required this.about,
    required this.termsCondition,
    required this.privacy,
    required this.imagePath,
    required this.numberPoint,
    required this.excelUserUploadExample,
  });

  // Default constructor to provide default values
  factory Data.empty() => Data(
        email: '',
        phone: '',
        whatsApp: '',
        facebook: '',
        twitter: '',
        youTube: '',
        linkedIn: '',
        instagram: '',
        snapchat: '',
        about: '',
        termsCondition: '',
        privacy: '',
        imagePath: '',
        numberPoint: 0,
        excelUserUploadExample: '',
      );

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        email: json["email"] ?? '', // Default empty string if null
        phone: json["phone"] ?? '',
        whatsApp: json["whatsApp"] ?? '',
        facebook: json["facebook"] ?? '',
        twitter: json["twitter"] ?? '',
        youTube: json["youTube"] ?? '',
        linkedIn: json["linkedIn"] ?? '',
        instagram: json["instagram"] ?? '',
        snapchat: json["snapchat"] ?? '',
        about: json["about"] ?? '',
        termsCondition: json["terms_condition"] ?? '',
        privacy: json["privacy"] ?? '',
        imagePath: json["imagePath"] ?? '',
        numberPoint: json["number_point"] ?? 0, // Default to 0 if null
        excelUserUploadExample: json["excel_user_upload_example"] ?? '',
      );
}
