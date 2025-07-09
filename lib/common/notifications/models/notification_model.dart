import 'dart:convert';

NotifactionApi notifactionFromJson(String str) =>
    NotifactionApi.fromJson(json.decode(str));

class NotifactionApi {
  bool success;
  String message;
  List<NotifactionData> data;

  NotifactionApi({
    required this.success,
    required this.message,
    required this.data,
  });

  factory NotifactionApi.fromJson(Map<String, dynamic> json) => NotifactionApi(
        success: json["success"] ?? false, // Default to false if null
        message: json["message"] ?? '', // Default to empty string if null
        data: json["data"] != null
            ? List<NotifactionData>.from(
                json["data"].map((x) => NotifactionData.fromJson(x)))
            : [], // Default to an empty list if data is null
      );
}

class NotifactionData {
  int id;
  Message title;
  Message message;
  int seen;
  String createdAt;
  String updatedAt;

  NotifactionData({
    required this.id,
    required this.title,
    required this.message,
    required this.seen,
    required this.createdAt,
    required this.updatedAt,
  });

  factory NotifactionData.fromJson(Map<String, dynamic> json) =>
      NotifactionData(
        id: json["id"] ?? 0, // Default to 0 if id is missing or null
        title: json["title"] != null
            ? Message.fromJson(json["title"])
            : Message.empty(),
        message: json["message"] != null
            ? Message.fromJson(json["message"])
            : Message.empty(),
        seen: json["seen"] ?? 0, // Default to 0 if seen is missing or null
        createdAt: json["created_at"] ??
            '', // Default to empty string if createdAt is missing or null
        updatedAt: json["updated_at"] ??
            '', // Default to empty string if updatedAt is missing or null
      );
}

class Message {
  String en;
  String ar;

  Message({
    required this.en,
    required this.ar,
  });

  // Empty constructor to handle null fields
  factory Message.empty() => Message(en: '', ar: '');

  factory Message.fromJson(Map<String, dynamic> json) => Message(
        en: json["en"] ?? '', // Default to empty string if "en" is null
        ar: json["ar"] ?? '', // Default to empty string if "ar" is null
      );
}
