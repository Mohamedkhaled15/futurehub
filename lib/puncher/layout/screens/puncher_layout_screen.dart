import 'package:future_hub/common/shared/widgets/chevron_profile_tab_bar_item.dart';
import 'package:future_hub/common/shared/widgets/chevron_tab_navigator.dart';
import 'package:future_hub/puncher/orders/screens/puncher_orders_screen.dart';
import 'package:future_hub/common/profile/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:future_hub/common/notifications/screens/notifications_screen.dart';
import 'package:future_hub/puncher/home/screens/puncher_home_screen.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PuncherLayoutScreen extends StatelessWidget {
  const PuncherLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return ChevronTabNavigator(
      initialScreen: 'home',
      screens: {
        'home': ChevronTabScreen(
          title: t.home,
          icon: SvgPicture.asset('assets/icons/home.svg'),
          screen: (context, navigate) => const PuncherHomeScreen(),
        ),
        'orders': ChevronTabScreen(
          title: t.orders,
          icon: SvgPicture.asset('assets/icons/orders.svg'),
          screen: (context, naviate) => const PuncherOrdersScreen(),
        ),
        'notifications': ChevronTabScreen(
          title: t.notifications,
          icon: SvgPicture.asset('assets/icons/notifications.svg'),
          screen: (context, navigate) => const NotificationsScreen(),
        ),
        'profile': ChevronTabScreen(
          tabBarItem: (context, navigate, active) {
            return ChevronProfileTabBarItem(
              onPressed: () => navigate('profile'),
              active: active,
            );
          },
          screen: (context, navigate) => const ProfileScreen(),
        )
      },
    );
  }
}
