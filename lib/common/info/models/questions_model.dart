import 'dart:convert';

Questions questionsFromJson(String str) => Questions.fromJson(json.decode(str));

class Questions {
  bool success;
  String message;
  QuestionData data;

  Questions({
    required this.success,
    required this.message,
    required this.data,
  });

  factory Questions.fromJson(Map<String, dynamic> json) => Questions(
        success: json["success"] ?? false, // handle null success
        message: json["message"] ?? '', // handle null message
        data: json["data"] != null
            ? QuestionData.fromJson(json["data"])
            : QuestionData.empty(), // handle null data
      );
}

class QuestionData {
  List<Datum> data;
  Pagination pagination;

  QuestionData({
    required this.data,
    required this.pagination,
  });

  // Empty factory constructor to provide default values
  factory QuestionData.empty() => QuestionData(
        data: [], // Default empty list for data
        pagination: Pagination.empty(), // Default empty pagination
      );

  factory QuestionData.fromJson(Map<String, dynamic> json) => QuestionData(
        data: json["data"] != null && json["data"]["data"] != null
            ? List<Datum>.from(json["data"]["data"]
                .map((dynamic x) => Datum.fromJson(x as Map<String, dynamic>)))
            : [],
        pagination: json["data"] != null && json["data"]["pagination"] != null
            ? Pagination.fromJson(json["data"]["pagination"])
            : Pagination.empty(),
      );
}

class Datum {
  int id;
  Description title;
  int position;
  int active;
  String image;
  String link;
  Description description;
  String slug;
  int showToClient;
  int showToCompany;
  int showToPuncher;
  int showToWebsite;

  Datum({
    required this.id,
    required this.title,
    required this.position,
    required this.active,
    required this.image,
    required this.link,
    required this.description,
    required this.slug,
    required this.showToClient,
    required this.showToCompany,
    required this.showToPuncher,
    required this.showToWebsite,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"] ?? 0, // Handle null id
        title: json["title"] != null
            ? Description.fromJson(json["title"])
            : Description.empty(), // Handle null title
        position: json["position"] ?? 0, // Handle null position
        active: json["active"] ?? 0, // Handle null active
        image: json["image"] ?? '', // Handle null image
        link: json["link"] ?? '', // Handle null link
        description: json["description"] != null
            ? Description.fromJson(json["description"])
            : Description.empty(), // Handle null description
        slug: json["slug"] ?? '', // Handle null slug
        showToClient: json["show_to_client"] ?? 0, // Handle null showToClient
        showToCompany:
            json["show_to_company"] ?? 0, // Handle null showToCompany
        showToPuncher:
            json["show_to_puncher"] ?? 0, // Handle null showToPuncher
        showToWebsite:
            json["show_to_website"] ?? 0, // Handle null showToWebsite
      );
}

class Description {
  String en;
  String ar;

  Description({
    required this.en,
    required this.ar,
  });

  // Empty factory constructor to provide default values
  factory Description.empty() => Description(
        en: '', // Default empty string for en
        ar: '', // Default empty string for ar
      );

  factory Description.fromJson(Map<String, dynamic> json) => Description(
        en: json["en"] ?? '', // Handle null en
        ar: json["ar"] ?? '', // Handle null ar
      );
}

class Pagination {
  int currentPage;
  int lastPage;
  int perPage;
  int total;
  dynamic nextPageUrl;
  dynamic prevPageUrl;

  Pagination({
    required this.currentPage,
    required this.lastPage,
    required this.perPage,
    required this.total,
    required this.nextPageUrl,
    required this.prevPageUrl,
  });

  // Empty factory constructor to provide default values
  factory Pagination.empty() => Pagination(
        currentPage: 0,
        lastPage: 0,
        perPage: 0,
        total: 0,
        nextPageUrl: null,
        prevPageUrl: null,
      );

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        currentPage: json["current_page"] ?? 0, // Handle null currentPage
        lastPage: json["last_page"] ?? 0, // Handle null lastPage
        perPage: json["per_page"] ?? 0, // Handle null perPage
        total: json["total"] ?? 0, // Handle null total
        nextPageUrl: json["next_page_url"], // Could be null
        prevPageUrl: json["prev_page_url"], // Could be null
      );
}
