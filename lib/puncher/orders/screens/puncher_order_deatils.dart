import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/employee/orders/cubit/order_cubit.dart';
import 'package:future_hub/employee/orders/cubit/order_state.dart';
import 'package:future_hub/employee/orders/widgets/activate_order_bottom_sheet.dart';
import 'package:future_hub/puncher/orders/model/service_provider_order_model.dart';

class PuncherOrdersDetailsScreen extends StatefulWidget {
  const PuncherOrdersDetailsScreen({
    this.showActivate = false,
    required this.order,
    super.key,
  });

  final Datum order;
  final bool showActivate;

  @override
  State<PuncherOrdersDetailsScreen> createState() =>
      _PuncherOrdersDetailsScreenState();
}

class _PuncherOrdersDetailsScreenState
    extends State<PuncherOrdersDetailsScreen> {
  // final _couponController = TextEditingController();
  // bool _loading = false;
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  // Future<void> _validCoupon() async {
  //   _formKey.currentState!.save();
  //   if (_formKey.currentState!.validate()) {
  //     setState(() {
  //       _loading = true;
  //     });
  //     final result = await context
  //         .read<OrderCubit>()
  //         .validateOrder(context, coupon: _couponController.text);
  //     if (result.runtimeType == String) {
  //       setState(() {
  //         _loading = false;
  //       });
  //       showToast(text: result, state: ToastStates.error);
  //     }
  //     setState(() {
  //       _loading = false;
  //     });
  //   }
  // }

  void _activateOrder(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      )),
      backgroundColor: Colors.transparent,
      context: context,
      builder: (context) => const ActivateOrderBottomSheet(),
    );
  }

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
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        flex: 2,
                        child: Text(
                          overflow: TextOverflow.ellipsis,
                          widget.order.totalQuantity == null
                              ? widget.order.serviceName ?? ""
                              : widget.order.fuelType ?? "",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const Spacer(),
                      widget.order.totalQuantity == null
                          ? Image.network(
                              widget.order.serviceImage ?? "",
                              width: 75,
                              height: 75,
                            )
                          : Image.asset(
                              'assets/images/automotive.png',
                              width: 75,
                              height: 75,
                            ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 16),
                      Column(
                        children: [
                          Text(
                            t.vicheleId,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "${CacheManager.locale! == const Locale("en") ? widget.order.plateLetters?.en : widget.order.plateLetters?.ar} - ${widget.order.vehiclePlateNumbers}",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      _buildLicensePlate(widget.order),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                widget.order.totalQuantity == null
                    ? Container(
                        // width: 300,
                        // height: 300,
                        decoration: BoxDecoration(
                          color: const Color(0xffF9F9F9),
                          borderRadius: BorderRadius.circular(
                              10), // Circular border radius
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    t.price,
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${widget.order.totalPrice} ${t.sar}',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff55217F),
                                    ),
                                  ),
                                ],
                              ),
                              // const SizedBox(height: 16.0),
                              // const Divider(thickness: 1.0),
                              // const SizedBox(height: 16.0),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(width: 5),
                            Text('${widget.order.totalPrice} ${t.sar}' ?? "",
                                style: const TextStyle(fontSize: 18)),
                            const SizedBox(width: 16),
                            CircleAvatar(
                              backgroundColor: const Color(0xff55217F),
                              radius: 15,
                              child: Image.asset(
                                'assets/icons/equal.png',
                                height: 21,
                                width: 21,
                              ),
                            ),
                            const SizedBox(width: 16),
                            Text('${widget.order.totalQuantity} ${t.liter}',
                                style: const TextStyle(fontSize: 18)),
                            const SizedBox(width: 5),
                          ],
                        ),
                      ),
                const Spacer(),
                // if (widget.showActivate)
                //   ChevronButton(
                //     onPressed: () => _activateOrder(context),
                //     child: Text(
                //       t.finish_the_order,
                //       style: const TextStyle(fontSize: 22),
                //     ),
                //   ),
              ],
            ),
          ),
        );
      },
    );
  }
}

Widget _buildLicensePlate(Datum order) {
  return Container(
    width: 120,
    height: 60,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/ksav.png',
                  width: 12,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Container(
          width: 1,
          height: double.infinity,
          color: Colors.black,
        ),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        order.plateLetters?.ar ?? "",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 30,
                      color: Colors.black,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        order.vehiclePlateNumbers ?? "",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 1,
                width: double.infinity,
                color: Colors.black,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        order.plateLetters?.en ?? "",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      width: 1,
                      height: 30,
                      color: Colors.black,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        order.vehiclePlateNumbers ?? "",
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
