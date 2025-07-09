import 'dart:math';

import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/models/order_model.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_card.dart';
import 'package:future_hub/common/shared/widgets/order_card_item.dart';
import 'package:future_hub/common/shared/widgets/price_text.dart';
import 'package:intl/intl.dart';

class OrderCard extends StatelessWidget {
  final bool showPrices;
  final bool showUser;
  final bool summary;
  final bool showTotal;
  final Order order;
  final bool showQuantity;

  const OrderCard({
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
            DateFormat(order.createdAt.toString(), t.localeName)
                .format(DateTime.now()),
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
                        order.referenceNumber!.toString(),
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
                          backgroundImage: NetworkImage(order.user!.image ??
                              'https://unsplash.it/100/100'),
                        ),
                        const SizedBox(width: 5.0),
                        Text(
                          order.user!.name ?? "",
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
                          price:
                              double.tryParse(order.totalPrice ?? "0.0") ?? 0.0,
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
              child: OrderCardItem(
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
                if (order.vatValue != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          t.tax,
                          style: theme.textTheme.titleMedium!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        PriceText(
                          price: order.vatValue?.toDouble() ?? 0.0,
                        ),
                      ],
                    ),
                  ),
                const SizedBox(
                  height: 10,
                ),
                if (order.discount != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          t.discount,
                          style: theme.textTheme.titleMedium!
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        PriceText(
                          price: order.discount?.toDouble() ?? 0.0,
                        ),
                      ],
                    ),
                  ),
                const SizedBox(
                  height: 10,
                ),
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
                        price:
                            double.tryParse(order.totalPrice ?? "0.0") ?? 0.0,
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
