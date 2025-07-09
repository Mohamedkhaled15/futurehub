import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';

class FuelContainer extends StatelessWidget {
  const FuelContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Container(
      width: 341,
      height: 70,
      decoration: BoxDecoration(
        color: const Color(0xFFFBFBFB),
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          // Fuel icon (replace with your actual icon)
          // Text content
          const SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                t.fuelTime,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                t.fuelTimeDes,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const Spacer(),
          // Chevron icon
          Image.asset(
            'assets/images/automotive.png',
            width: 75,
            height: 75,
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }
}
