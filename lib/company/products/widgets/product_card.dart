import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/shared/models/products.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_card.dart';
import 'package:future_hub/common/shared/widgets/price_text.dart';
import 'package:future_hub/company/products/widgets/change_public_price_bottom_sheet.dart';

import '../../../l10n/app_localizations.dart';

class ProductCard extends StatelessWidget {
  final void Function()? onPressed;
  final bool details;
  final CompanyProduct product;

  const ProductCard({
    super.key,
    required this.product,
    this.onPressed,
    this.details = false,
  });

  void _changePublicPrice(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (context) {
          return ChangePublicPriceBottomSheet(
            originalPrice: double.parse(product.price),
            publicPrice: double.parse(product.price),
            productId: product.id.toString(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return ChevronCard(
      onPressed: onPressed,
      child: Column(
        children: [
          Row(
            children: [
              Image.network(
                product.image ??
                    'https://i5.walmartimages.com/asr/462c1ae6-966c-4652-b93e-8559e992d45b.031cacbaeeac39e5a5aaee89579a5e73.jpeg',
                height: 75.0,
                width: 75.0,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: 10.0),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: Text(
                              product.title.ar ?? "",
                              maxLines: 2,
                              style: theme.textTheme.bodyLarge,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                        if (details)
                          PriceText(
                            price: double.parse(product.price),
                          ),
                      ],
                    ),
                    if (details)
                      Text(
                        product.price ?? '',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: theme.textTheme.bodySmall!.copyWith(height: 1.5),
                      )
                    else
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              PriceText(price: double.parse(product.price)),
                              const SizedBox(height: 5.0),
                              Text(
                                t.original_price,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              PriceText(price: double.parse(product.price) ?? 0),
                              const SizedBox(height: 5.0),
                              Text(
                                t.public_price,
                                style: theme.textTheme.bodySmall,
                              ),
                            ],
                          ),
                        ],
                      ),
                  ],
                ),
              ),
            ],
          ),
          if (!details) ...[
            const Divider(height: 32.0),
            ChevronButton(
              onPressed: () => _changePublicPrice(context),
              dense: true,
              style: ChevronButtonStyle.text(Palette.primaryColor),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/ticket.svg'),
                  const SizedBox(width: 8.0),
                  Text(t.change_public_price),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}
