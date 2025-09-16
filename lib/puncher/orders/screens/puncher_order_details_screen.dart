import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/puncher/orders/model/service_provider_order_model_confirm_canel.dart';
import 'package:future_hub/puncher/orders/services/puncher_order_services.dart';
import 'package:go_router/go_router.dart';

import '../../../l10n/app_localizations.dart';

class PuncherOrderDetailsScreen extends StatefulWidget {
  static const orderDoneStatus = 1;
  final ServiceProviderOrderConfirmCancelModel order;

  const PuncherOrderDetailsScreen({required this.order, super.key});

  @override
  State<PuncherOrderDetailsScreen> createState() => _PuncherOrderDetailsScreenState();
}

class _PuncherOrderDetailsScreenState extends State<PuncherOrderDetailsScreen> {
  final showUser = false;

  final _ordersService = PuncherOrderServices();

  // void _orderDone(BuildContext context) {
  //   if (widget.order.data?.referenceNumber == null) return;
  //   showModalBottomSheet(
  //     context: context,
  //     builder: (context) => OrderDoneBottomSheet(
  //       referenceNumber: widget.order.data!.referenceNumber!,
  //     ),
  //   );
  // }

  void navigateToCarNumberScreen(BuildContext context) {
    final referenceNumber = widget.order.data!.referenceNumber!;
    final type = widget.order.type ?? "";
    final vehicleId = widget.order.data!.vehicleId ?? "";

    log("$referenceNumber $type $vehicleId");
    context.pushReplacementNamed(
      'carNumber',
      pathParameters: {
        'referenceNumber': referenceNumber,
        'type': type,
        'vehicle_id': vehicleId.toString(),
      },
    );
  }

  bool isButtonEnabled = true;

  Future<void> _confirm(BuildContext context) async {
    if (widget.order.data?.referenceNumber == null) return;
    debugPrint("helloooo");
    if (isButtonEnabled) {
      // Disable the button
      setState(() {
        isButtonEnabled = false;
      });
      // Open the OTP bottom sheet immediately
      navigateToCarNumberScreen(context);
      // Run the OTP sending process in the background
      await runFetch(
        context: context,
        fetch: () async {
          await _ordersService.sendOtp(
              widget.order.data!.referenceNumber!, widget.order.type ?? "");
        },
        after: () {
          // Optionally handle any post-OTP logic here
        },
      );
      // Re-enable the button after 10 seconds
      Future.delayed(const Duration(seconds: 10), () {
        if (mounted) {
          setState(() {
            isButtonEnabled = true;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(t.order_details),
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
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      widget.order.data?.totalQuantity == null
                          ? widget.order.data?.serviceName ?? ""
                          : widget.order.data?.fuelType ?? "",
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  widget.order.data?.totalQuantity == null
                      ? Image.network(
                          widget.order.data?.serviceImage ?? "",
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
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
                        "${CacheManager.locale! == const Locale("en") ? widget.order.data?.plateLetters?.en : widget.order.data?.plateLetters?.ar} - ${widget.order.data?.vehiclePlateNumbers}",
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  _buildLicensePlate(widget.order.data),
                ],
              ),
            ),
            const SizedBox(height: 20),
            widget.order.data?.totalQuantity == null
                ? Container(
                    // width: 300,
                    // height: 300,
                    decoration: BoxDecoration(
                      color: const Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(10), // Circular border radius
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                '${widget.order.data?.totalPrice} ${t.sar}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff55217F),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                : Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 5),
                        Text('${widget.order.data?.totalPrice} ${t.sar}' ?? "",
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
                        Text('${widget.order.data?.totalQuantity} ${t.liter}',
                            style: const TextStyle(fontSize: 18)),
                        const SizedBox(width: 5),
                      ],
                    ),
                  ),
            const Spacer(),
            if (widget.order.data?.status != PuncherOrderDetailsScreen.orderDoneStatus)
              SizedBox(
                width: double.infinity,
                child: ChevronButton(
                  onPressed: () => _confirm(context),
                  child: Text(t.order_has_been_done),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

Widget _buildLicensePlate(Data? order) {
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
                        order?.plateLetters?.ar ?? "",
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
                        order?.vehiclePlateNumbers ?? "",
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
                        order?.plateLetters?.en ?? "",
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
                        order?.vehiclePlateNumbers ?? "",
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
