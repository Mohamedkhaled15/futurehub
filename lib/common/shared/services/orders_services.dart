class OrdersService {
  // Future<PaginatorInfo<Order>> fetchOrders({
  //   int page = 1,
  //   int? employee,
  //   bool cache = false,
  // }) async {
  //   final result = await Client.current.queryOrders(
  //     OptionsQueryOrders(
  //       variables: VariablesQueryOrders(
  //         page: page,
  //         employee: employee,
  //       ),
  //       fetchPolicy: cache ? FetchPolicy.cacheFirst : null,
  //     ),
  //   );
  //   final data = result.parsedData?.orders;
  //   if (data == null || data.data == null || data.paginatorInfo == null) {
  //     // Handle the null case, possibly by returning an empty PaginatorInfo
  //     return PaginatorInfo(data: [], hasMorePages: false, total: 0);
  //   }
  //   final orders = data!.data;
  //   final hasMorePages = data.paginatorInfo.hasMorePages;
  //   final total = data.paginatorInfo.total;
  //
  //   if (result.hasException) {
  //     throw FetchException.fromOperation(result.exception!);
  //   }
  //
  //   return PaginatorInfo(
  //     data: orders.map((order) {
  //       final user = User(
  //         id: int.parse(order.user!.id),
  //         name: order.user!.name,
  //         mobile: order.user!.mobile,
  //         // nationalId: order.user!.national_id,
  //         // gender: order.user!.gender,
  //         image: order.user!.image_path,
  //         // email: order.user!.email,
  //         type: order.user!.type,
  //       );
  //
  //       Coupon? coupon;
  //       if (order.coupon != null) {
  //         coupon = Coupon(
  //           id: order.coupon!.id,
  //           title: order.coupon!.title,
  //           discount: order.coupon!.discount,
  //           code: order.coupon!.code,
  //         );
  //       }
  //
  //       final puncher = Puncher(
  //         id: int.parse(order.puncher!.id),
  //         name: order.puncher!.name,
  //         imageUrl: order.puncher!.imageUrl,
  //       );
  //
  //       final company = Company(
  //         id: order.company!.id,
  //         name: order.company!.name,
  //       );
  //
  //       final products = order.products!.map((orderProduct) {
  //         final product = orderProduct.product!;
  //         return OrderProducts(
  //           product: CompanyProduct(
  //             id: product.id,
  //             title: product.title!,
  //             price: product.price!,
  //             discount: product.discount ?? 0,
  //             imagePath: product.image_path,
  //           ),
  //           unitPrice: orderProduct.unit_price,
  //           totalPrice: orderProduct.total_price,
  //           quantity: orderProduct.quantity,
  //           discount: orderProduct.discount ?? 0.0,
  //           discountValue: orderProduct.discount_value ?? 0.0,
  //         );
  //       }).toList();
  //
  //       return Order(
  //         id: order.id,
  //         user: user,
  //         referenceNumber: order.reference_number,
  //         price: order.price,
  //         totalPrice: order.total_price,
  //         discount: order.discount,
  //         discountValue: order.discount_value,
  //         vat: order.vat,
  //         vatValue: order.vat_value,
  //         coupon: coupon,
  //         puncher: puncher,
  //         status: order.status,
  //         name: order.name,
  //         createdAt: order.created_at,
  //         company: company,
  //         products: products,
  //       );
  //     }).toList(),
  //     hasMorePages: hasMorePages,
  //     total: total,
  //   );
  // }

  // Future<Order> orderById(String referenceNumber) async {
  //   final result = await Client.current.queryOrderById(
  //     OptionsQueryOrderById(
  //       variables: VariablesQueryOrderById(
  //         referenceNumber: referenceNumber,
  //       ),
  //     ),
  //   );
  //
  //   if (result.hasException) {
  //     throw FetchException.fromOperation(result.exception!);
  //   }
  //
  //   final order = result.parsedData!.orderById;
  //
  //   final user = User(
  //     id: int.parse(order.user!.id),
  //     name: order.user!.name,
  //     // nationalId: order.user!.national_id,
  //     // gender: order.user!.gender,
  //     image: order.user!.image_path,
  //     // email: order.user!.email,
  //     type: order.user!.type,
  //   );
  //
  //   Coupon? coupon;
  //   if (order.coupon != null) {
  //     coupon = Coupon(
  //       id: order.coupon!.id,
  //       title: order.coupon!.title,
  //       discount: order.coupon!.discount,
  //       code: order.coupon!.code,
  //     );
  //   }
  //
  //   final puncher = Puncher(
  //     id: int.parse(order.puncher!.id),
  //     name: order.puncher!.name,
  //     imageUrl: order.puncher!.imageUrl,
  //   );
  //
  //   final company = Company(
  //     id: order.company!.id,
  //     name: order.company!.name,
  //   );
  //
  //   final products = order.products!.map((orderProduct) {
  //     final product = orderProduct.product!;
  //
  //     return OrderProducts(
  //       product: CompanyProduct(
  //         id: product.id,
  //         title: product.title!,
  //         price: product.price!,
  //         discount: product.discount ?? 0,
  //         imagePath: product.image_path,
  //       ),
  //       unitPrice: orderProduct.unit_price,
  //       totalPrice: orderProduct.total_price,
  //       quantity: orderProduct.quantity,
  //       discount: orderProduct.discount ?? 0.0,
  //       discountValue: orderProduct.discount_value ?? 0.0,
  //     );
  //   }).toList();
  //
  //   return Order(
  //     id: order.id,
  //     user: user,
  //     referenceNumber: order.reference_number,
  //     price: order.price,
  //     totalPrice: order.total_price,
  //     discount: order.discount,
  //     discountValue: order.discount_value,
  //     vat: order.vat,
  //     vatValue: order.vat_value,
  //     coupon: coupon,
  //     puncher: puncher,
  //     status: order.status,
  //     name: order.name,
  //     createdAt: order.created_at,
  //     company: company,
  //     products: products,
  //   );
  // }

  // Future<void> cancelOrder(String referenceNumber) async {
  //   final result = await Client.current.mutateCancelOrder(
  //     OptionsMutationCancelOrder(
  //       variables: VariablesMutationCancelOrder(
  //         referenceNumber: referenceNumber,
  //       ),
  //     ),
  //   );
  //
  //   final data = result.parsedData?.cancelOrder;
  //   final status = data?.status;
  //   final message = data?.message;
  //
  //   if (result.hasException) {
  //     throw FetchException.fromOperation(result.exception!);
  //   }
  //
  //   if (status == 'FAIL') {
  //     throw FetchException(message!);
  //   }
  //
  //   debugPrint(message);
  // }

  // Future<void> sendOtp(String referenceNumber) async {
  //   final result = await Client.current.mutateSendOtpToEmployee(
  //     OptionsMutationSendOtpToEmployee(
  //       variables: VariablesMutationSendOtpToEmployee(
  //         referenceNumber: referenceNumber,
  //       ),
  //     ),
  //   );
  //
  //   final data = result.parsedData?.validateQrCodeOrder;
  //   final status = data?.status;
  //   final message = data?.message;
  //
  //   if (result.hasException) {
  //     throw FetchException.fromOperation(result.exception!);
  //   }
  //
  //   if (status == 'FAIL') {
  //     throw FetchException(message!);
  //   }
  //   debugPrint(message);
  // }
  //
  // Future<void> confirmOrder(
  //     String code, String referenceNumber, XFile attachment) async {
  //   final result = await Client.current.mutateConfirmOrder(
  //     OptionsMutationConfirmOrder(
  //       variables: VariablesMutationConfirmOrder(
  //         code: code,
  //         referenceNumber: referenceNumber,
  //       ),
  //     ),
  //   );
  //
  //   final data = result.parsedData?.confirmOrder;
  //   final status = data?.status;
  //   final message = data?.message;
  //
  //   if (result.hasException) {
  //     throw FetchException.fromOperation(result.exception!);
  //   }
  //
  //   if (status == 'FAIL') {
  //     throw FetchException(message!);
  //   }
  //   debugPrint(message);
  //   showToast(text: message!, state: ToastStates.success);
  // }
}
