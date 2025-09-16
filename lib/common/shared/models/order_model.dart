import 'package:equatable/equatable.dart';
import 'package:future_hub/common/shared/models/products.dart';
import 'package:future_hub/employee/orders/models/puncher_branch.dart';

import '../../auth/models/user.dart';

class Order extends Equatable {
  final int? id;
  final int? userId;
  final String? name;
  final String? email;
  final String? mobile;
  final int? companyId;
  String? companyName;
  String? companyEmail;
  String? companyMobile;
  final User? user;
  final int? referenceNumber;
  final num? price;
  final String? totalPrice;
  final num? discount;
  final num? discountValue;
  final num? vat;
  final num? vatValue;
  final Coupon? coupon;
  final Punchers? puncher;
  final Company? company;
  final int? status;
  final DateTime? createdAt;
  final List<OrderProducts>? products;
  final int? puncherId;
  final int? employeeId;
  final String? employeeName;
  final int? branchId;
  final String? puncherEmail;
  final String? puncherName;
  final String? puncherMobile;
  final int? vehicleId;
  final String? vehiclePlateNumbers;
  final OrderPlateLetters? plateLetters;
  final String? vehicleBrand;
  final String? vehicleModel;
  final String? vehicleYear;
  final num? totalQuantity;
  final String? fueType;
  final String? serviceName;
  final int? checkPlate;
  String? serviceImage;
  final DateTime? updatedAt;

  Order(
      {this.id,
      this.user,
      this.email,
      this.userId,
      this.mobile,
      this.companyId,
      this.companyName,
      this.companyEmail,
      this.companyMobile,
      this.price,
      this.discount,
      this.discountValue,
      this.referenceNumber,
      this.totalPrice,
      this.vat,
      this.vatValue,
      this.coupon,
      this.puncher,
      this.company,
      this.createdAt,
      this.name,
      this.status,
      this.branchId,
      this.puncherEmail,
      this.puncherId,
      this.puncherMobile,
      this.puncherName,
      this.updatedAt,
      this.totalQuantity,
      this.vehiclePlateNumbers,
      this.plateLetters,
      this.vehicleBrand,
      this.vehicleModel,
      this.vehicleYear,
      this.vehicleId,
      this.employeeId,
      this.employeeName,
      this.fueType,
      this.serviceName,
      this.checkPlate,
      this.serviceImage,
      this.products});

  factory Order.fromJson(Map<String, dynamic> json) => Order(
        userId: json["user_id"],
        name: json["name"],
        email: json["email"],
        mobile: json["mobile"],
        companyId: json["company_id"],
        companyName: json["company_name"],
        companyEmail: json["company_email"],
        companyMobile: json["company_mobile"],
        referenceNumber: json["reference_number"],
        status: json["status"],
        // price: json["price"],
        discount: json["discount"],
        discountValue: json["discount_value"],
        vatValue: json["vat_value"],
        vat: json["vat"],
        totalPrice: json["total_price"].toString(),
        puncherId: json["puncher_id"],
        employeeId: int.tryParse(json["employee_id"]?.toString() ?? '') ?? 0,
        employeeName: json["employee_name"],
        branchId: json["branch_id"],
        puncherEmail: json["puncher_email"],
        puncherName: json["puncher_name"],
        puncherMobile: json["puncher_mobile"],
        vehicleId: json["vehicle_id"],
        vehiclePlateNumbers: json["vehicle_plate_numbers"],
        plateLetters: OrderPlateLetters.fromJson(json["plate_letters"]),
        vehicleBrand: json["vehicle_brand"],
        vehicleModel: json["vehicle_model"],
        vehicleYear: json["vehicle_year"],
        totalQuantity: json["total_quantity"],
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        fueType: json["fuel_type"],
        serviceImage: json["service_image"],
        serviceName: json["service_name"],
        checkPlate: json["check_plate"],
        id: json["id"],
      );
  @override
  List<Object?> get props => [
        id,
        user,
        price,
        discount,
        discountValue,
        referenceNumber,
        totalPrice,
        vat,
        vatValue,
        coupon,
        company,
        puncher,
        createdAt,
        checkPlate,
        products
      ];

  Order copyWith({
    int? id,
    int? userId,
    String? email,
    String? mobile,
    int? companyId,
    String? companyName,
    String? companyEmail,
    String? companyMobile,
    User? user,
    int? referenceNumber,
    num? price,
    String? totalPrice,
    num? discount,
    num? discountValue,
    num? vat,
    num? vatValue,
    Coupon? coupon,
    Punchers? puncher,
    Company? company,
    int? status,
    String? name,
    DateTime? createdAt,
    List<OrderProducts>? products,
    int? puncherId,
    int? branchId,
    String? puncherEmail,
    String? puncherName,
    String? puncherMobile,
    DateTime? updatedAt,
  }) {
    return Order(
        puncherId: puncherId ?? this.puncherId,
        id: id ?? this.id,
        branchId: branchId ?? this.branchId,
        companyEmail: companyEmail ?? this.companyEmail,
        companyId: companyId ?? this.companyId,
        companyMobile: companyMobile ?? this.companyMobile,
        companyName: companyName ?? this.companyName,
        email: email ?? this.email,
        mobile: mobile ?? this.mobile,
        puncherEmail: puncherEmail ?? this.puncherEmail,
        puncherMobile: puncherMobile ?? this.puncherMobile,
        puncherName: puncherName ?? this.puncherName,
        updatedAt: updatedAt ?? this.updatedAt,
        userId: userId ?? this.userId,
        user: user ?? this.user,
        referenceNumber: referenceNumber ?? this.referenceNumber,
        price: price ?? this.price,
        totalPrice: totalPrice ?? this.totalPrice,
        discount: discount ?? this.discount,
        discountValue: discountValue ?? this.discountValue,
        vat: vat ?? this.vat,
        vatValue: vatValue ?? this.vatValue,
        coupon: coupon ?? this.coupon,
        puncher: puncher ?? this.puncher,
        company: company ?? this.company,
        status: status ?? this.status,
        name: name ?? this.name,
        createdAt: createdAt ?? this.createdAt,
        products: products ?? this.products);
  }
}

class Coupon {
  final String? id;
  final String? title;
  final String? code;
  final double? discount;
  final int? discountType;
  final String? startDate;
  final String? expireDate;

  Coupon(
      {this.id,
      this.title,
      this.code,
      this.discount,
      this.discountType,
      this.expireDate,
      this.startDate});
}

class Company {
  final String? id;
  final String? name;
  final String? code;

  Company({this.id, this.name, this.code});
}

class OrderProducts {
  final int? id;
  final CompanyProduct? product;
  final double? quantity;
  final double? unitPrice;
  final double? totalPrice;
  final double? discount;
  final double? discountValue;

  OrderProducts(
      {this.id,
      this.product,
      this.quantity,
      this.totalPrice,
      this.unitPrice,
      this.discount,
      this.discountValue});
}

class OrderPlateLetters {
  String en;
  String ar;

  OrderPlateLetters({
    required this.en,
    required this.ar,
  });

  factory OrderPlateLetters.fromJson(Map<String, dynamic> json) =>
      OrderPlateLetters(
        en: json["en"],
        ar: json["ar"],
      );

  Map<String, dynamic> toJson() => {
        "en": en,
        "ar": ar,
      };
}
