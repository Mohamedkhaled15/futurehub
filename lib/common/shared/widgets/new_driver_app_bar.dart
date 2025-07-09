import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/notifications/screens/notifications_screen.dart';
import 'package:future_hub/common/shared/palette.dart';

class CustomAppBar extends StatelessWidget {
  final String userName;
  final String userBalance;
  final String userImageUrl;
  final VoidCallback onUserImagePressed;
  final bool isDrawerOpen;
  final String backgroundImagePath;
  final String fuelBalance;
  final String servicesBalance;

  const CustomAppBar({
    super.key,
    required this.userName,
    required this.userBalance,
    required this.userImageUrl,
    required this.onUserImagePressed,
    required this.isDrawerOpen,
    required this.backgroundImagePath,
    required this.fuelBalance,
    required this.servicesBalance,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final t = AppLocalizations.of(context)!;
    double containerHeight = size.height * 0.21;
    return Container(
      height: containerHeight,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        image: DecorationImage(
          image: AssetImage(backgroundImagePath),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.only(
        left: 24.0,
        right: 24.0,
        top: 50.0,
        bottom: 20.0,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  // User image (with gesture detector for drawer)
                  GestureDetector(
                    onTap: onUserImagePressed,
                    child: isDrawerOpen
                        ? SvgPicture.asset(
                            'assets/icons/close.svg',
                            height: 30,
                            color: Colors.white,
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              width: 44,
                              height: 44,
                              fit: BoxFit.cover,
                              imageUrl: userImageUrl ?? "",
                              placeholder: (context, url) => const Center(
                                child: CircularProgressIndicator(
                                  color: Colors.white,
                                ),
                              ),
                              errorWidget: (context, url, error) => const Icon(
                                Icons.error,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                  ),
                  const SizedBox(width: 12),
                  // User name and balance
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${t.welcome} $userName',
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      // Text(
                      //   '${t.balance} : $userBalance ${t.sar}',
                      //   style: const TextStyle(
                      //       fontSize: 18,
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.w700),
                      // ),
                    ],
                  ),
                ],
              ),
              // Container(width: 60),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NotificationsScreen(),
                  ),
                ),
                child: SvgPicture.asset(
                  'assets/icons/notifications-h.svg',
                  height: 30,
                  colorFilter: const ColorFilter.mode(
                    Palette.whiteColor,
                    BlendMode.srcATop,
                  ),
                ),
              ),
              // const SizedBox(height: 20),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${t.fuel_Balance} : $fuelBalance ${t.sar}',
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                '${t.services_balance} : $servicesBalance ${t.sar}',
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
