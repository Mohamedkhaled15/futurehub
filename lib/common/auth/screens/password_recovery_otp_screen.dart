import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/auth/services/auth_service.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/otp_form.dart';
import 'package:go_router/go_router.dart';

class PasswordRecoveryOTPScreen extends StatefulWidget {
  const PasswordRecoveryOTPScreen({required this.phoneNumber, super.key});
  final String phoneNumber;

  @override
  State<PasswordRecoveryOTPScreen> createState() =>
      _PasswordRecoveryOTPScreenState();
}

class _PasswordRecoveryOTPScreenState extends State<PasswordRecoveryOTPScreen> {
  bool _loading = false;

  final _authService = AuthService();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) => _sendOTP());
  }

  Future<void> _sendOTP() async {
    await runFetch(
      context: context,
      fetch: () async {
        final authState = context.read<AuthCubit>().state as AuthSignedOut;
        await _authService.forgetPassword(authState.phone);
      },
    );
  }

  Future<String?> _onActivate(String otp) async {
    String? error;
    await runFetch(
      context: context,
      fetch: () async {
        setState(() {
          _loading = true;
        });
        debugPrint("""result""".toString());

        final authCubit = context.read<AuthCubit>();
        final authState = authCubit.state as AuthSignedOut;
        // await _authService.confirmOTP(
        //   authState.phone,
        //   otp,
        //   // EnumVerifyEnum.Reset,
        // );

        authCubit.setOTP(otp);
        if (!mounted) return;

        context.pushReplacement('/password-recovery/change');
      },
      after: () async {
        setState(() {
          _loading = false;
        });
      },
      onValidation: (validation) {
        error = validation['input.code'];
      },
    );

    return error;
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
            const SizedBox(height: 24.0),
            BlocBuilder<AuthCubit, AuthState>(builder: (context, state) {
              return OTPForm(
                buttonText: t.activate,
                loading: _loading,
                phone: widget.phoneNumber,
                onResend: _sendOTP,
                onActivate: (_onActivate),
              );
            }),
          ],
        ),
      ),
    );
  }
}
