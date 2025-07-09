import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_bottom_sheet.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/price_text.dart';
import 'package:go_router/go_router.dart';

class ChangePublicPriceBottomSheet extends StatefulWidget {
  final double originalPrice;
  final double publicPrice;
  final String productId;

  const ChangePublicPriceBottomSheet(
      {super.key,
      required this.originalPrice,
      required this.publicPrice,
      required this.productId});

  @override
  State<ChangePublicPriceBottomSheet> createState() =>
      _ChangePublicPriceBottomSheetState();
}

class _ChangePublicPriceBottomSheetState
    extends State<ChangePublicPriceBottomSheet> {
  late TextEditingController _controller;

  _change(context, double price, String productId) async {
    // await ProductsCubit.get(context).updateProduct(
    //   context: context,
    //   price: price,
    //   productId: productId,
    // );
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();

    _controller = TextEditingController(
      text: widget.originalPrice.toString(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: ChevronBottomSheet(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              t.change_public_price,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleLarge,
            ),
            const SizedBox(height: 18.0),
            Container(
              padding: const EdgeInsets.all(16.0),
              color: Palette.primaryColor.withOpacity(0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    t.original_price,
                    style: theme.textTheme.bodyLarge,
                  ),
                  PriceText(
                    price: widget.originalPrice,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8.0),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              color: Palette.primaryColor.withOpacity(0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    t.public_price,
                    style: theme.textTheme.bodyLarge,
                  ),
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      textDirection: TextDirection.ltr,
                      textAlign: TextAlign.left,
                      style: theme.textTheme.bodyLarge,
                      decoration: InputDecoration.collapsed(
                        hintText: t.public_price,
                      ).copyWith(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 16.0,
                          horizontal: 8.0,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    ' ${t.sar}',
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),
            ChevronButton(
              onPressed: () {
                _change(
                    context, double.parse(_controller.text), widget.productId);
              },
              child: Text(t.change),
            ),
            const SizedBox(height: 16.0),
            ChevronButton(
              onPressed: context.pop,
              style: ChevronButtonStyle.text(),
              child: Text(t.back),
            ),
          ],
        ),
      ),
    );
  }
}
