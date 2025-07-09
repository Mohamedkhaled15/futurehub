import 'package:future_hub/common/points/models/user_gift.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RedeemListTile extends StatelessWidget {
  final UserGift userGift;
  final void Function() onPressed;

  const RedeemListTile({
    super.key,
    required this.userGift,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(4),
            margin: const EdgeInsets.symmetric(vertical: 8),
            child: ListTile(
              onTap: onPressed,
              title: Text(
                userGift.referenceNumber,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  userGift.expiryDate,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              leading: SizedBox(
                width: 30.0,
                height: 30.0,
                child: SvgPicture.asset(
                  'assets/icons/transaction.svg',
                ),
              ),
            ),
          ),
          Divider(
            thickness: MediaQuery.of(context).size.height * 0.0001,
            color: Palette.dividerColor,
          ),
        ],
      ),
    );
  }
}
