// import 'dart:ui' as ui;
//
// import 'package:flutter/material.dart';
// import '../../../l10n/app_localizations.dart';
// import 'package:future_hub/common/shared/palette.dart';
// import 'package:intl/intl.dart';
//
// import '../orders/model/service_provider_order_model_confirm_canel.dart';
//
// class ConfirmOrderCard extends StatelessWidget {
//   final bool showPrices;
//   final bool showUser;
//   final bool summary;
//   final bool showTotal;
//   final ServiceProviderOrderConfirmCancelModel order;
//   final bool showQuantity;
//
//   const ConfirmOrderCard({
//     super.key,
//     this.showPrices = true,
//     this.showUser = true,
//     this.summary = true,
//     this.showTotal = false,
//     this.showQuantity = true,
//     required this.order,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     final direction = Directionality.of(context);
//     String formatDateTime(DateTime dateTime) {
//       final timeFormat = DateFormat('hh:mm a',
//           direction == ui.TextDirection.rtl ? 'ar' : 'en'); // Time in Arabic
//       final month =
//           DateFormat('MMMM', direction == ui.TextDirection.rtl ? 'ar' : 'en');
//       final day = DateFormat('dd', 'en');
//       final year = DateFormat('yyyy', 'en');
//
//       // final dateFormat = DateFormat('yyyy dd',
//       //     direction == ui.TextDirection.rtl ? 'en' : 'en'); // Date in Arabic
//
//       final timeString = timeFormat.format(dateTime);
//       // final dateString = dateFormat.format(dateTime);
//       final monthString = month.format(dateTime);
//       final dayString = day.format(dateTime);
//       final yearString = year.format(dateTime);
//
//       return '$timeString\n\n$dayString $monthString ,$yearString';
//     }
//
//     String formattedDateTime =
//         formatDateTime(DateTime.parse(order.data?.createdAt ?? ''));
//     final t = AppLocalizations.of(context)!;
//     return Container(
//       padding: const EdgeInsets.all(12.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         border: Border.all(color: Colors.grey.shade300),
//       ),
//       child: Column(
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               if (order.data?.totalQuantity != null)
//                 Expanded(
//                   flex: 2,
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.end,
//                     children: [
//                       Text(
//                         t.literCount,
//                         style: const TextStyle(
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       const SizedBox(height: 8),
//                       Text(
//                         "${order.data?.totalQuantity} ${t.liter}",
//                         style: const TextStyle(
//                           fontSize: 15,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.purple,
//                         ),
//                         overflow: TextOverflow.ellipsis, // Truncate long text
//                       ),
//                     ],
//                   ),
//                 ),
//               const SizedBox(width: 8), // Add spacing
//               Expanded(
//                 flex: 2,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Text(
//                       t.price,
//                       style: const TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       "${order.data?.totalPrice?.toStringAsFixed(2)}  ${t.sar}",
//                       style: const TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.purple,
//                       ),
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(width: 8), // Add spacing
//               Expanded(
//                 flex: 2,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.end,
//                   children: [
//                     Text(
//                       order.data?.vehicleBrand ?? "",
//                       style: const TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                       ),
//                     ),
//                     const SizedBox(height: 8),
//                     Text(
//                       order.data?.vehicleModel ?? "",
//                       style: const TextStyle(
//                         fontSize: 15,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.purple,
//                       ),
//                       // overflow: TextOverflow.ellipsis,
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(width: 8), // Add spacing
//               _buildLicensePlate(order),
//             ],
//           ),
//           const Divider(color: Colors.grey, thickness: 1),
//           // Additional Details
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               _buildDetailColumn(
//                   order.data?.totalQuantity == null ? t.services : t.fuelType,
//                   // CacheManager.locale! == const Locale("en")
//                   //     ? order.data?.products![0].title?.en ?? ""
//                   //     : order.data?.products![0].title?.ar ?? "",
//                   order.data?.totalQuantity == null
//                       ? order.data?.serviceName ?? ""
//                       : order.data?.fuelType ?? "",
//                   Icons.local_gas_station),
//               _buildDetailColumn(
//                   t.date, formattedDateTime ?? "", Icons.date_range),
//               _buildDetailColumn(
//                   t.paymentType, t.employeeBalance, Icons.payment),
//               _buildDetailColumn(t.reference_number,
//                   order.data?.referenceNumber ?? "", Icons.qr_code),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildLicensePlate(ServiceProviderOrderConfirmCancelModel order) {
//     return Container(
//       width: 120, // Adjust width to fit content
//       height: 60,
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.black),
//         borderRadius: BorderRadius.circular(6),
//       ),
//       child: Row(
//         children: [
//           Expanded(
//             flex: 1,
//             child: Container(
//               color: Colors.green,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'assets/images/ksav.png', // Replace with your asset path
//                     width: 12,
//                     height: 40,
//                     fit: BoxFit.cover,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           const VerticalDivider(color: Colors.black, thickness: 1, width: 1),
//           Expanded(
//             flex: 3,
//             child: Column(
//               children: [
//                 Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                         order.data?.plateLetters?.ar ?? "",
//                         style: const TextStyle(
//                             fontSize: 12, fontWeight: FontWeight.bold),
//                       ),
//                       const VerticalDivider(
//                           color: Colors.black, thickness: 1, width: 1),
//                       Text(
//                         order.data?.vehiclePlateNumbers ?? "",
//                         style: const TextStyle(
//                             fontSize: 12, fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const Divider(color: Colors.black, thickness: 1, height: 1),
//                 const VerticalDivider(
//                     color: Colors.black, thickness: 1, width: 1),
//                 Expanded(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: [
//                       Text(
//                         order.data?.plateLetters?.en ?? "",
//                         style: const TextStyle(
//                             fontSize: 12, fontWeight: FontWeight.bold),
//                       ),
//                       const Padding(
//                         padding: EdgeInsets.only(right: 5.0),
//                         child: VerticalDivider(
//                             color: Colors.black, thickness: 1, width: 1),
//                       ),
//                       Text(
//                         order.data?.vehiclePlateNumbers ?? "",
//                         style: const TextStyle(
//                             fontSize: 12, fontWeight: FontWeight.bold),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildDetailColumn(String title, String value, IconData icon) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Icon(icon, size: 20, color: Colors.purple),
//         const SizedBox(height: 4),
//         Text(
//           title,
//           style: const TextStyle(
//               fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
//         ),
//         const SizedBox(height: 4),
//         Text(
//           value,
//           textAlign: TextAlign.center,
//           style: const TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.bold,
//               color: Palette.background),
//         ),
//       ],
//     );
//   }
// }
