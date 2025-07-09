import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/profile/screens/profile_screen.dart';
import 'package:future_hub/common/shared/widgets/chevron_profile_tab_bar_item.dart';
import 'package:future_hub/common/shared/widgets/chevron_tab_navigator.dart';
import 'package:future_hub/common/wallet/screens/wallet_screen.dart';
import 'package:future_hub/company/employees/screens/emloyees_screen.dart';
import 'package:future_hub/company/home/screens/company_home_screen.dart';
import 'package:future_hub/company/products/screens/products_screen.dart';

class CompanyLayoutScreen extends StatelessWidget {
  const CompanyLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;

    return ChevronTabNavigator(
      initialScreen: 'home',
      screens: {
        'home': ChevronTabScreen(
          title: t.home,
          icon: SvgPicture.asset('assets/icons/home.svg'),
          screen: (context, navigate) => CompanyHomeScreen(
            onTapBalance: () => navigate('wallet'),
          ),
        ),
        'employees': ChevronTabScreen(
          title: t.employees,
          icon: SvgPicture.asset('assets/icons/person.svg'),
          screen: (context, naviate) => const CompanyEmployeesScreen(),
        ),
        'wallet': ChevronTabScreen(
          title: t.wallet,
          icon: SvgPicture.asset('assets/icons/wallet.svg'),
          screen: (context, navigate) => const WalletScreen(),
        ),
        'products': ChevronTabScreen(
          title: t.my_products,
          icon: SvgPicture.asset('assets/icons/products.svg'),
          screen: (context, navigate) => const ProductsScreen(),
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
