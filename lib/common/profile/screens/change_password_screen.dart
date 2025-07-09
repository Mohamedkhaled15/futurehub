import 'package:future_hub/common/auth/services/auth_service.dart';
import 'package:future_hub/common/auth/widgets/password_text_field.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/shared/utils/validator.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _passwordController = TextEditingController();

  final _confirmPasswordController = TextEditingController();
  final _oldPasswordController = TextEditingController();

  final _form = GlobalKey<FormState>();

  Map<String, String> _validation = {};
  bool _loading = false;
  final _authService = AuthService();

  @override
  void initState() {
    super.initState();
  }

  void _changePassword() async {
    if (!_form.currentState!.validate()) return;

    runFetch(
      context: context,
      fetch: () async {
        setState(() {
          _loading = true;
        });

        await _authService.updatePassword(
          oldPassword: _oldPasswordController.text,
          password: _passwordController.text,
          passwordConfirmation: _confirmPasswordController.text,
        );
        if (!mounted) return;
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
    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(t.change_password),
        context: context,
      ),
      body: SafeArea(
        child: Form(
          key: _form,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minWidth: constraints.maxWidth,
                        minHeight: constraints.maxHeight,
                      ),
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            PasswordTextField(
                              controller: _oldPasswordController,
                              labelText: t.old_password,
                              hintText: t.enter_old_password_here,
                              onChanged: (value) {},
                              validator: (value) {
                                return Validator(value)
                                    .custom(
                                        (value) => _validation['old-password'])
                                    .mandatory(t.this_field_is_required)
                                    .min(8,
                                        t.password_must_have_8_characters_or_more)
                                    .error;
                              },
                            ),
                            const SizedBox(height: 24.0),
                            PasswordTextField(
                              controller: _passwordController,
                              labelText: t.new_password,
                              hintText: t.enter_new_password_here,
                              onChanged: (value) =>
                                  _validation.remove('input.password'),
                              validator: (value) {
                                return Validator(value)
                                    .custom((value) =>
                                        _validation['input.password'])
                                    .mandatory(t.this_field_is_required)
                                    .min(8,
                                        t.password_must_have_8_characters_or_more)
                                    .error;
                              },
                            ),
                            const SizedBox(height: 24.0),
                            PasswordTextField(
                              controller: _confirmPasswordController,
                              labelText: t.confirm_new_password,
                              hintText: t.enter_new_password_again,
                              onChanged: (value) => _validation
                                  .remove('input.password_confirmation'),
                              validator: (value) {
                                final password = _passwordController.text;
                                return Validator(value)
                                    .custom((value) => _validation[
                                        'input.password_confirmation'])
                                    .mandatory(t.this_field_is_required)
                                    .equal(password,
                                        t.password_confirmation_doesnt_match_password)
                                    .error;
                              },
                            ),
                            const Spacer(),
                            ChevronButton(
                              onPressed: _changePassword,
                              loading: _loading,
                              child: Text(t.change_password),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
