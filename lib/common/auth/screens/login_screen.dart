import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/auth/services/auth_service.dart';
import 'package:future_hub/common/auth/widgets/update_bottom_sheet.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/shared/utils/validator.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_text_field.dart';
import 'package:future_hub/common/shared/widgets/number_format.dart';
import 'package:go_router/go_router.dart';
// import 'dart:math' as math; // import this

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _loading = false;

  final _phoneController = TextEditingController();
  final _authService = AuthService();
  final _form = GlobalKey<FormState>();
  Map<String, String> _validation = {};
  // bool obscure = true;

  Future<void> _login() async {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
      return;
    }
    await runFetch(
      context: context,
      fetch: () async {
        setState(() {
          _loading = true;
        });

        final phone = _phoneController.text;

        context.read<AuthCubit>().setPhone(phone);

        final exists = await _authService.validateMobile(phone);

        if (!mounted) {
          return;
        }

        if (exists) {
          context.push('/password/${_phoneController.text}');
        } else {
          context.push('/otp/${_phoneController.text}');
        }
      },
      onValidation: (validation) {
        _validation = validation;
        _form.currentState!.validate();
      },
      after: () {
        setState(() {
          _loading = false;
        });
      },
    );
  }

  bool _bottomSheetShown = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final state = context.read<AuthCubit>().state;
      if (state is ForceUpdateRequired) {
        _showForceUpdateSheet();
      }
    });
  }

  void _showForceUpdateSheet() {
    if (!_bottomSheetShown && context.mounted) {
      _bottomSheetShown = true;
      showModalBottomSheet(
        context: context,
        isDismissible: false,
        enableDrag: false,
        isScrollControlled: true,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(25), bottom: Radius.circular(20))),
        backgroundColor: Colors.white,
        builder: (_) {
          return const ShowForceUpdateBottomSheet();
        },
      ).whenComplete(() {
        _bottomSheetShown = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // resizeToAvoidBottomInset: true,
      body: LayoutBuilder(
        builder: (context, constraint) {
          return SingleChildScrollView(
            reverse: true,
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraint.maxHeight,
              ),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Localizations.override(
                      context: context,
                      locale: const Locale('ar'),
                      child: SizedBox(
                        height: size.height * 0.20,
                        width: size.width,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                                top: size.height * 0.15,
                                left: 0,
                                // left: direction == TextDirection.rtl ? 0 : null,
                                // right: direction == TextDirection.ltr ? 0 : null,

                                child: SvgPicture.asset(
                                  'assets/icons/login-shape.svg',
                                  colorFilter: const ColorFilter.mode(
                                    Palette.primaryColor,
                                    BlendMode.srcATop,
                                  ),
                                )),
                            Positioned(
                              top: size.height * 0.17,
                              right: 0,
                              left: 0,
                              child: SizedBox(
                                height: size.height * 0.08,
                                child: Image.asset(
                                  'assets/images/logo.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.12,
                    ),
                    Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.all(24.0),
                        child: Form(
                          key: _form,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(
                                t.welcome,
                                style: theme.textTheme.headlineMedium!.copyWith(
                                  color: Palette.blackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  height: 1.5,
                                ),
                              ),
                              Text(
                                t.welcome_again,
                                style: const TextStyle(
                                  color: Palette.textGreyColor,
                                  fontWeight: FontWeight.w100,
                                  fontSize: 25,
                                  height: 1.5,
                                ),
                              ),
                              const SizedBox(height: 50),
                              CustomTextField(
                                radius: 15,
                                haveBorderSide: true,
                                label: t.phone_number,
                                control: _phoneController,
                                hintText: '',
                                inputType: TextInputType.phone,
                                inputFormatters: [
                                  EnglishDigitsOnlyFormatter(),
                                  FilteringTextInputFormatter.deny(
                                      RegExp(r'[\-|,]')), // Extra protection
                                ],
                                onChanged: (value) =>
                                    _validation.remove('input.mobile'),
                                validateFunc: (value) {
                                  return Validator(value)
                                      .custom((value) =>
                                          _validation['input.mobile'])
                                      .mandatory(t.this_field_is_required)
                                      .digits(t
                                          .phone_number_must_contain_only_digits)
                                      .startsWith('05',
                                          t.phone_number_must_start_with_05)
                                      .error;
                                },
                              ),
                              SizedBox(
                                height: size.height * 0.15,
                              ),
                              const Spacer(),
                              ChevronButton(
                                onPressed: _login,
                                loading: _loading,
                                child: Text(
                                  t.login,
                                  style: const TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
// 0583211106
