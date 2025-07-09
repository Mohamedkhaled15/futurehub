import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/company/companyOrders/model/order_company_model.dart';

class PastOrderCard extends StatelessWidget {
  const PastOrderCard({required this.order, required this.isLast, super.key});
  final CompanyOrder order;
  final bool isLast;

  @override
  Widget build(BuildContext context) {
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
                  value: "${order.totalPrice?.toStringAsFixed(2)} ${t.sar}",
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
                  _getLocalizedText(order.products![0].title),
                  Icons.local_gas_station),
              _buildDetailColumn(
                  t.date, order.createdAt ?? "", Icons.date_range),
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

  String _getLocalizedText(Packing? title) {
    return CacheManager.locale == const Locale("en")
        ? title?.en ?? ""
        : title?.ar ?? "";
  }

  Widget _buildLicensePlate(CompanyOrder order) {
    return Container(
      width: 120, // Adjust width to fit content
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
                    'assets/images/ksav.png', // Replace with your asset path
                    width: 12,
                    height: 40,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
            ),
          ),
          const VerticalDivider(color: Colors.black, thickness: 1, width: 1),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        order.plateLetters?.ar ?? "",
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      const VerticalDivider(
                          color: Colors.black, thickness: 1, width: 1),
                      Text(
                        order.vehiclePlateNumbers ?? "",
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const Divider(color: Colors.black, thickness: 1, height: 1),
                const VerticalDivider(
                    color: Colors.black, thickness: 1, width: 1),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        order.plateLetters?.en ?? "",
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 5.0),
                        child: VerticalDivider(
                            color: Colors.black, thickness: 1, width: 1),
                      ),
                      Text(
                        order.vehiclePlateNumbers ?? "",
                        style: const TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
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
