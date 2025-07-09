import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/palette.dart';

import '../../l10n/app_localizations.dart';

class BestCarOilCard extends StatelessWidget {
  const BestCarOilCard({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;
    final direction = Directionality.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Container(
        color: Palette.whiteColor,
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 4,
                  child: SizedBox(
                      height: size.height * 0.16,
                      child: Image.asset(
                        'assets/images/car-oils.png',
                        fit: BoxFit.contain,
                      )),
                ),
                SizedBox(
                  width: size.width * 0.04,
                ),
                Expanded(
                  flex: 4,
                  child: SizedBox(
                    width: size.width * 0.4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          t.best_oil_for_your_car,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Palette.blackColor,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.008,
                        ),
                        Text(
                          t.choose_best_oil,
                          softWrap: true,
                          maxLines: 2,
                          style: const TextStyle(
                            fontSize: 12,
                            color: Palette.textGreyColor,
                            // height: size.height * 0.002,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: SizedBox(),
                )
              ],
            ),
            // flipY: true,
            Positioned(
                right: direction == TextDirection.rtl ? null : 0,
                left: direction == TextDirection.rtl ? 0 : null,
                bottom: 0,
                child: GestureDetector(
                  onTap: () {
                    // context.push('/employee/oil/search');
                  },
                  child: Transform.flip(
                      flipX: direction == TextDirection.ltr,
                      child: Image.asset(
                        'assets/images/know.png',
                        height: 33,
                        width: 67,
                      )),
                )),
            Positioned(
              right: direction == TextDirection.rtl ? null : size.width * 0.03,
              left: direction == TextDirection.rtl ? size.width * 0.035 : null,
              bottom: 7,
              child: GestureDetector(
                onTap: () {
                  // context.push('/employee/oil/search');
                },
                child: Row(
                  children: [
                    Text(
                      t.know_more,
                      style: const TextStyle(
                        color: Palette.whiteColor,
                        fontSize: 12,
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Palette.whiteColor,
                      size: 10,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
