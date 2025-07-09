import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/employee/orders/models/employee_order_model.dart';
// import '../../l10n/app_localizations.dart';
import 'package:intl/intl.dart';

class ServicesOrderCard extends StatelessWidget {
  const ServicesOrderCard(
      {required this.order, required this.isLast, super.key});
  final EmployeeOrder order;
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

      return '$timeString\n\n$dayString $monthString ,$yearString';
    }

    final theme = Theme.of(context);
    // final t = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;
    String formattedDateTime =
        formatDateTime(DateTime.parse(order.createdAt ?? ''));

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    color: const Color(0xff522B85),
                    'assets/icons/shoopping-bag.svg',
                    // colorFilter: ColorFilter.mode(Palette.primaryColor,BlendMode.src),
                    height: size.height * 0.03,
                  ),
                  SizedBox(
                    width: size.width * 0.04,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        order.puncherName ?? '',
                        style: theme.textTheme.bodyMedium!.copyWith(
                          fontSize: 23,
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      Text('#${order.referenceNumber}',
                          style: const TextStyle(
                            fontSize: 18,
                            color: Palette.textGreyColor,
                          )),
                    ],
                  ),
                ],
              ),
              Text(
                formattedDateTime,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          if (!isLast)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: Divider(
                thickness: size.height * 0.0001,
                color: Palette.dividerColor.withOpacity(0.95),
              ),
            )
        ],
      ),
    );
  }
}
