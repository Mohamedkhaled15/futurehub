import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/validator.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/number_format.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';

class OTPForm extends StatefulWidget {
  final String phone;
  final bool loading;
  final String buttonText;
  final Future<void> Function()? onResend;
  final Future<String?> Function(String otp)? onActivate;

  const OTPForm(
      {super.key,
      required this.phone,
      this.loading = false,
      this.onResend,
      this.onActivate,
      required this.buttonText});

  @override
  State<OTPForm> createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  String otp = "";
  int _resendTime = 120; // in seconds
  Timer? _timer;
  String? errorMessage;
  bool error = false;

  // void _resend() {
  //   _resetTimer();
  //
  //   if (widget.onResend != null) widget.onResend!();
  // }

  void _resetTimer() {
    setState(() {
      _resendTime = 120; // in seconds
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _resendTime -= 1;
      });

      if (_resendTime == 0) {
        timer.cancel();
      }
    });
  }

  @override
  void initState() {
    super.initState();

    _resetTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    // const padding = 24.0;
    // final size = MediaQuery.of(context).size;
    // final contentWidth = size.width - 2 * padding;
    const digits = 4;
    // const spaceBetweenOtpFields = 5;
    // final otpFieldWidth =
    //     contentWidth / digits - (digits - 1) * spaceBetweenOtpFields / 2;
    final resendMinutes = (_resendTime ~/ 60).toString().padLeft(2, '0');
    final resendSeconds = (_resendTime % 60).toString().padLeft(2, '0');
    final formattedResendTime = '$resendMinutes:$resendSeconds';
    final canResend = _resendTime == 0;

    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Transform.translate(
            offset: const Offset(0, -12),
            child: Text(
              (widget.phone),
              style: const TextStyle(
                  fontSize: 16,
                  color: Palette.textGreyColor,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const SizedBox(height: 24.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: () => context.pop(),
                  child: SvgPicture.asset('assets/icons/resend.svg')),
              const SizedBox(
                width: 10,
              ),
              Localizations.override(
                context: context,
                locale: const Locale('en'),
                child: Text(
                  "+966 ${widget.phone} ",
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(height: 30.0),
          Localizations.override(
            context: context,
            locale: const Locale('en'),
            child: Pinput(
              keyboardType:
                  const TextInputType.numberWithOptions(signed: false),
              inputFormatters: [
                EnglishDigitsOnlyFormatter(),
                FilteringTextInputFormatter.deny(
                    RegExp(r'[\-|,]')), // Extra protection
              ],
              autofillHints: const [AutofillHints.telephoneNumber],
              forceErrorState: error,
              onChanged: (pin) {
                setState(() {
                  otp = pin;
                });
              },
              length: 4,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              errorPinTheme: errorPinTheme,
              showCursor: true,
            ),
          ),
          if (errorMessage != null)
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                errorMessage!,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodySmall!
                    .copyWith(color: Palette.dangerColor),
              ),
            ),
          const SizedBox(height: 24.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${t.try_again_after} ",
                  style: theme.textTheme.bodyMedium!.copyWith(
                    color: Palette.greyColor.shade600,
                  ),
                ),
                TextSpan(
                  text: formattedResendTime,
                  style: theme.textTheme.bodySmall!
                      .copyWith(color: Palette.primaryColor),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          canResend
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: ChevronButton(
                    onPressed: () async {
                      if (widget.onResend != null) {
                        await widget.onResend!();
                        _resetTimer();
                      }
                    },
                    child: Text(
                      t.resend_the_code,
                    ),
                  ),
                )
              : Container(),
          ChevronButton(
            style: otp.length < 4
                ? ChevronButtonStyle.disabled
                : ChevronButtonStyle.primary,
            loading: widget.loading,
            onPressed: otp.length < 4
                ? () {}
                : () async {
                    debugPrint("""result ${widget.onActivate}""");

                    final message = Validator(otp)
                        .digits(t.otp_must_contain_only_digits)
                        .length(digits, t.otp_must_be_of_length(digits))
                        .error;
                    setState(() {
                      errorMessage = message;
                    });
                    // ignore: unnecessary_null_comparison
                    if (widget.onActivate != null && errorMessage == null) {
                      final message = await widget.onActivate!(otp);
                      setState(() {
                        errorMessage = message;
                      });
                    }
                  },
            child: Text(widget.buttonText),
          ),
        ],
      ),
    );
  }
}

final defaultPinTheme = PinTheme(
  height: 100,
  textStyle: const TextStyle(
      fontSize: 30,
      color: Color.fromRGBO(30, 60, 87, 1),
      fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: const Color.fromRGBO(151, 151, 151, 1)),
    borderRadius: BorderRadius.circular(20),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Palette.primaryColor, width: 1),
  borderRadius: BorderRadius.circular(15),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration!.copyWith(
    color: const Color.fromRGBO(234, 239, 243, 1),
    border: Border.all(color: Palette.primaryColor, width: 1),
    borderRadius: BorderRadius.circular(15),
  ),
);

final errorPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration!.copyWith(
    color: const Color.fromRGBO(234, 239, 243, 1),
    border: Border.all(color: Palette.dangerColor, width: 1),
    borderRadius: BorderRadius.circular(15),
  ),
);
