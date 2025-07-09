import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:flutter/material.dart';
import 'package:future_hub/common/shared/widgets/chevron_bottom_sheet.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

class SignOutBottomSheet extends StatelessWidget {
  const SignOutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return ChevronBottomSheet(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            t.do_you_want_to_sign_out,
            style: theme.textTheme.titleLarge,
          ),
          const SizedBox(height: 24.0),
          ChevronButton(
            onPressed: context.pop,
            child: Text(t.no_stay_connected),
          ),
          const SizedBox(height: 16.0),
          ChevronButton(
            onPressed: () {
              context.read<AuthCubit>().signOut();
            },
            style: ChevronButtonStyle.text(),
            child: Text(t.sign_out),
          ),
        ],
      ),
    );
  }
}
