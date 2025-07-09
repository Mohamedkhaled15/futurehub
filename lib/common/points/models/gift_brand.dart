import 'package:equatable/equatable.dart';

class GiftBrand extends Equatable {
  final int id;
  final String brandCode;
  final String logo;
  final String name;
  final String productImage;
  final String description;
  final List<Denominations> denominations;

  const GiftBrand({
    required this.id,
    required this.brandCode,
    required this.logo,
    required this.name,
    required this.productImage,
    required this.description,
    required this.denominations,
  });

  @override
  List<Object?> get props =>
      [id, brandCode, logo, name, productImage, description, denominations];
}

class Denominations {
  final double? amount;
  final bool? isActive;
  final double? points;

  Denominations({this.amount, this.isActive, this.points});
}
