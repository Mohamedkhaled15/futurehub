import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/auth/services/auth_service.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/shared/utils/validator.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_text_field.dart';
import 'package:go_router/go_router.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({required this.phoneNumber, super.key});
  final String phoneNumber;

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool _loading = false;

  final _controller = TextEditingController();
  final _form = GlobalKey<FormState>();
  final _authService = AuthService();
  bool obscure = true;

  Future<void> _login() async {
    final authState = context.read<AuthCubit>().state;
    final phone = (authState as AuthSignedOut).phone;
    final password = _controller.text;

    runFetch(
      context: context,
      fetch: () async {
        if (!_form.currentState!.validate()) return;

        setState(() {
          _loading = true;
        });

        final result = await _authService.login(phone, password);

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
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: FutureHubAppBar(
          context: context,
        ),
        body: LayoutBuilder(
          builder: (context, constraint) {
            return SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Form(
                  key: _form,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: constraint.maxHeight,
                    ),
                    child: IntrinsicHeight(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            t.login,
                            style: theme.textTheme.headlineMedium!.copyWith(
                              color: Palette.blackColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            t.enter_the_password,
                            style: const TextStyle(
                              color: Palette.blackColor,
                              fontSize: 20,
                              height: 3.0,
                            ),
                          ),
                          Text(
                            "+966 ${widget.phoneNumber} ",
                            style: const TextStyle(
                              color: Palette.blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              height: 1.5,
                            ),
                          ),
                          const SizedBox(height: 32.0),
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
                            control: _controller,
                            label: t.password,
                            hintText: '',
                            validateFunc: (value) {
                              return Validator(value)
                                  .mandatory(t.this_field_is_required)
                                  .error;
                            },
                          ),
                          ChevronButton(
                            onPressed: () =>
                                context.push('/password-recovery/phone'),
                            dense: true,
                            style: ChevronButtonStyle.text(Colors.white),
                            child: Row(
                              children: [
                                // SvgPicture.asset('assets/icons/forgot-password.svg'),
                                const SizedBox(width: 8.0),
                                Text(
                                  t.forgot_password,
                                  style: const TextStyle(
                                      color: Palette.primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          // SizedBox(
                          //   height: MediaQuery.of(context).size.height * 0.4,
                          // ),
                          const Spacer(),
                          ChevronButton(
                            loading: _loading,
                            onPressed: _login,
                            child: Text(
                              t.login,
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
