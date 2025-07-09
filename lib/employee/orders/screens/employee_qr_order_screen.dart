import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/models/order_model.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/employee/orders/cubit/order_cubit.dart';
import 'package:future_hub/employee/orders/cubit/order_state.dart';
import 'package:go_router/go_router.dart';
import 'package:qr_flutter/qr_flutter.dart';

class OrderQrCodeScreen extends StatelessWidget {
  final Order order;
  const OrderQrCodeScreen({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: const Color(0xffFCFCFC),
      appBar: FutureHubAppBar(
        title: Text(
          t.order_details,
          style: const TextStyle(
              color: Palette.blackColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        context: context,
      ),
      body: BlocBuilder<OrderCubit, OrderState>(
        builder: (context, state) {
          if (state is OrderCreatedState) {
            return Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  // Profile Avatar above QR container
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      // White container with QR code
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.only(top: 40, bottom: 20),
                        margin: const EdgeInsets.only(top: 30, bottom: 20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            // QR Code
                            QrImageView(
                              data: order.referenceNumber.toString(),
                              size: 200,
                              dataModuleStyle: const QrDataModuleStyle(
                                color: Palette.primaryColor,
                                dataModuleShape: QrDataModuleShape.square,
                              ),
                              eyeStyle: const QrEyeStyle(
                                color: Palette.primaryColor,
                                eyeShape: QrEyeShape.square,
                              ),
                            ),
                            const SizedBox(height: 16),
                          ],
                        ),
                      ),

                      // Circular Avatar with face.png
                      Positioned(
                        top: 0,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: Image.asset(
                              'assets/icons/face.png',
                              width: 70,
                              height: 70,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  // Order reference number
                  const SizedBox(height: 20),
                  Center(
                    child: Text(
                      '${t.user_code} : ${state.referenceNumber}',
                      style: const TextStyle(
                          fontSize: 17,
                          color: Color(0xff030D33),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      // border: Border.all(
                      //   color: const Color(0xFFA4A4A4),
                      //   width: 1,
                      // ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () => context.push(
                            '/employees/order-details',
                            extra: order,
                          ),
                          child: Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    t.details,
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Palette.blackColor,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    t.show_content,
                                    style: const TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff55217F),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                              const Spacer(),
                              CircleAvatar(
                                backgroundColor: const Color(0xffEDEEFF),
                                radius: 10,
                                child: Image.asset(
                                  'assets/icons/vector.png',
                                  height: 7,
                                  width: 12,
                                ),
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: const Color(0xffA4A4A4).withOpacity(0.1),
                          thickness: 1,
                          endIndent: 10,
                          indent: 10,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          t.services_provider,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Palette.blackColor,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          order.puncherName ?? "",
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff55217F),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const Spacer(),

                  // Confirm button
                  SizedBox(
                    width: double.infinity,
                    child: ChevronButton(
                      child: Text(t.home),
                      onPressed: () {
                        Navigator.popUntil(
                          context,
                          (route) => route.isFirst,
                        );
                      },
                    ),
                  ),
                ],
              ),
            );
          }
          return const SizedBox(
            height: 200,
            child: Center(
              child: CircularProgressIndicator.adaptive(),
            ),
          );
        },
      ),
    );
  }
}
