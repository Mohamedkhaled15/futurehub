import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/router.dart';

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
              router.go('/puncher');
            },
            child: Container(
              height: 96,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 14),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color(0xff07A479),
                // borderRadius: BorderRadius.only(
                //   topLeft: Radius.circular(20),
                //   topRight: Radius.circular(20),
                // ),
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
