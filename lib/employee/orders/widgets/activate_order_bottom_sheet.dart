import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/shared/widgets/chevron_bottom_sheet.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/employee/orders/cubit/employee_punchers_cubit.dart';
import 'package:future_hub/employee/orders/cubit/order_cubit.dart';
import 'package:future_hub/employee/orders/services/order_service.dart';
import 'package:go_router/go_router.dart';

import '../../../common/shared/palette.dart';
import 'meter_number_bottom_sheet.dart';
import 'order_qr_code_bottom_sheet.dart';

class ActivateOrderBottomSheet extends StatefulWidget {
  const ActivateOrderBottomSheet({super.key});

  @override
  State<ActivateOrderBottomSheet> createState() =>
      _ActivateOrderBottomSheetState();
}

class _ActivateOrderBottomSheetState extends State<ActivateOrderBottomSheet> {
  final _orderService = OrderService();
  bool _loading = false;
  Future<void> _handleFinishOrder(
      BuildContext context, String refNumber) async {
    try {
      // Call finishOrder with a null image
      await _orderService.finishOrder(
        image: null, // Send null image
        refNumber: refNumber,
      );

      // Ensure context is still valid before navigation
      if (context.mounted) {
        Navigator.pop(context); // Close loading indicators or previous screens
        Navigator.pop(context);
        Navigator.pop(context);

        showModalBottomSheet(
          context: context,
          builder: (context) => const OrderQrCodeBottomSheet(),
        );
      }
    } catch (e) {
      debugPrint("Error in finishOrder: $e");

      // Ensure context is still valid before showing the toast
      if (context.mounted) {
        Navigator.pop(context); // Close loading indicators
        showToast(
          text: "Failed to complete order: $e",
          state: ToastStates.error,
        );
      }
    }
  }

  Future<void> _createOrder() async {
    final orderCubit = context.read<OrderCubit>();
    final state = orderCubit.state;
    await runFetch(
      context: context,
      fetch: () async {
        setState(() => _loading = true);
        final punchersCubit = context.read<EmployeePunchersCubit>();
        final branch = punchersCubit.cubitPunchers
            .firstWhere((b) => b.id == state.branchId);
        final order = await _orderService.createOrder(
          totalPrice: state.totalPrice,
          vehicleId: state.vehicleId ?? 0,
          products: state.products!.values.toList(),
          puncher: branch.serviceProviderId ?? 0,
          branch: branch.id ?? 0,
          coupon: state.coupon,
        );
        orderCubit.orderCreated(order);
        if (!mounted) return;
        // OrdersCubit.get(context).updatOrders();
        context.pop();
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(26)),
          ),
          builder: (context) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
                top: 20,
                left: 20,
                right: 20,
              ),
              child: BlocBuilder<AuthCubit, AuthState>(
                builder: (context, authState) {
                  if (authState is AuthSignedIn) {
                    if (authState.user.isMeterImageRequired == 1) {
                      // Show the CarNumberBottomSheet
                      return const CarNumberBottomSheet();
                    } else {
                      // Handle navigation and async logic in a method
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        _handleFinishOrder(
                            context, order.referenceNumber.toString());
                      });

                      return const SizedBox.shrink(); // Placeholder widget
                    }
                  } else {
                    return const SizedBox
                        .shrink(); // Handle other AuthState cases
                  }
                },
              ),
            );
          },
        );
      },
      after: () {
        setState(() => _loading = false);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final size = MediaQuery.sizeOf(context);

    return ChevronBottomSheet(
      hasRadius: true,
      child: _loading
          ? const SizedBox(
              height: 200,
              child: Center(
                child: CircularProgressIndicator.adaptive(),
              ),
            )
          : Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 130,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Palette.textFeildBorder,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    t.do_you_want_to_activate,
                    style: theme.textTheme.titleLarge!.copyWith(
                      color: Palette.primaryColor,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Center(
                  child: SvgPicture.asset(
                    "assets/icons/timer.svg",
                    colorFilter: const ColorFilter.mode(
                        Palette.primaryColor, BlendMode.srcATop),
                    height: 35,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ChevronButton(
                    onPressed: _createOrder,
                    child: Text(t.activate),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: size.width,
                  child: ChevronButton(
                    onPressed: () => Navigator.pop(context),
                    style: ChevronButtonStyle.disabled,
                    child: Text(t.not_now),
                  ),
                ),
              ],
            ),
    );
  }
}
