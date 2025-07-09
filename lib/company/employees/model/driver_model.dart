class CompanyDriversModel {
  bool? success;
  List<DriverData>? data;
  Pagination? pagination;

  CompanyDriversModel({
    this.success,
    this.data,
    this.pagination,
  });

  factory CompanyDriversModel.fromJson(Map<String, dynamic> json) =>
      CompanyDriversModel(
        success: json["success"] as bool?,
        data: json["data"] == null
            ? null
            : List<DriverData>.from(
                (json["data"] as List).map((x) => DriverData.fromJson(x))),
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
      );
}

class DriverData {
  int? id;
  String? branch;
  String? name;
  String? username;
  String? mobile;
  String? email;
  String? nationalId;
  num? walletLimit;
  String? image;
  int? ordersCount;
  List<DriverOrder>? orders;
  int? isActive;
  num? wallet;
  String? createAt;
  List<Vehicle>? vehicles;
  List<TransactionHistory>? transactionHistory;

  DriverData({
    this.id,
    this.branch,
    this.name,
    this.username,
    this.mobile,
    this.email,
    this.nationalId,
    this.walletLimit,
    this.image,
    this.ordersCount,
    this.orders,
    this.vehicles,
    this.isActive,
    this.wallet,
    this.createAt,
    this.transactionHistory,
  });

  factory DriverData.fromJson(Map<String, dynamic> json) => DriverData(
        id: json["id"] as int?,
        branch: json["branch"] as String?,
        name: json["name"] as String?,
        username: json["username"] as String?,
        mobile: json["mobile"] as String?,
        email: json["email"] as String?,
        isActive: json["active"] as int?,
        nationalId: json["national_id"] as String?,
        walletLimit: json["wallet_limit"] as num?,
        wallet: json["wallet_amount"] as num?,
        image: json["image"] as String?,
        createAt: json["created_at"] as String?,
        ordersCount: json["orders_count"] as int?,
        orders: json["orders"] == null
            ? null
            : List<DriverOrder>.from(
                (json["orders"] as List).map((x) => DriverOrder.fromJson(x))),
        vehicles: json["vehicles"] == null
            ? null
            : List<Vehicle>.from(
                (json["vehicles"] as List).map((x) => Vehicle.fromJson(x))),
        transactionHistory: json["transaction_history"] == null
            ? null
            : List<TransactionHistory>.from(
                (json["transaction_history"] as List)
                    .map((x) => TransactionHistory.fromJson(x))),
      );
}

class DriverOrder {
  int? id;
  String? driverName;
  String? driverImage;
  String? referenceNumber;
  int? status;
  num? totalPrice;
  String? createdAt;
  String? updatedAt;
  int? productsCount;
  List<Product>? products;

  DriverOrder({
    this.id,
    this.driverName,
    this.driverImage,
    this.referenceNumber,
    this.status,
    this.totalPrice,
    this.createdAt,
    this.updatedAt,
    this.productsCount,
    this.products,
  });

  factory DriverOrder.fromJson(Map<String, dynamic> json) => DriverOrder(
        id: json["id"] as int?,
        driverName: json["driver_name"] as String?,
        driverImage: json["driver_image"] as String?,
        referenceNumber: json["reference_number"] as String?,
        status: json["status"] as int?,
        totalPrice: json["total_price"] as num?,
        createdAt: json["created_at"] as String?,
        updatedAt: json["updated_at"] as String?,
        productsCount: json["products_count"] as int?,
        products: json["products"] == null
            ? null
            : List<Product>.from(
                (json["products"] as List).map((x) => Product.fromJson(x))),
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
        id: json["id"] as int?,
        title: json["title"] == null ? null : Packing.fromJson(json["title"]),
        price: json["price"] as num?,
        sku: json["sku"] as String?,
        packing:
            json["packing"] == null ? null : Packing.fromJson(json["packing"]),
        image: json["image"] as String?,
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
        en: json["en"] as String?,
        ar: json["ar"] as String?,
      );
}

class TransactionHistory {
  int? id;
  Packing? title;
  num? amount;
  int? orderId;

  TransactionHistory({
    this.id,
    this.title,
    this.amount,
    this.orderId,
  });

  factory TransactionHistory.fromJson(Map<String, dynamic> json) =>
      TransactionHistory(
        id: json["id"] as int?,
        title: json["title"] == null ? null : Packing.fromJson(json["title"]),
        amount: json["amount"] as num?,
        orderId: json["order_id"] as int?,
      );
}

class Vehicle {
  int? id;
  Packing? plateLetters;
  String? plateNumbers;
  String? consumptionType;
  String? consumptionMethod;
  String? maxConsumption;
  String? carType;
  String? carBrand;
  String? carModel;
  String? manufactureYear;
  String? fuelType;
  String? internalId;
  String? installationType;
  String? consumptionRate;
  String? chassisNumber;
  String? other1;
  String? other2;

  Vehicle({
    this.id,
    this.plateLetters,
    this.plateNumbers,
    this.consumptionType,
    this.consumptionMethod,
    this.maxConsumption,
    this.carType,
    this.carBrand,
    this.carModel,
    this.manufactureYear,
    this.fuelType,
    this.internalId,
    this.installationType,
    this.consumptionRate,
    this.chassisNumber,
    this.other1,
    this.other2,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) => Vehicle(
        id: json["id"] as int?,
        plateLetters: json["plate_letters"] == null
            ? null
            : Packing.fromJson(json["plate_letters"]),
        plateNumbers: json["plate_numbers"] as String?,
        consumptionType: json["consumption_type"] as String?,
        consumptionMethod: json["consumption_method"] as String?,
        maxConsumption: json["max_consumption"] as String?,
        carType: json["car_type"] as String?,
        carBrand: json["car_brand"] as String?,
        carModel: json["car_model"] as String?,
        manufactureYear: json["manufacture_year"] as String?,
        fuelType: json["fuel_type"] as String?,
        internalId: json["internal_id"] as String?,
        installationType: json["installation_type"] as String?,
        consumptionRate: json["consumption_rate"] as String?,
        chassisNumber: json["chassis_number"] as String?,
        other1: json["other_1"] as String?,
        other2: json["other_2"] as String?,
      );
}

class Pagination {
  int? currentPage;
  int? page;
  int? total;
  int? lastPage;

  Pagination({
    this.currentPage,
    this.page,
    this.total,
    this.lastPage,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        currentPage: json["current_page"] as int?,
        page: json["page"] as int?,
        total: json["total"] as int?,
        lastPage: json["last_page"] as int?,
      );
}
