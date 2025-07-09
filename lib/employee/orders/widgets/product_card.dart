import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_card.dart';
import 'package:future_hub/company/products/widgets/product_quantity_controls.dart';
import 'package:future_hub/employee/orders/cubit/order_cubit.dart';
import 'package:future_hub/employee/orders/cubit/order_state.dart';

import '../../../common/shared/models/products.dart';

class EmployeeProductCard extends StatefulWidget {
  final CompanyProduct product;
  final void Function()? onPressed;

  const EmployeeProductCard({
    super.key,
    required this.product,
    this.onPressed,
  });

  @override
  State<EmployeeProductCard> createState() => _EmployeeProductCardState();
}

class _EmployeeProductCardState extends State<EmployeeProductCard> {
  void _incrementQuantity() {
    final orderCubit = context.read<OrderCubit>();
    final isSelected =
        orderCubit.state.products!.containsKey(widget.product.id.toString());

    if (isSelected) {
      orderCubit.incrementProductQuantity(widget.product.id.toString());
    } else {
      orderCubit.addProduct(widget.product);
    }
  }

  void _decrementQuantity() {
    final orderCubit = context.read<OrderCubit>();
    orderCubit.decrementProductQuantity(widget.product.id.toString());
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return ChevronCard(
      onPressed: widget.onPressed,
      child: Column(
        children: [
          BlocBuilder<OrderCubit, OrderState>(
            builder: (context, state) {
              final isSelected = state.products!.containsKey(widget.product.id);
              final quantity =
                  isSelected ? state.products![widget.product.id]!.quantity : 0;
              final TextEditingController _quantityController =
                  TextEditingController();
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Theme(
                    data: Theme.of(context).copyWith(
                      unselectedWidgetColor: Palette.primaryColor,
                    ),
                    child: Checkbox(
                      activeColor: Palette.primaryColor,
                      value: isSelected,
                      onChanged: (value) {
                        final orderCubit = context.read<OrderCubit>();
                        if (value == true) {
                          orderCubit.addProduct(widget.product);
                        } else {
                          orderCubit
                              .removeProduct(widget.product.id.toString());
                        }
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          5,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.network(
                      widget.product.image ??
                          "https://i5.walmartimages.com/asr/462c1ae6-966c-4652-b93e-8559e992d45b.031cacbaeeac39e5a5aaee89579a5e73.jpeg",
                      height: 80.0,
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          widget.product.title?.ar ?? "",
                          style: theme.textTheme.bodyLarge!.copyWith(
                              fontSize: 18, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(height: 16.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '${widget.product.price}',
                                    style: theme.textTheme.bodyLarge!.copyWith(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  TextSpan(
                                    text: t.sar,
                                    style: theme.textTheme.bodySmall!,
                                  ),
                                ],
                              ),
                            ),
                            ProductQuantityControls(
                              onDecrement: _decrementQuantity,
                              onIncrement: _incrementQuantity,
                              quantity: quantity,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
          const Divider(height: 20.0),
          ChevronButton(
            dense: true,
            onPressed: widget.onPressed,
            style: ChevronButtonStyle.text(Palette.primaryColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/product-details.svg'),
                const SizedBox(width: 8.0),
                Text(t.product_details),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
