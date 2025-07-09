import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';

class PuncherNewOrderCard extends StatelessWidget {
  const PuncherNewOrderCard({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Stack(
        children: [
          Image.asset('assets/images/puncher-new-order.png'),
          Positioned(
            bottom: size.height * 0.06,
            right: size.width * 0.1,
            child: Text(
              t.recieve_a_new_order,
              style: const TextStyle(
                color: Palette.primaryColor,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
