import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/shared/utils/validator.dart';
import 'package:future_hub/common/shared/widgets/chevron_button.dart';
import 'package:future_hub/common/shared/widgets/chevron_text_field.dart';
import 'package:future_hub/common/shared/widgets/number_format.dart';
import 'package:future_hub/puncher/orders/model/service_provider_order_model_confirm_canel.dart';
import 'package:future_hub/puncher/orders/model/vehicle_qr.dart';
import 'package:future_hub/puncher/orders/services/puncher_order_services.dart';
import 'package:go_router/go_router.dart';

class EnterUserCodeView extends StatefulWidget {
  const EnterUserCodeView({super.key});

  @override
  State<EnterUserCodeView> createState() => _EnterUserCodeViewState();
}

class _EnterUserCodeViewState extends State<EnterUserCodeView> {
  final _ordersService = PuncherOrderServices();
  final _referenceNumberController = TextEditingController();
  bool _isLoading = false; // Add loading state

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    Future<void> _openOrder() async {
      setState(() => _isLoading = true); // Start loading
      try {
        await runFetch(
          context: context,
          fetch: () async {
            final order =
                await _ordersService.orderById(_referenceNumberController.text);
            if (!mounted) return;
            if (order is VehicleQr) {
              context.pushReplacement('/puncher/vehicle-details', extra: order);
            } else if (order is ServiceProviderOrderConfirmCancelModel) {
              context.pushReplacement('/puncher/order-details', extra: order);
            } else {
              throw Exception("Unexpected order type: ${order.runtimeType}");
            }
          },
        );
      } finally {
        if (mounted) {
          setState(() => _isLoading = false); // Stop loading
        }
      }
    }

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: width * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.08),
            Text(
              t.enter_user_code,
              style: theme.textTheme.headlineLarge!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              t.enter_user_code_hint,
              style: theme.textTheme.bodySmall!
                  .copyWith(fontSize: 20, color: Palette.textGreyColor),
            ),
            SizedBox(
              height: height * 0.07,
            ),
            CustomTextField(
              inputType: const TextInputType.numberWithOptions(signed: false),
              inputFormatters: [
                EnglishDigitsOnlyFormatter(),
                FilteringTextInputFormatter.deny(
                    RegExp(r'[\-|,]')), // Extra protection
              ],
              control: _referenceNumberController,
              haveBorderSide: true,
              radius: 15,
              label: t.user_code,
              hintText: '',
              validateFunc: (value) {
                return Validator(value)
                    .mandatory(t.this_field_is_required)
                    .error;
              },
            ),
            SizedBox(
              height: height * 0.04,
            ),
            SizedBox(
              width: width * 0.4,
              child: ChevronButton(
                loading: _isLoading,
                onPressed: () {
                  _openOrder();
                },
                child: Text(
                  t.next,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
