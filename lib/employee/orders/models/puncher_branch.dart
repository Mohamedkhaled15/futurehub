// To parse this JSON data, do
//
//     final puncherBranch = puncherBranchFromJson(jsonString);

import 'dart:convert';

PuncherBranch puncherBranchFromJson(String str) =>
    PuncherBranch.fromJson(json.decode(str));

class PuncherBranch {
  List<Punchers>? data;
  Links? links;
  Meta? meta;

  PuncherBranch({
    this.data,
    this.links,
    this.meta,
  });

  factory PuncherBranch.fromJson(Map<String, dynamic> json) => PuncherBranch(
        data: List<Punchers>.from(
            json["message"].map((x) => Punchers.fromJson(x))),
        links: json["links"] != null
            ? Links.fromJson(json["links"])
            : null, // Handle null links
        meta: json["meta"] != null
            ? Meta.fromJson(json["meta"])
            : null, // Handle null meta
      );
}

class Punchers {
  int? id;
  int? serviceProviderId;
  Address? title;
  String? serviceProviderName;
  Address? address;
  String? latitude;
  String? longitude;
  String? city;
  String? image;
  Diesel? diesel;
  Gasoline9? gasoline91;
  Gasoline9? gasoline95;
  String? distanceInKm;

  Punchers({
    this.id,
    this.serviceProviderId,
    this.title,
    this.serviceProviderName,
    this.address,
    this.latitude,
    this.longitude,
    this.city,
    this.image,
    this.diesel,
    this.gasoline91,
    this.gasoline95,
    this.distanceInKm,
  });

  factory Punchers.fromJson(Map<String, dynamic> json) => Punchers(
        id: json["id"],
        title: json["title"] != null ? Address.fromJson(json["title"]) : null,
        serviceProviderName: json["service_provider_name"],
        serviceProviderId: json["service_provider_id"],
        address:
            json["address"] != null ? Address.fromJson(json["address"]) : null,
        latitude: json["latitude"],
        longitude: json["longitude"],
        distanceInKm: json["distance"],
        city: json["city"],
        diesel: json["diesel"] != null && json["diesel"] is Map<String, dynamic>
            ? Diesel.fromJson(json["diesel"])
            : null,
        gasoline91: json["gasoline_91"] != null &&
                json["gasoline_91"] is Map<String, dynamic>
            ? Gasoline9.fromJson(json["gasoline_91"])
            : null,
        gasoline95: json["gasoline_95"] != null &&
                json["gasoline_95"] is Map<String, dynamic>
            ? Gasoline9.fromJson(json["gasoline_95"])
            : null,
        image: json["image"],
      );
}

class Address {
  String? en;
  String? ar;

  Address({
    this.en,
    this.ar,
  });

  factory Address.fromJson(dynamic json) {
    if (json is Map<String, dynamic>) {
      return Address(
        en: json["en"],
        ar: json["ar"],
      );
    } else if (json is List) {
      // Return an empty Address object if the field is a list.
      return Address();
    } else {
      throw const FormatException('Invalid address format');
    }
  }
}

class Links {
  String? first;
  String? last;
  String? prev;
  String? next;

  Links({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        first: json["first"],
        last: json["last"],
        prev: json["prev"],
        next: json["next"],
      );
}

class Meta {
  int? currentPage;
  int? from;
  int? lastPage;
  List<Link>? links;
  String? path;
  int? perPage;
  int? to;
  int? total;

  Meta({
    this.currentPage,
    this.from,
    this.lastPage,
    this.links,
    this.path,
    this.perPage,
    this.to,
    this.total,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        currentPage: json["current_page"],
        from: json["from"],
        lastPage: json["last_page"],
        links: json["links"] != null
            ? List<Link>.from(json["links"].map((x) => Link.fromJson(x)))
            : [], // If links is null, return an empty list
        path: json["path"],
        perPage: json["per_page"],
        to: json["to"],
        total: json["total"],
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
        url: json["url"],
        label: json["label"],
        active: json["active"],
      );
}

class Gasoline9 {
  Address? title;
  String? price;
  String? image;

  Gasoline9({
    this.title,
    this.price,
    this.image,
  });

  factory Gasoline9.fromJson(Map<String, dynamic> json) => Gasoline9(
        title: json["title"] != null ? Address.fromJson(json["title"]) : null,
        price: json["price"],
        image: json["image"],
      );
}

class Diesel {
  Address? title;
  String? price;
  String? image;

  Diesel({
    this.title,
    this.price,
    this.image,
  });

  factory Diesel.fromJson(Map<String, dynamic> json) => Diesel(
        title: json["title"] != null ? Address.fromJson(json["title"]) : null,
        price: json["price"],
        image: json["image"],
      );
}
