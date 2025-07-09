import 'dart:convert';

BranchVehiclesModel branchVehiclesModelFromJson(String str) =>
    BranchVehiclesModel.fromJson(json.decode(str));

class BranchVehiclesModel {
  Branches? branches;

  BranchVehiclesModel({
    this.branches,
  });

  factory BranchVehiclesModel.fromJson(Map<String, dynamic> json) =>
      BranchVehiclesModel(
        branches: json["branches"] != null
            ? Branches.fromJson(json["branches"])
            : null, // Handle null for "branches"
      );
}

class Branches {
  int? currentPage;
  List<BranchData>? data;
  String? firstPageUrl;
  int? from;
  int? lastPage;
  String? lastPageUrl;
  List<Link>? links;
  String? nextPageUrl;
  String? path;
  int? perPage;
  String? prevPageUrl;
  int? to;
  int? total;

  Branches({
    this.currentPage,
    this.data,
    this.firstPageUrl,
    this.from,
    this.lastPage,
    this.lastPageUrl,
    this.links,
    this.nextPageUrl,
    this.path,
    this.perPage,
    this.prevPageUrl,
    this.to,
    this.total,
  });

  factory Branches.fromJson(Map<String, dynamic> json) => Branches(
        currentPage: json["current_page"] as int?,
        data: json["data"] != null
            ? List<BranchData>.from(
                json["data"].map((x) => BranchData.fromJson(x)))
            : null, // Handle null for "data"
        firstPageUrl: json["first_page_url"] as String?,
        from: json["from"] as int?,
        lastPage: json["last_page"] as int?,
        lastPageUrl: json["last_page_url"] as String?,
        links: json["links"] != null
            ? List<Link>.from(json["links"].map((x) => Link.fromJson(x)))
            : null, // Handle null for "links"
        nextPageUrl: json["next_page_url"] as String?,
        path: json["path"] as String?,
        perPage: json["per_page"] as int?,
        prevPageUrl: json["prev_page_url"] as String?,
        to: json["to"] as int?,
        total: json["total"] as int?,
      );
}

class BranchData {
  int? id;
  Address? title;
  Address? address;
  String? zipCode;
  String? country;
  String? phone;
  String? email;
  String? managerName;
  String? managerContact;
  dynamic latitude;
  dynamic longitude;
  int? active;
  int? companyId;
  int? cityId;
  DateTime? createdAt;
  DateTime? updatedAt;
  dynamic deletedAt;

  BranchData({
    this.id,
    this.title,
    this.address,
    this.zipCode,
    this.country,
    this.phone,
    this.email,
    this.managerName,
    this.managerContact,
    this.latitude,
    this.longitude,
    this.active,
    this.companyId,
    this.cityId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
  });

  factory BranchData.fromJson(Map<String, dynamic> json) => BranchData(
        id: json["id"] as int?,
        title: json["title"] != null ? Address.fromJson(json["title"]) : null,
        address: json["address"] != null
            ? Address.fromJson(json["address"])
            : null, // Handle null for "address"
        zipCode: json["zip_code"] as String?,
        country: json["country"] as String?,
        phone: json["phone"] as String?,
        email: json["email"] as String?,
        managerName: json["manager_name"] as String?,
        managerContact: json["manager_contact"] as String?,
        latitude: json["latitude"],
        longitude: json["longitude"],
        active: json["active"] as int?,
        companyId: json["company_id"] as int?,
        cityId: json["city_id"] as int?,
        createdAt: json["created_at"] != null
            ? DateTime.tryParse(json["created_at"])
            : null, // Handle null or invalid date
        updatedAt: json["updated_at"] != null
            ? DateTime.tryParse(json["updated_at"])
            : null, // Handle null or invalid date
        deletedAt: json["deleted_at"],
      );
}

class Address {
  String? en;
  String? ar;

  Address({
    this.en,
    this.ar,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        en: json["en"] as String?,
        ar: json["ar"] as String?,
      );
}

class Link {
  String? url;
  String? label;
  bool? active;

  Link({
    this.url,
    this.label,
    this.active,
  });

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        url: json["url"] as String?,
        label: json["label"] as String?,
        active: json["active"] as bool?,
      );
}
