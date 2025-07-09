import 'dart:math';

import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_card.dart';
import 'package:future_hub/common/shared/widgets/price_text.dart';
import 'package:future_hub/company/employees/model/driver_model.dart';
import 'package:intl/intl.dart';

import 'company_order_product_card_item.dart';

class ComponyEmployeeOrderCard extends StatelessWidget {
  final bool showPrices;
  final bool showUser;
  final bool summary;
  final bool showTotal;
  final DriverOrder order;
  final bool showQuantity;

  const ComponyEmployeeOrderCard({
    super.key,
    this.showPrices = true,
    this.showUser = true,
    this.summary = true,
    this.showTotal = false,
    this.showQuantity = true,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final shownProducts = summary
        ? order.products!.getRange(0, min(order.products!.length, 2))
        : order.products;

    return ChevronCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            DateFormat(order.createdAt, t.localeName).format(DateTime.now()),
            style: theme.textTheme.bodySmall,
          ),
          const SizedBox(height: 12.0),
          Row(
            children: [
              if (order.referenceNumber != null)
                Expanded(
                  child: Row(
                    children: [
                      Text(
                        t.operation_number,
                        style: theme.textTheme.bodySmall,
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        order.referenceNumber!,
                        style: theme.textTheme.bodySmall!.copyWith(
                          color: Palette.blackColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      t.number_of_products,
                      style: theme.textTheme.bodySmall,
                    ),
                    const SizedBox(width: 5.0),
                    Text(
                      order.products!.length.toString(),
                      style: theme.textTheme.bodySmall!.copyWith(
                        color: Palette.blackColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12.0),
          if (showPrices && showUser)
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          t.client,
                          style: theme.textTheme.bodySmall,
                        ),
                        const SizedBox(width: 5.0),
                        CircleAvatar(
                          radius: 12.0,
                          backgroundImage: NetworkImage(order.driverImage ??
                              'https://unsplash.it/100/100'),
                        ),
                        const SizedBox(width: 5.0),
                        Text(
                          order.driverName ?? "",
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: Palette.blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Text(
                          t.order_total,
                          style: theme.textTheme.bodySmall,
                        ),
                        const SizedBox(width: 5.0),
                        PriceText(
                          price: order.totalPrice?.toDouble() ?? 0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          Text(
            t.products,
            style: theme.textTheme.bodySmall,
          ),
          const SizedBox(height: 12.0),
          for (final _ in shownProducts!)
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: CompanyOrderProductCardItem(
                  showPrice: showPrices,
                  product: _,
                  showQuantity: showQuantity),
            ),
          if (summary && order.products!.length > 2)
            Text(
              '+${order.products!.length - 2} ${t.other_products}',
              style: theme.textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.bold,
                color: Palette.primaryColor,
              ),
            ),
          if (showTotal)
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Divider(
                  color: Colors.grey.withOpacity(0.25),
                  thickness: 1,
                  endIndent: 10,
                  indent: 10,
                ),
                // if (order.vatValue != null)
                //   Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 10),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text(
                //           t.tax,
                //           style: theme.textTheme.titleMedium!
                //               .copyWith(fontWeight: FontWeight.w700),
                //         ),
                //         PriceText(
                //           price: order.vatValue!,
                //         ),
                //       ],
                //     ),
                //   ),
                const SizedBox(
                  height: 10,
                ),
                // if (order.discount != null)
                //   Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 10),
                //     child: Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: [
                //         Text(
                //           t.discount,
                //           style: theme.textTheme.titleMedium!
                //               .copyWith(fontWeight: FontWeight.w700),
                //         ),
                //         PriceText(
                //           price: order.discount!,
                //         ),
                //       ],
                //     ),
                //   ),
                // const SizedBox(
                //   height: 10,
                // ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        t.total,
                        style: theme.textTheme.titleMedium!
                            .copyWith(fontWeight: FontWeight.w700),
                      ),
                      PriceText(
                        price: order.totalPrice?.toDouble() ?? 0,
                      ),
                    ],
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}
