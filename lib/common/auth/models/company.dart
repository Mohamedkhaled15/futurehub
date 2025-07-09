import 'package:equatable/equatable.dart';

class Company extends Equatable {
  final int? id;
  final String? name;
  final String? ownerName;
  final String? generalManager;
  final int? canUpdatePrice;
  final int? pointsBenefit;
  final int? customerPointsBenefit;
  final int? ordersCount;
  final int? branchesCount;
  final int? vehiclesCount;
  final int? driversCount;
  final List<Package>? packages;
  final List<CompanyTransactionHistory>? transactionHistory;

  const Company({
    this.id,
    this.name,
    this.ownerName,
    this.generalManager,
    this.canUpdatePrice,
    this.pointsBenefit,
    this.customerPointsBenefit,
    this.ordersCount,
    this.branchesCount,
    this.vehiclesCount,
    this.driversCount,
    this.packages,
    this.transactionHistory,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        id: json["id"] as int?,
        name: json["name"] as String?,
        ownerName: json["owner_name"] as String?,
        generalManager: json["general_manager"] as String?,
        canUpdatePrice: json["can_update_price"] as int?,
        pointsBenefit: json["points_benefit"] as int?,
        customerPointsBenefit: json["customer_points_benefit"] as int?,
        ordersCount: json["orders_count"] as int?,
        branchesCount: json["branches_count"] as int?,
        vehiclesCount: json["vehicles_count"] as int?,
        driversCount: json["drivers_count"] as int?,
        packages: json["packages"] != null
            ? List<Package>.from(
                (json["packages"] as List).map((x) => Package.fromJson(x)))
            : [],
        transactionHistory: json["transaction_history"] != null
            ? List<CompanyTransactionHistory>.from(
                (json["transaction_history"] as List)
                    .map((x) => CompanyTransactionHistory.fromJson(x)))
            : [],
      );

  @override
  List<Object?> get props => [
        id,
        name,
        ownerName,
        generalManager,
        canUpdatePrice,
        pointsBenefit,
        customerPointsBenefit,
        ordersCount,
        branchesCount,
        vehiclesCount,
        driversCount,
        packages,
        transactionHistory,
      ];
}

class Package {
  final int? id;
  final Title? title;
  final int? vehicleCount;
  final String? price;
  final int? duration;
  final int? active;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final Pivot? pivot;

  Package({
    this.id,
    this.title,
    this.vehicleCount,
    this.price,
    this.duration,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.pivot,
  });

  factory Package.fromJson(Map<String, dynamic> json) => Package(
        id: json["id"] as int?,
        title: json["title"] != null ? Title.fromJson(json["title"]) : null,
        vehicleCount: json["vehicle_count"] as int?,
        price: json["price"] as String?,
        duration: json["duration"] as int?,
        active: json["active"] as int?,
        createdAt: json["created_at"] != null
            ? DateTime.tryParse(json["created_at"])
            : null,
        updatedAt: json["updated_at"] != null
            ? DateTime.tryParse(json["updated_at"])
            : null,
        pivot: json["pivot"] != null ? Pivot.fromJson(json["pivot"]) : null,
      );
}

class Pivot {
  final int? companyId;
  final int? packageId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final DateTime? subscribedAt;
  final DateTime? expiresAt;

  Pivot({
    this.companyId,
    this.packageId,
    this.createdAt,
    this.updatedAt,
    this.subscribedAt,
    this.expiresAt,
  });

  factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
        companyId: json["company_id"] as int?,
        packageId: json["package_id"] as int?,
        createdAt: json["created_at"] != null
            ? DateTime.tryParse(json["created_at"])
            : null,
        updatedAt: json["updated_at"] != null
            ? DateTime.tryParse(json["updated_at"])
            : null,
        subscribedAt: json["subscribed_at"] != null
            ? DateTime.tryParse(json["subscribed_at"])
            : null,
        expiresAt: json["expires_at"] != null
            ? DateTime.tryParse(json["expires_at"])
            : null,
      );
}

class Title {
  final String? en;
  final String? ar;

  Title({
    this.en,
    this.ar,
  });

  factory Title.fromJson(Map<String, dynamic> json) => Title(
        en: json["en"] as String?,
        ar: json["ar"] as String?,
      );
}

class CompanyTransactionHistory {
  final int? id;
  final String? transactionNumber;
  final int? paymentMethod;
  final String? type;
  final Title? title;
  final num? amount;
  final String? attachment;

  CompanyTransactionHistory({
    this.id,
    this.transactionNumber,
    this.paymentMethod,
    this.type,
    this.title,
    this.amount,
    this.attachment,
  });

  factory CompanyTransactionHistory.fromJson(Map<String, dynamic> json) =>
      CompanyTransactionHistory(
        id: json["id"] as int?,
        transactionNumber: json["transaction_number"] as String?,
        paymentMethod: json["payment_method"] as int?,
        type: json["type"] as String?,
        title: json["title"] != null ? Title.fromJson(json["title"]) : null,
        amount: json["amount"] as num?,
        attachment: json["attachment"] as String?,
      );
}
