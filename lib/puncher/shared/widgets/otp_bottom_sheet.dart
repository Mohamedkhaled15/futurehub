import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/chevron_bottom_sheet.dart';
import 'package:future_hub/common/shared/widgets/otp_form.dart';
import 'package:future_hub/puncher/orders/services/puncher_order_services.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:vibration/vibration.dart';

import '../../orders/order_cubit/service_provider_orders_cubit.dart';

class OtpBottomSheetScreen extends StatefulWidget {
  const OtpBottomSheetScreen(
      {required this.referenceNumber,
      required this.editedImage,
      required this.type,
      super.key});
  final String referenceNumber;
  final String? editedImage;
  final String type;

  @override
  State<OtpBottomSheetScreen> createState() => VerifyOtpBottomSheetState();
}

class VerifyOtpBottomSheetState extends State<OtpBottomSheetScreen> {
  final _ordersService = PuncherOrderServices();
  Future<void> _resend() async {
    await _ordersService.sendOtp(widget.referenceNumber, widget.type);
  }

  XFile? get editedImage =>
      widget.editedImage != null ? XFile(widget.editedImage!) : null;
  bool _loading = false;
  Future<String?> _onActivate(String otp) async {
    String? error;
    try {
      setState(() => _loading = true);

      await _ordersService.confirmOrder(
        otp,
        widget.referenceNumber,
        editedImage ?? XFile(""),
        widget.type,
      );

      await _refreshOrders();
      await _playSuccessEffects();

      if (mounted) {
        context.pushNamed('success-order');
      }
    } catch (e) {
      debugPrint("Error confirming order: $e");
      await _playFailureEffects();
      if (mounted) {
        context.pushNamed('fail-order');
      }
      error = e.toString();
    } finally {
      if (mounted) setState(() => _loading = false);
    }
    return error;
  }

  Future<void> _playSuccessEffects() async {
    final player = AudioPlayer();
    await player.play(AssetSource('sounds/success.mp3'));
    if (await Vibration.hasVibrator()) {
      Vibration.vibrate(duration: 500);
    }
  }

  Future<void> _playFailureEffects() async {
    final player = AudioPlayer();
    await player.play(AssetSource('sounds/failure.mp3'));
    if (await Vibration.hasVibrator()) {
      Vibration.vibrate(pattern: [0, 500, 200, 500]);
    }
  }

  Future<void> _refreshOrders() async {
    final cubit = context.read<ServiceProviderOrdersCubit>();
    widget.type == "fuel_order"
        ? cubit.updatOrders()
        : cubit.updateServicesOrders();
  }

  Future<void> _showResultDialog({
    required bool isSuccess,
    // required String message,
  }) async {
    final t = AppLocalizations.of(context)!;
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          title: Row(
            children: [
              Icon(
                isSuccess ? Icons.check_circle : Icons.error,
                color: isSuccess ? Colors.green : Colors.red,
                size: 48,
              ),
              const SizedBox(width: 8),
              Text(isSuccess ? t.successOpeartion : t.failedOpeartion),
            ],
          ),
          content: Text(isSuccess ? t.orderConfirmed : t.orderFailed),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(), // Close dialog
              child: Text(t.done),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: FutureHubAppBar(
        title: Text(
          t.otp,
          style: const TextStyle(
              color: Palette.blackColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        context: context,
      ),
      body: SingleChildScrollView(
        reverse: true,
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: ChevronBottomSheet(
            child: SizedBox(
              height: 400,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    t.enter_the_code_sent_to_employee_number,
                    textAlign: TextAlign.center,
                    style: theme.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 18.0),
                  OTPForm(
                    loading: _loading,
                    phone: "",
                    onActivate: _onActivate,
                    onResend: _resend,
                    buttonText: t.confirm_order,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
