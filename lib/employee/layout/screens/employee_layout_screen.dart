import 'package:future_hub/common/notifications/screens/notifications_screen.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_profile_tab_bar_item.dart';
import 'package:future_hub/common/profile/screens/profile_screen.dart';
import 'package:future_hub/common/shared/widgets/chevron_tab_navigator.dart';
import 'package:future_hub/common/wallet/screens/wallet_screen.dart';
import 'package:future_hub/employee/home/screens/employee_home_screen.dart';
import 'package:future_hub/employee/layout/cubit/cubit.dart';
import 'package:future_hub/employee/layout/cubit/states.dart';
import 'package:future_hub/employee/orders/screens/employee_orders_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';


class EmployeeLayoutScreen extends StatefulWidget {
  const EmployeeLayoutScreen({super.key});

  @override
  State<EmployeeLayoutScreen> createState() => _EmployeeLayoutScreenState();
}

class _EmployeeLayoutScreenState extends State<EmployeeLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return BlocProvider(
      create: (BuildContext context) => EmployeesLayoutCubit(),
      child: BlocBuilder<EmployeesLayoutCubit, EmployeeLayoutStates>(
          builder: (context, state) {
        state as EmployeesLayoutDrawerState;
        return Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Palette.primaryColor,
            ),
            AnimatedContainer(
              height: MediaQuery.of(context).size.height,
              transform: Matrix4.translationValues(
                  state.isDrawerOpen
                      ? -MediaQuery.of(context).size.width * 0.28
                      : 0.0,
                  state.isDrawerOpen ? 90 : 0.0,
                  0)
                ..scale(state.isDrawerOpen ? 0.78 : 1.00)
                ..rotateZ(state.isDrawerOpen ? 0.1 : 0),
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: state.isDrawerOpen
                    ? BorderRadius.circular(40)
                    : BorderRadius.circular(0),
              ),
            ),
            AnimatedContainer(
              height: MediaQuery.of(context).size.height,
              transform: Matrix4.translationValues(
                  state.isDrawerOpen
                      ? -MediaQuery.of(context).size.width * 0.42
                      : 0.0,
                  state.isDrawerOpen ? 55 : 0.0,
                  0)
                ..scale(state.isDrawerOpen ? 0.85 : 1.00)
                ..rotateZ(state.isDrawerOpen ? 0.1 : 0),
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.2),
                borderRadius: state.isDrawerOpen
                    ? BorderRadius.circular(40)
                    : BorderRadius.circular(0),
              ),
            ),
            AnimatedContainer(
              height: MediaQuery.of(context).size.height,
              transform: Matrix4.translationValues(
                  state.isDrawerOpen
                      ? -MediaQuery.of(context).size.width * 0.55
                      : 0.0,
                  state.isDrawerOpen ? 30 : 0.0,
                  0)
                ..scale(state.isDrawerOpen ? 0.90 : 1.00)
                ..rotateZ(state.isDrawerOpen ? 0.1 : 0),
              duration: const Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: state.isDrawerOpen
                    ? BorderRadius.circular(40)
                    : BorderRadius.circular(0),
              ),
              child: ChevronTabNavigator(
                initialScreen: 'home',
                screens: {
                  'home': ChevronTabScreen(
                    title: t.home,
                    icon: SvgPicture.asset('assets/icons/home.svg'),
                    screen: (context, navigate) => EmployeeHomeScreen(
                      onTapBalance: () => navigate('wallet'),
                    ),
                  ),
                  'orders': ChevronTabScreen(
                    title: t.my_orders,
                    icon: SvgPicture.asset('assets/icons/orders.svg'),
                    screen: (context, naviate) => const EmployeeOrdersScreen(),
                  ),
                  'wallet': ChevronTabScreen(
                    title: t.wallet,
                    icon: SvgPicture.asset('assets/icons/wallet.svg'),
                    screen: (context, navigate) => const WalletScreen(),
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
              ),
            ),
          ],
        );
      }),
    );
  }
}
