import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/puncher/orders/model/service_provider_order_model.dart';
import 'package:intl/intl.dart';

class ServiceProviderOrderCard extends StatelessWidget {
  const ServiceProviderOrderCard({
    required this.order,
    required this.isLast,
    super.key,
  });

  final Datum order;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    final direction = Directionality.of(context);
    String formatDateTime(DateTime dateTime) {
      final timeFormat = DateFormat('hh:mm a',
          direction == ui.TextDirection.rtl ? 'ar' : 'en'); // Time in Arabic
      final month =
          DateFormat('MMMM', direction == ui.TextDirection.rtl ? 'ar' : 'en');
      final day = DateFormat('dd', 'en');
      final year = DateFormat('yyyy', 'en');

      // final dateFormat = DateFormat('yyyy dd',
      //     direction == ui.TextDirection.rtl ? 'en' : 'en'); // Date in Arabic

      final timeString = timeFormat.format(dateTime);
      // final dateString = dateFormat.format(dateTime);
      final monthString = month.format(dateTime);
      final dayString = day.format(dateTime);
      final yearString = year.format(dateTime);

      return '$timeString\n$dayString $monthString ,$yearString';
    }

    String formattedDateTime =
        formatDateTime(DateTime.parse(order.createdAt ?? ''));
    final t = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: _buildColumn(
                  title: t.literCount,
                  value: "${order.totalQuantity} ${t.liter}",
                ),
              ),
              // const SizedBox(width: 8),
              Expanded(
                flex: 2,
                child: _buildColumn(
                  title: t.price,
                  value: "${order.totalPrice} ${t.sar}",
                ),
              ),
              // const SizedBox(width: 8),
              Expanded(
                flex: 2,
                child: _buildColumn(
                  title: order.vehicleBrand ?? "",
                  value: order.vehicleModel ?? "",
                ),
              ),
              const SizedBox(width: 4),
              Flexible(flex: 3, child: _buildLicensePlate(order)),
            ],
          ),
          const Divider(color: Colors.grey, thickness: 1),
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.spaceBetween,
            children: [
              _buildDetailColumn(
                  t.fuelType,
                  _getLocalizedText(order.fuelType ?? ""),
                  Icons.local_gas_station),
              _buildDetailColumn(
                  t.date, formattedDateTime ?? "", Icons.date_range),
              _buildDetailColumn(
                  t.paymentType, t.employeeBalance, Icons.payment),
              _buildDetailColumn(t.reference_number,
                  order.referenceNumber ?? "", Icons.qr_code),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLicensePlate(Datum order) {
    return Container(
      width: 120,
      height: 60,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/ksav.png',
                    width: 12,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 1,
            height: double.infinity,
            color: Colors.black,
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          order.plateLetters?.ar ?? "",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 30,
                        color: Colors.black,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          order.vehiclePlateNumbers ?? "",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Colors.black,
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 2,
                        child: Text(
                          order.plateLetters?.en ?? "",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        height: 30,
                        color: Colors.black,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          order.vehiclePlateNumbers ?? "",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailColumn(String title, String value, IconData icon) {
    return SizedBox(
      width: 60, // Set a fixed width or adapt as needed
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 20, color: Colors.purple),
          const SizedBox(height: 4),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Palette.background,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}

Widget _buildColumn({required String title, required String value}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        title,
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
      const SizedBox(height: 2),
      Text(
        value,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.purple,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
      ),
    ],
  );
}

String _getLocalizedText(String title) {
  return title;
  // CacheManager.locale == const Locale("en")
  //   ? title?.en ?? ""
  //   : title?.ar ?? "";
}
