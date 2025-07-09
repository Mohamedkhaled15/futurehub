import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/utils/validator.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_text_field.dart';

import '../../shared/palette.dart';
import '../../shared/utils/run_fetch.dart';
import '../services/auth_service.dart';

class PasswordRecoveryScreen extends StatefulWidget {
  const PasswordRecoveryScreen({super.key});

  @override
  State<PasswordRecoveryScreen> createState() => _PasswordRecoveryScreenState();
}

class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {
  bool _loading = false;

  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _form = GlobalKey<FormState>();
  Map<String, String> _validation = {};
  bool obscure = true;
  bool obscureConfirm = true;
  final _authService = AuthService();

  void _changePassword() async {
    if (!_form.currentState!.validate()) return;

    runFetch(
      context: context,
      fetch: () async {
        setState(() {
          _loading = true;
        });
        final state = context.read<AuthCubit>().state as AuthSignedOut;
        final result = await _authService.resetPassword(
          password: _passwordController.text,
          confirmPassword: _confirmPasswordController.text,
          mobile: state.phone,
          otp: state.otp,
        );

        if (!mounted) return;

        final authCubit = context.read<AuthCubit>();

        await authCubit.login(result.user, result.token);
      },
      after: () {
        setState(() {
          _loading = false;
        });
      },
      onValidation: (validation) {
        _validation = validation;
        _form.currentState!.validate();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: FutureHubAppBar(
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _form,
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
              const SizedBox(height: 30.0),
              CustomTextField(
                radius: 15,
                haveBorderSide: true,
                obscureText: obscure,
                suffixIcon: obscure
                    ? GestureDetector(
                        onTap: () => setState(() {
                              obscure = false;
                            }),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SvgPicture.asset('assets/icons/eye.svg')))
                    : GestureDetector(
                        onTap: () => setState(() {
                              obscure = true;
                            }),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SvgPicture.asset(
                            'assets/icons/eye-open.svg',
                            height: 15,
                          ),
                        )),
                control: _passwordController,
                label: t.password,
                hintText: '',
                validateFunc: (value) {
                  return Validator(value)
                      .mandatory(t.this_field_is_required)
                      .error;
                },
              ),
              const SizedBox(height: 24.0),
              CustomTextField(
                control: _confirmPasswordController,
                label: t.confirm_password,
                hintText: t.enter_the_password,
                obscureText: obscureConfirm,
                isPassword: false,
                suffixIcon: obscureConfirm
                    ? GestureDetector(
                        onTap: () => setState(() {
                              obscureConfirm = false;
                            }),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SvgPicture.asset('assets/icons/eye.svg')))
                    : GestureDetector(
                        onTap: () => setState(() {
                              obscureConfirm = true;
                            }),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SvgPicture.asset(
                            'assets/icons/eye-open.svg',
                            height: 15,
                          ),
                        )),
                enabled: true,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset('assets/icons/password.svg'),
                ),
                haveBorderSide: true,
                radius: 15,
                validateFunc: (value) {
                  if (value == null || value.isEmpty) {
                    return t.this_field_is_required; // Required field check
                  } else if (value != _passwordController.text) {
                    return t
                        .password_confirmation_doesnt_match_password; // Show message if passwords do not match
                  }
                  return null; // Return null if validation is successful
                },
              ),
              const SizedBox(height: 24.0),
              const Spacer(),
              ChevronButton(
                loading: _loading,
                onPressed: _changePassword,
                child: Text(t.change_password),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
