class PointsService {
  // Future<int> scanProductCode(String referenceNumber) async {
  // final result = await Client.current.mutateScanProductPointsCode(
  //   OptionsMutationScanProductPointsCode(
  //     variables: VariablesMutationScanProductPointsCode(
  //       referenceNumber: referenceNumber,
  //     ),
  //   ),
  // );
  // final data = result.parsedData?.scanQrCodeProduct;
  // final status = data?.status;
  // final message = data?.message;
  // final points = data?.data?.points;
  //
  // if (result.hasException) {
  //   throw FetchException.fromOperation(result.exception!);
  // }
  //
  // if (status == 'FAIL') {
  //   throw FetchException(message!);
  // }
  //
  // debugPrint(message);
  //
  // return points!;
  // }

  // Future<UserGift> createUserCoupon({required int points}) async {
  //   final result = await Client.current.mutateCreateUserCoupon(
  //     OptionsMutationCreateUserCoupon(
  //       variables: VariablesMutationCreateUserCoupon(points: points),
  //     ),
  //   );
  //
  //   final data = result.parsedData?.createUserCoupon;
  //   final status = data?.status;
  //   final message = data?.message;
  //   final giftData = data?.data;
  //   if (result.hasException) {
  //     throw FetchException.fromOperation(result.exception!);
  //   }
  //
  //   if (status == 'FAIL') {
  //     throw FetchException(message!);
  //   }
  //
  //   debugPrint(message);
  //
  //   return UserGift(
  //       id: giftData!.id ?? "",
  //       youGotAGift: giftData.yougotagift_id!,
  //       youGotAGiftStatus: giftData.yougotagift_status!,
  //       barcode: giftData.barcode!,
  //       referenceNumber: giftData.reference_number!,
  //       expiryDate: giftData.expiry_date!,
  //       giftVoucherLabel: giftData.gift_voucher_label!,
  //       redemptionInstructions: giftData.redemption_instructions!,
  //       giftCardPin: giftData.egift_card_gift_verification_pin!,
  //       giftVoucherValue: giftData.gift_voucher_value!,
  //       amount: giftData.amount!,
  //       points: giftData.points!);
  // }
  //
  // Future<PaginatorInfo<GiftBrand>> getYouGotAGiftBrands(
  //     {required int page}) async {
  //   // Query for gift brands
  //   final result = await Client.current.queryGiftBrand(
  //     OptionsQueryGiftBrand(
  //       variables: VariablesQueryGiftBrand(page: page),
  //     ),
  //   );
  //
  //   // Query for number of points
  //   final numberPointsResult = await Client.current.queryNumberPoints();
  //   final numberPoints =
  //       numberPointsResult.parsedData?.aboutUs?.number_point ?? 0;
  //
  //   // Handle nullable data response from gift brands query
  //   final data = result.parsedData?.giftBrands?.data;
  //   if (data == null || data.isEmpty) {
  //     debugPrint("No gift brand data available.");
  //     return const PaginatorInfo(
  //       data: [], // return an empty list if no data
  //       hasMorePages: false,
  //     );
  //   }
  //
  //   final hasMorePages =
  //       result.parsedData?.giftBrands?.paginatorInfo?.hasMorePages ?? false;
  //
  //   // Map the data into GiftBrand objects, handling potential null values within each item
  //   return PaginatorInfo(
  //     data: data
  //         .map(
  //           (e) => GiftBrand(
  //             id: e?.id ?? 0,
  //             brandCode: e?.brand_code ?? '',
  //             logo: e?.logo ?? '',
  //             name: e?.name ?? '',
  //             productImage: e?.product_image ?? '',
  //             description: e?.description ?? '',
  //             denominations: (e?.denominations?.SAR ?? [])
  //                 .map(
  //                   (den) => Denominations(
  //                     amount: den?.amount ?? 0,
  //                     isActive: den?.is_active ?? false,
  //                     points:
  //                         den?.amount != null ? den!.amount! * numberPoints : 0,
  //                   ),
  //                 )
  //                 .toList(),
  //           ),
  //         )
  //         .toList(),
  //     hasMorePages: hasMorePages,
  //   );
  // }
  //
  // Future<PaginatorInfo<UserGift>> fetchPreviousGifts(int page) async {
  //   final result = await Client.current.queryPreviousGifts(
  //     OptionsQueryPreviousGifts(
  //       variables: VariablesQueryPreviousGifts(page: page),
  //     ),
  //   );
  //   final data = result.parsedData?.gifts;
  //   final gifts = data!.data;
  //   final hasMorePages = data.paginatorInfo.hasMorePages;
  //   final total = data.paginatorInfo.total;
  //
  //   if (result.hasException) {
  //     throw FetchException.fromOperation(result.exception!);
  //   }
  //
  //   return PaginatorInfo(
  //     data: gifts
  //         .map((gift) => UserGift(
  //             id: gift.id ?? "",
  //             youGotAGift: gift.yougotagift_id!,
  //             youGotAGiftStatus: gift.yougotagift_status!,
  //             barcode: gift.barcode!,
  //             referenceNumber: gift.reference_number!,
  //             expiryDate: gift.expiry_date!,
  //             giftVoucherLabel: gift.gift_voucher_label!,
  //             redemptionInstructions: gift.redemption_instructions!,
  //             giftCardPin: gift.egift_card_gift_verification_pin!,
  //             giftVoucherValue: gift.gift_voucher_value!,
  //             points: gift.points!,
  //             amount: gift.amount!))
  //         .toList(),
  //     hasMorePages: hasMorePages,
  //     total: total,
  //   );
  // }
}
