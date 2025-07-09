import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/company/employees/model/driver_model.dart';

import 'company_employee_order_ptoudct_card_item.dart';

class CompanyEmployeeOrderDetailsScreen extends StatefulWidget {
  const CompanyEmployeeOrderDetailsScreen({
    this.showActivate = false,
    required this.order,
    super.key,
  });

  final DriverOrder order;
  final bool showActivate;

  @override
  State<CompanyEmployeeOrderDetailsScreen> createState() =>
      _EmployeeOrderDetailsScreenState();
}

class _EmployeeOrderDetailsScreenState
    extends State<CompanyEmployeeOrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    // print(widget.showActivate.toString());
    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.order_details,
          style: const TextStyle(
            color: Palette.blackColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: size.height * 0.08,
                  width: size.width * 0.17,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.network(
                    widget.order.products?[0].image ?? '',
                    fit: BoxFit.contain,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.image),
                  ),
                ),
                SizedBox(
                  width: size.width * 0.04,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.order.driverName ?? '',
                      style: theme.textTheme.bodyMedium!.copyWith(
                        fontSize: 23,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text('#${widget.order.referenceNumber}',
                        style: const TextStyle(
                            fontSize: 14,
                            color: Palette.textGreyColor,
                            height: 1)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: t.products,
                    style: theme.textTheme.titleLarge!.copyWith(fontSize: 20),
                  ),
                  TextSpan(
                    text:
                        "    (${t.count_products(widget.order.products!.length)})",
                    style: theme.textTheme.bodySmall!.copyWith(
                      fontSize: 12,
                      color: Palette.primaryLightColor,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            // OrderCard(
            //   showUser: false,
            //   showTotal: true,
            //   summary: false,
            //   order: widget.order,
            // ),
            const SizedBox(height: 50.0),
            Expanded(
              child: ListView.builder(
                itemCount: widget.order.products!.length,
                itemBuilder: (context, index) {
                  return CompanyEmployeeOrderProudcutCardItem(
                    product: widget.order.products![index],
                  );
                },
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
