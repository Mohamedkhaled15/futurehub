import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/info/cubit/info_cubit.dart';
import 'package:future_hub/common/shared/cubits/locale_cubit.dart';
import 'package:future_hub/common/shared/widgets/chevron_bottom_sheet.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/puncher/orders/order_cubit/service_provider_orders_cubit.dart';
import 'package:go_router/go_router.dart';

import '../../../employee/orders/cubit/employee_punchers_cubit.dart';

class SwitchLanguageBottomSheet extends StatelessWidget {
  const SwitchLanguageBottomSheet({super.key});

  static switchLanguage(BuildContext context, {String language = 'en'}) async {
    // final t = AppLocalizations.of(context)!;
    // final langCode = t.localeName == 'ar' ? 'en' : 'ar';
    final locale = Locale(language);

    context.read<LocaleCubit>().changeLocale(locale);

    // if (context.mounted) {
    //   await context.read<ProductsCubit>().loadProducts(context,);
    // }
    if (context.mounted) {
      await context.read<InfoCubit>().init();
    }
    if (context.mounted) {
      await context.read<EmployeePunchersCubit>().loadPunchers(refresh: true);
    }
    if (context.mounted) {
      await context
          .read<ServiceProviderOrdersCubit>()
          .loadOrders(refresh: true);
    }

    // if (context.mounted) {
    //   context.read<WalletCubit>().loadTransactions(context, refresh: true);
    // }
    // if (context.mounted) {
    //   context.pop();
    // }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    // Determine the currently selected language
    final currentLanguage = t.localeName;
    // List of languages to display in the switch options
    final languages = [
      {'locale': 'en', 'name': 'English'},
      {'locale': 'ar', 'name': 'العربية'},
      {'locale': 'ur', 'name': 'اردو'},
    ];
    return ChevronBottomSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            t.switch_the_apps_language,
            style: theme.textTheme.titleLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24.0),
          // Render language buttons dynamically
          ...languages.map((lang) {
            final isSelected = currentLanguage == lang['locale'];
            return ChevronButton(
              onPressed: () => switchLanguage(context),
              child: Text(
                lang['name']!,
                style: TextStyle(
                  color: isSelected ? theme.colorScheme.primary : null,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            );
          }),
          const SizedBox(height: 16.0),
          ChevronButton(
            onPressed: context.pop,
            style: ChevronButtonStyle.text(),
            child: Text(t.back),
          ),
        ],
      ),
    );
  }
}
