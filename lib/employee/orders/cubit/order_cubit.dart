import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/shared/models/order_model.dart';
import 'package:future_hub/common/shared/models/products.dart';
import 'package:future_hub/employee/orders/cubit/order_state.dart';
import 'package:future_hub/employee/orders/models/order_product.dart';
import 'package:future_hub/employee/orders/services/order_service.dart';

class OrderCubit extends Cubit<OrderState> {
  OrderCubit()
      : super(
          OrderState(
            products: const {},
            totalPrice: 0,
            totalQuantity: 0,
          ),
        );

  void addProduct(CompanyProduct product) {
    if (state.products!.containsKey(product.id.toString())) return;

    final orderProduct = OrderProduct(
      product: product,
      quantity: 1,
      price: 1,
    );

    emit(
      state.copyWith(
        products: {
          ...?state.products,
          orderProduct.product.id.toString(): orderProduct,
        },
        totalPrice: state.totalPrice + num.parse(product.price),
        totalQuantity: state.totalQuantity + 1,
      ),
    );
  }

  void setProduct(
    CompanyProduct product, {
    required double quantity,
    required double price,
    int? vehicleId,
  }) {
    // If the quantity is zero, remove the product
    if (quantity <= 0) {
      final updatedProducts = {...?state.products};
      updatedProducts.remove(product.id.toString());

      // Recalculate the total price and quantity after removing the product
      emit(
        state.copyWith(
          vehicleId: vehicleId,
          branchId: state.branchId, // Retain current branchId if not provided
          products: updatedProducts,
          totalPrice: OrderState.computeTotalPrice(updatedProducts.values),
          totalQuantity:
              OrderState.computeTotalQuantity(updatedProducts.values),
        ),
      );
      return;
    }

    final updatedProducts = {
      ...?state.products,
      product.id.toString():
          OrderProduct(product: product, price: price, quantity: quantity),
    };

    // Update or add the product in the map and recalculate the total price and quantity
    emit(
      state.copyWith(
        vehicleId: vehicleId,
        branchId:
            state.branchId, // Set branchId if provided, else retain current one
        products: updatedProducts,
        totalPrice: OrderState.computeTotalPrice(updatedProducts.values),
        totalQuantity: OrderState.computeTotalQuantity(updatedProducts.values),
      ),
    );
  }

  void removeProduct(String id, {bool isFinal = false}) {
    if (!state.products!.containsKey(id)) return;

    final product = state.products![id]!;
    final remaining = Map.fromEntries(
      state.products!.entries.where((entry) => entry.key != id),
    );

    emit(
      state.copyWith(
        products: remaining,
        totalPrice: state.totalPrice -
            product.quantity * num.parse(product.product.price),
        totalQuantity: state.totalQuantity - product.quantity,
      ),
    );
  }

  void changeProductQuantity(String id, double quantity) {
    if (!state.products!.containsKey(id)) return;

    final product = state.products![id]!;
    final totalQuantity = state.totalQuantity + quantity - product.quantity;
    final priceDifference =
        (quantity - product.quantity) * num.parse(product.product.price);
    final totalPrice = state.totalPrice + priceDifference;
    final updated = state.products!.map(
      (productId, product) => productId == id
          ? MapEntry(productId, product.withQuantity(quantity))
          : MapEntry(productId, product),
    );

    emit(
      state.copyWith(
        products: updated,
        totalPrice: totalPrice,
        totalQuantity: totalQuantity,
      ),
    );
  }

  void incrementProductQuantity(String id) {
    if (!state.products!.containsKey(id)) return;

    final quantity = state.products![id]!.quantity + 1;
    changeProductQuantity(id, quantity);
  }

  void decrementProductQuantity(String id) {
    if (!state.products!.containsKey(id)) return;

    final quantity = state.products![id]!.quantity - 1;
    if (quantity == 0) {
      removeProduct(id);
    } else {
      changeProductQuantity(id, quantity);
    }
  }

  void choosePuncher(int puncher) {
    emit(state.copyWith(branchId: puncher));
  }

  void orderCreated(Order order) {
    emit(
      OrderCreatedState.fromOrder(
        state.copyWith(
          totalPrice: double.tryParse(order.totalPrice ?? "0.0"),
          totalVat: order.vatValue?.toDouble(),
          totalDiscount: order.discountValue?.toDouble(),
        ),
        referenceNumber: order.referenceNumber!.toString(),
      ),
    );
  }

  final _orderService = OrderService();

  Future validateOrder(BuildContext context, {String? coupon}) async {
    // final punchersCubit = context.read<EmployeePunchersCubit>();
    // final branch =
    //     punchersCubit.cubitPunchers.firstWhere((p) => p.id == state.branchId);
    // var newData = await _orderService.validateCoupon(
    //   puncher: branch.id ?? 0,
    //   products: state.products!.values.toList(),
    //   coupon: coupon,
    // );
    // if (newData.runtimeType == String) {
    //   return newData;
    // }
    // state.totalPrice = newData.totalPrice!;
    // state.totalVat = newData.vatValue!;
    // state.totalDiscount = newData.discount!;
    emit(state.copyWith(
      coupon: coupon,
      products: state.products,
      branchId: state.branchId,
      totalDiscount: state.totalDiscount,
      totalVat: state.totalVat,
      totalPrice: state.totalPrice,
      totalQuantity: state.totalQuantity,
    ));
  }
}
