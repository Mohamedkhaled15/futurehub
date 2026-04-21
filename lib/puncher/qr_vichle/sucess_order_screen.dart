import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/router.dart';
import 'package:future_hub/puncher/daily_report/cubit/puncher_report_cubit.dart';
import 'package:future_hub/puncher/orders/order_cubit/service_provider_orders_cubit.dart';

import '../../../l10n/app_localizations.dart';

class SucessOrderScreen extends StatelessWidget {
  const SucessOrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      backgroundColor: Colors.green, // Set background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 130), // Space for status bar
          // Error Icon
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(20),
            child: Image.asset(
              'assets/icons/correct.png',
              width: 53,
              height: 44,
            ),
          ),
          const SizedBox(height: 30),
          // Error Message
          Text(
            t.orderConfirmed,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          // Subtext
          Text(
            t.orderData,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 16,
            ),
          ),
          const Spacer(), // Pushes the button to the bottom
          // Bottom Button
          GestureDetector(
            onTap: () {
              final ordersCubit = context.read<ServiceProviderOrdersCubit>();
              final authState = context.read<AuthCubit>().state;

              if (authState is AuthSignedIn) {
                // Reload Orders based on user type
                final userTypes = authState.user.puncherTypes ?? [];
                if (userTypes.contains('Fuel')) {
                  ordersCubit.updatOrders();
                } else {
                  ordersCubit.updateServicesOrders();
                }

                // Reload Report
                final now = DateTime.now();
                final dateStr = "${now.year}-${now.month}-${now.day}";
                context.read<PincherReportCubit>().getDailyReport(
                      dateStr,
                      authState.user.id!,
                      'fuel_orders',
                    );
              }

              router.go('/puncher');
            },
            child: Container(
              height: 96,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xff07A479),
              ),
              child: Text(
                t.back,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
