import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:go_router/go_router.dart';

import '../../../employee/orders/cubit/order_cubit.dart';
import '../../../employee/orders/cubit/order_state.dart';

class FutureHubAppBar extends AppBar {
  FutureHubAppBar(
      {super.key,
      super.title,
      required BuildContext context,
      Color color = Palette.whiteColor,
      bool isCart = false,
      int count = 0,
      Function()? onTap,
      Function()? onCartTap})
      : super(
          backgroundColor: color,
          elevation: 0.0,
          centerTitle: true,
          actions: [
            Directionality.of(context) == TextDirection.rtl
                ? ChevronBackButton(
                    color: color,
                    onTap: onTap,
                  )
                : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: isCart
                        ? GestureDetector(
                            onTap: onCartTap,
                            child: Stack(
                              children: <Widget>[
                                SvgPicture.asset(
                                  'assets/icons/cart.svg',
                                  width: 40,
                                  height: 40,
                                ),
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    padding: const EdgeInsets.all(1),
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    constraints: const BoxConstraints(
                                      minWidth: 12,
                                      minHeight: 12,
                                    ),
                                    child: BlocBuilder<OrderCubit, OrderState>(
                                        builder: (context, state) {
                                      return Center(
                                        child: Text(
                                          state.totalQuantity.toString(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 8,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      );
                                    }),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : SvgPicture.asset(
                            'assets/icons/app-bar-logo.svg',
                            height: 30,
                          ),
                  ),
          ],
          leading: Directionality.of(context) == TextDirection.ltr
              ? ChevronBackButton(
                  color: color,
                  onTap: onTap,
                )
              : isCart
                  ? GestureDetector(
                      onTap: onCartTap,
                      child: Stack(
                        children: <Widget>[
                          SvgPicture.asset(
                            'assets/icons/cart.svg',
                            width: 35,
                            height: 35,
                          ),
                          Positioned(
                            top: 10,
                            right:
                                Directionality.of(context) == TextDirection.rtl
                                    ? null
                                    : 0,
                            left:
                                Directionality.of(context) == TextDirection.rtl
                                    ? 15
                                    : null,
                            child: Container(
                              padding: const EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              constraints: const BoxConstraints(
                                minWidth: 12,
                                minHeight: 12,
                              ),
                              child: BlocBuilder<OrderCubit, OrderState>(
                                  builder: (context, state) {
                                return Center(
                                  child: Text(
                                    state.totalQuantity.toString(),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 8,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: SvgPicture.asset(
                        'assets/icons/app-bar-logo.svg',
                        height: 50,
                      ),
                    ),
        );
}

class ChevronBackButton extends StatelessWidget {
  const ChevronBackButton({required this.color, this.onTap, super.key});

  final Color color;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    if (!context.canPop()) {
      return const SizedBox.shrink();
    }

    return InkWell(
      onTap: onTap ?? context.pop,
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Icon(
          Directionality.of(context) == TextDirection.ltr
              ? Icons.arrow_back_ios_new_rounded
              : Icons.arrow_forward_ios_rounded,
          size: 24.0,
          color: color != Palette.whiteColor
              ? Palette.whiteColor
              : Palette.blackColor,
        ),
      ),
    );
  }
}

// 0560498238
