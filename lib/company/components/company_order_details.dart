import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/company/companyOrders/model/order_company_model.dart';
import 'package:future_hub/employee/orders/cubit/order_cubit.dart';
import 'package:future_hub/employee/orders/cubit/order_state.dart';

import 'order_card.dart';

class CompanyOrderDetailsScreen extends StatefulWidget {
  const CompanyOrderDetailsScreen({
    this.showActivate = false,
    required this.order,
    super.key,
  });
  final CompanyOrder order;
  final bool showActivate;

  @override
  State<CompanyOrderDetailsScreen> createState() =>
      _CompanyOrdersDetailsScreenState();
}

class _CompanyOrdersDetailsScreenState
    extends State<CompanyOrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return BlocConsumer<OrderCubit, OrderState>(
      listener: (context, state) {},
      builder: (context, state) {
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
                        widget.order.driverImage ?? "",
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(
                      width: size.width * 0.04,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.order!.driverName ?? '',
                          style: theme.textTheme.bodyMedium!.copyWith(
                            fontSize: 23,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                            '${t.reference_number} ${widget.order.referenceNumber}',
                            style: const TextStyle(
                                fontSize: 14,
                                color: Palette.blackColor,
                                height: 1)),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                            '${t.literCount} ${widget.order.totalQuantity} ${t.liter}',
                            style: const TextStyle(
                                fontSize: 14,
                                color: Palette.blackColor,
                                height: 1)),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                            '${t.price} ${widget.order.totalPrice?.toStringAsFixed(2)} ${t.sar}',
                            style: const TextStyle(
                                fontSize: 14,
                                color: Palette.blackColor,
                                height: 1)),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Row(
                          children: [
                            Text(
                              t.vicheleId,
                              style: theme.textTheme.bodySmall,
                            ),
                            const SizedBox(width: 5.0),
                            Text(
                              "${CacheManager.locale! == const Locale("en") ? widget.order.plateLetters?.en : widget.order.plateLetters?.ar} ${widget.order.vehiclePlateNumbers}" ??
                                  "",
                              style: theme.textTheme.bodySmall!.copyWith(
                                color: Palette.blackColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
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
                        style:
                            theme.textTheme.titleLarge!.copyWith(fontSize: 20),
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
                const SizedBox(height: 50.0),
                Expanded(
                  child: ListView.builder(
                    itemCount: widget.order.products!.length,
                    itemBuilder: (context, index) {
                      return CompanyOrderCardItem(
                        product: widget.order.products![index],
                      );
                    },
                  ),
                ),
                // if (widget.showActivate &&
                //     (state.totalDiscount == null || state.totalDiscount == 0.0))
                //   Form(
                //     key: _formKey,
                //     child: Row(
                //       children: [
                //         Expanded(
                //           flex: 3,
                //           child: ChevronLabeledTextField(
                //             controller: _couponController,
                //             label: t.enter_coupon_code,
                //             validator: (String? s) {
                //               if (s!.isEmpty) {
                //                 return t.add_couppn_first;
                //               } else {
                //                 return null;
                //               }
                //             },
                //           ),
                //         ),
                //         Expanded(
                //           flex: 1,
                //           child: ChevronButton(
                //             onPressed: _validCoupon,
                //             loading: _loading,
                //             child: Text(t.next),
                //           ),
                //         ),
                //       ],
                //     ),
                //   ),
                // PuncherCard(
                //   showDirection: order.status == 0,
                //   puncher: order.puncher,
                // ),
                const Spacer(),
              ],
            ),
          ),
        );
      },
    );
  }
}
