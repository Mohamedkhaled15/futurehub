import 'package:future_hub/common/shared/models/products.dart';

class OrderProduct {
  final double quantity;
  final double price;
  final CompanyProduct product;

  const OrderProduct({
    required this.product,
    required this.price,
    required this.quantity,
  });

  OrderProduct withQuantity(double quantity) {
    return OrderProduct(
      price: price,
      product: product,
      quantity: quantity,
    );
  }
}
