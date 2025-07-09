import 'package:future_hub/common/shared/models/products.dart';
import 'package:equatable/equatable.dart';

class OilCategoriesModel extends Equatable {
  final String title;
  final List<CompanyProduct> products;

  const OilCategoriesModel({required this.title, required this.products});

  @override
  List<Object?> get props => [title, products];
}
