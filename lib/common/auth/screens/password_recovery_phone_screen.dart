import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_text_field.dart';
import 'package:go_router/go_router.dart';

import '../../../l10n/app_localizations.dart';

class PasswordRecoveryPhoneScreen extends StatefulWidget {
  const PasswordRecoveryPhoneScreen({super.key});

  @override
  State<PasswordRecoveryPhoneScreen> createState() =>
      _PasswordRecoveryPhoneScreenState();
}

class _PasswordRecoveryPhoneScreenState
    extends State<PasswordRecoveryPhoneScreen> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _recoverPassword() async {
    final phone = _controller.text;

    context.read<AuthCubit>().setPhone(phone);

    context.push('/password-recovery/otp/:$phone');
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: FutureHubAppBar(
        context: context,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                t.password_recovery,
                style: theme.textTheme.headlineMedium!.copyWith(
                  color: Palette.blackColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 32.0),
              CustomTextField(
                validateFunc: (String? s) {
                  return null;
                },
                control: _controller,
                label: t.phone_number,
                haveBorderSide: true,
                radius: 15,
                hintText: "",
                // prefixIcon: SizedBox(
                //   width: MediaQuery.of(context).size.width * 0.25,
                //   child: Row(
                //     children: [
                //       const SizedBox(
                //         width: 10,
                //       ),
                //       Image.asset(
                //         'assets/images/ksa.png',
                //         height: 25,
                //       ),
                //       const Text(
                //         "+966   ",
                //         style: TextStyle(
                //             fontSize: 22, color: Palette.textFeildBorder),
                //       ),
                //       Container(
                //         width: 1,
                //         height: MediaQuery.of(context).size.height * 0.04,
                //         color: Palette.textFeildBorder,
                //       )
                //     ],
                //   ),
                // ),
              ),
              const SizedBox(height: 24.0),
              const Spacer(),
              ChevronButton(
                onPressed: _recoverPassword,
                child: Text(t.send_recovery_code),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
