import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/models/order_model.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/employee/orders/cubit/order_cubit.dart';
import 'package:future_hub/employee/orders/cubit/order_state.dart';

class EmployeesOrderDetailsScreen extends StatelessWidget {
  const EmployeesOrderDetailsScreen({
    this.showActivate = false,
    required this.order,
    super.key,
  });

  final Order order;
  final bool showActivate;

  // final _couponController = TextEditingController();
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
                      Text(
                        order.totalQuantity == null
                            ? order.serviceName ?? ""
                            : order.fueType ?? "",
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      order.totalQuantity == null
                          ? Image.network(
                              order.serviceImage ?? "",
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
                            "${CacheManager.locale! == const Locale("en") ? order.plateLetters?.en : order.plateLetters?.ar} - ${order.vehiclePlateNumbers}",
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      _buildLicensePlate(order),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                order.totalQuantity == null
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
                                    '${order.totalPrice} ${t.sar}',
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
                            Text('${order.totalPrice} ${t.sar}' ?? "",
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
                            Text('${order.totalQuantity.toString()} ${t.liter}',
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

Widget _buildLicensePlate(Order order) {
  return Container(
    width: 120, // Adjust width to fit content
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
                  'assets/images/ksav.png', // Replace with your asset path
                  width: 12,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        const VerticalDivider(color: Colors.black, thickness: 1, width: 1),
        Expanded(
          flex: 3,
          child: Column(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      order.plateLetters?.ar ?? "",
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    const VerticalDivider(
                        color: Colors.black, thickness: 1, width: 1),
                    Text(
                      order.vehiclePlateNumbers ?? "",
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.black, thickness: 1, height: 1),
              const VerticalDivider(
                  color: Colors.black, thickness: 1, width: 1),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      order.plateLetters?.en ?? "",
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 5.0),
                      child: VerticalDivider(
                          color: Colors.black, thickness: 1, width: 1),
                    ),
                    Text(
                      order.vehiclePlateNumbers ?? "",
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold),
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
