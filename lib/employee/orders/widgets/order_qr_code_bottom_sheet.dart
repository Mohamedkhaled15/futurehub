import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_bottom_sheet.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/employee/orders/cubit/order_cubit.dart';
import 'package:future_hub/employee/orders/cubit/order_state.dart';
import 'package:qr_flutter/qr_flutter.dart';

class OrderQrCodeBottomSheet extends StatelessWidget {
  const OrderQrCodeBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);
    return ChevronBottomSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Icon(
                  (Icons.arrow_back),
                  color: Palette.primaryColor,
                  size: 30,
                ),
              ),
              SizedBox(
                width: size.width * 0.20,
              ),
              Text(
                t.scan_the_order_code,
                style: theme.textTheme.titleMedium!
                    .copyWith(fontWeight: FontWeight.w700),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          BlocBuilder<OrderCubit, OrderState>(
            builder: (context, state) {
              if (state is OrderCreatedState) {
                return Column(
                  children: [
                    Center(
                      child: QrImageView(
                        data: state.referenceNumber,
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
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        '${t.user_code} : ${state.referenceNumber}',
                        style: const TextStyle(
                            fontSize: 17, color: Palette.blackColor),
                      ),
                    ),
                  ],
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
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              t.click_this_button_when_order_is_completed,
              style: const TextStyle(fontSize: 15, color: Palette.greyColor),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          ChevronButton(
            child: Text(t.confirm_order),
            onPressed: () {
              Navigator.popUntil(
                context,
                (route) => route.isFirst,
              );
            },
          ),
        ],
      ),
    );
  }
}
