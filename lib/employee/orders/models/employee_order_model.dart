class EmployeeOrderModel {
  List<EmployeeOrder>? data;
  Links? links;
  Meta? meta;

  EmployeeOrderModel({
    this.data,
    this.links,
    this.meta,
  });

  factory EmployeeOrderModel.fromJson(Map<String, dynamic> json) =>
      EmployeeOrderModel(
        data: List<EmployeeOrder>.from(
            json["data"].map((x) => EmployeeOrder.fromJson(x))),
        links: Links.fromJson(json["links"]),
        meta: Meta.fromJson(json["meta"]),
      );
}

class EmployeeOrder {
  int? id;
  String? driverName;
  String? driverImage;
  String? referenceNumber;
  int? status;
  String? totalPrice;
  String? createdAt;
  String? updatedAt;
  String? puncherName;
  int? productsCount;
  dynamic vehicleId;
  String? vehiclePlateNumbers;
  String? vehicleBrand;
  String? vehicleModel;
  String? vehicleYear;
  int? totalQuantity;
  PlateLettersClass? plateLetters;
  final String? fuelType;
  String? serviceImage;
  final String? serviceName;
  List<Product>? products;

  EmployeeOrder({
    this.id,
    this.driverName,
    this.driverImage,
    this.referenceNumber,
    this.status,
    this.totalPrice,
    this.createdAt,
    this.updatedAt,
    this.productsCount,
    this.vehicleId,
    this.plateLetters,
    this.totalQuantity,
    this.vehicleBrand,
    this.vehicleModel,
    this.vehicleYear,
    this.puncherName,
    this.vehiclePlateNumbers,
    this.fuelType,
    this.serviceName,
    this.serviceImage,
    this.products,
  });

  factory EmployeeOrder.fromJson(Map<String, dynamic> json) => EmployeeOrder(
        id: json["id"],
        driverName: json["driver_name"],
        driverImage: json["driver_image"],
        referenceNumber: json["reference_number"],
        puncherName: json["puncher_name"],
        status: json["status"],
        totalPrice: json["total_price"].toString(),
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        // productsCount: json["products_count"],
        vehicleId: json["vehicle_id"],
        vehiclePlateNumbers: json["vehicle_plate_numbers"],
        plateLetters: json["plate_letters"] is Map<String, dynamic>
            ? PlateLettersClass.fromJson(json["plate_letters"])
            : null,
        vehicleBrand: json["vehicle_brand"],
        vehicleModel: json["vehicle_model"],
        vehicleYear: json["vehicle_year"],
        totalQuantity: json["total_quantity"],
        fuelType: json["fuel_type"],
        serviceName: json["service_name"],
        serviceImage: json["service_image"],
        // products: List<Product>.from(
        //     json["products"].map((x) => Product.fromJson(x))),
      );
}

class Product {
  int? id;
  Packing? title;
  num? price;
  String? sku;
  Packing? packing;
  String? image;

  Product({
    this.id,
    this.title,
    this.price,
    this.sku,
    this.packing,
    this.image,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"],
        title: Packing.fromJson(json["title"]),
        price: json["price"],
        sku: json["sku"],
        packing: Packing.fromJson(json["packing"]),
        image: json["image"],
      );
}

class Packing {
  String? en;
  String? ar;

  Packing({
    this.en,
    this.ar,
  });

  factory Packing.fromJson(Map<String, dynamic> json) => Packing(
        en: json["en"],
        ar: json["ar"],
      );
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
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
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

  Map<String, dynamic> toJson() => {
        "url": url,
        "label": label,
        "active": active,
      };
}

class PlateLettersClass {
  String? en;
  String? ar;

  PlateLettersClass({
    this.en,
    this.ar,
  });

  factory PlateLettersClass.fromJson(Map<String, dynamic> json) =>
      PlateLettersClass(
        en: json["en"],
        ar: json["ar"],
      );
}
