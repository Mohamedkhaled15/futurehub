import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/puncher/orders/model/service_provider_order_model_confirm_canel.dart';

class ConfirmOrderItemCard extends StatelessWidget {
  final bool showPrice;
  final Product product;
  final bool showQuantity;

  const ConfirmOrderItemCard({
    super.key,
    this.showPrice = false,
    this.showQuantity = true,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    final t = AppLocalizations.of(context)!;

    return Container(
      color: Colors.transparent,
      height: 115,
      child: Stack(
        children: [
          SizedBox(
            height: 140,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      Container(
                        height: size.height * 0.1,
                        width: size.width * 0.32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Palette.productBackground,
                        ),
                      ),
                      // ClipRRect(
                      //   borderRadius: BorderRadius.circular(10.0),
                      //   child: Image.network(
                      //     product.product!.imagePath ?? 'https://unsplash.it/75/75',
                      //     width: 36.0,
                      //     height: 36.0,
                      //     fit: BoxFit.contain,
                      //   ),
                      // ),
                      // const SizedBox(width: 8.0),
                      // Expanded(
                      //   child: Text(
                      //     product.product!.title,
                      //     style: theme.textTheme.bodyMedium,
                      //   ),
                      // ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        CacheManager.locale! == const Locale("en")
                            ? product.title?.en ?? ""
                            : product.title?.ar ?? "",
                        style:
                            theme.textTheme.titleLarge!.copyWith(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      if (showPrice)
                        Text(
                          "${product.price} ${t.sar}",
                          style: theme.textTheme.titleSmall!
                              .copyWith(fontSize: 20),
                        ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          if (showQuantity)
                            Text(
                              CacheManager.locale! == const Locale("en")
                                  ? product.packing?.en ?? ""
                                  : product.packing?.ar ?? "",
                              style: theme.textTheme.titleSmall!.copyWith(
                                  fontSize: 20, color: Palette.primaryColor),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: -4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.transparent,
              ),
              child: Image.network(
                product.image ?? 'https://unsplash.it/75/75',
                height: size.height * 0.14,
                width: size.width * 0.32,
                // fit: BoxFit.contain,
              ),
              // Transform.rotate(
              //   angle: math.pi / 12,
              //   child: Image.network(
              //     product.product!.imagePath ?? 'https://unsplash.it/75/75',
              //     height: size.height * 0.14,
              //     width: size.width * 0.32,
              //     // fit: BoxFit.contain,
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
