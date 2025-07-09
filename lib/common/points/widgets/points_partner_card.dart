import 'package:future_hub/common/points/models/gift_brand.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:intl/intl.dart';

import '../../shared/palette.dart';

class PointsPartnerCard extends StatelessWidget {
  const PointsPartnerCard({required this.brand, super.key});
  final GiftBrand brand;

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Palette.tabBarColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 5,
        ),
        child: Theme(
          data: ThemeData(dividerColor: Colors.transparent),
          child: ExpansionTile(
            iconColor: Palette.primaryColor,
            textColor: Palette.primaryColor,
            title: Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    brand.logo,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: Text(
                    brand.name,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                )
              ],
            ),
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: brand.denominations
                    .where(
                      (element) => element.amount != null && element.isActive!,
                    )
                    .length,
                itemBuilder: (context, index) {
                  var formatter = NumberFormat('#,###,000');
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 50,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              brand.denominations[index].points != null
                                  ? "${brand.denominations[index].points.toString()}  ${t.point}"
                                  : "",
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Palette.primaryColor,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  formatter.format(
                                    brand.denominations[index].amount,
                                  ),
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Palette.blackColor,
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  t.sar,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    color: Palette.blackColor,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        if (brand.denominations.length != index + 1)
                          Divider(
                            thickness:
                                MediaQuery.of(context).size.height * 0.0001,
                            color: Palette.dividerColor,
                          ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
