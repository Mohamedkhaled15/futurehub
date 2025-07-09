import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/auth/services/auth_service.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/validator.dart';
import 'package:future_hub/common/shared/widgets/chevron_labled_text_field.dart';
import 'package:future_hub/common/shared/widgets/chevron_text_field.dart';
import 'package:future_hub/common/shared/widgets/clean_app_bar.dart';

import '../../shared/utils/run_fetch.dart';
import '../../shared/widgets/chevron_button.dart';

class SignUpScreen extends StatefulWidget {
  final String id;

  const SignUpScreen({super.key, required this.id});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _loading = false;
  bool obscure = true;
  bool obscureConfirm = true;
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  final _authService = AuthService();

  void _signUp() async {
    runFetch(
      context: context,
      fetch: () async {
        setState(() {
          _loading = true;
        });

        final state = context.read<AuthCubit>().state as AuthSignedOut;

        final result = await _authService.setPassword(
          id: int.parse(widget.id),
          password: _passwordController.text,
          confirmPassword: _confirmPasswordController.text,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: CleanAppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minWidth: constraints.maxWidth,
                minHeight: constraints.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, authState) {
                    final state = authState as AuthSignedOut;
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          t.sign_up,
                          style: theme.textTheme.headlineMedium!.copyWith(
                            color: Palette.blackColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 30.0),
                        if (state is AuthEmployeeSigningIn)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 24.0),
                            child: ChevronLabeledTextField(
                              hintText: state.name,
                              label: t.name,
                              icon: SvgPicture.asset('assets/icons/person.svg'),
                              readOnly: true,
                              controller:
                                  TextEditingController(text: state.name),
                            ),
                          ),
                        const SizedBox(height: 24.0),
                        ChevronLabeledTextField(
                          label: t.phone_number,
                          icon: SvgPicture.asset('assets/icons/phone.svg'),
                          readOnly: true,
                          controller: TextEditingController(text: state.phone),
                          hintText: state.phone,
                        ),
                        const SizedBox(height: 24.0),
                        if (state is AuthEmployeeSigningIn)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 24.0),
                            child: ChevronLabeledTextField(
                              label: t.company_name,
                              icon:
                                  SvgPicture.asset('assets/icons/company.svg'),
                              readOnly: true,
                              controller:
                                  TextEditingController(text: state.company),
                            ),
                          ),
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: SvgPicture.asset(
                                          'assets/icons/eye.svg')))
                              : GestureDetector(
                                  onTap: () => setState(() {
                                        obscure = true;
                                      }),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: SvgPicture.asset(
                                          'assets/icons/eye.svg')))
                              : GestureDetector(
                                  onTap: () => setState(() {
                                        obscureConfirm = true;
                                      }),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: SvgPicture.asset(
                                      'assets/icons/eye-open.svg',
                                      height: 15,
                                    ),
                                  )),
                          enabled: true,
                          prefixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child:
                                SvgPicture.asset('assets/icons/password.svg'),
                          ),
                          haveBorderSide: true,
                          radius: 15,
                          validateFunc: (value) {
                            if (value == null || value.isEmpty) {
                              return t
                                  .this_field_is_required; // Required field check
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
                          onPressed: _signUp,
                          child: Text(t.sign_up),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
