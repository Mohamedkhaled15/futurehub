import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/models/order_model.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/employee/orders/cubit/order_cubit.dart';
import 'package:future_hub/employee/orders/cubit/order_state.dart';
import 'package:future_hub/employee/orders/services/order_service.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import 'employee_qr_order_screen.dart';

class CarMeterScreen extends StatefulWidget {
  final Order order;
  const CarMeterScreen({super.key, required this.order});

  @override
  State<CarMeterScreen> createState() => _CarMeterScreenState();
}

class _CarMeterScreenState extends State<CarMeterScreen> {
  final TextEditingController odometerController = TextEditingController();
  XFile? odometerImage;
  bool _isLoading = false;

  Future<File> saveFile(XFile file) async {
    final directory = await getApplicationDocumentsDirectory();
    final path = '${directory.path}/${file.name}';
    return File(file.path).copy(path);
  }

  Future<void> pickImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? pickedImage = await picker.pickImage(
        source: ImageSource.camera, maxHeight: 1000, maxWidth: 1000);
    if (pickedImage != null) {
      setState(() {
        odometerImage = pickedImage;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final TextStyle labelStyle = theme.textTheme.titleLarge!.copyWith(
      fontWeight: FontWeight.bold,
      fontSize: 16,
    );
    OrderService _orderService = OrderService();

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: FutureHubAppBar(
        title: Text(
          t.meterNumber,
          style: const TextStyle(
              color: Palette.blackColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        context: context,
      ),
      body: LayoutBuilder(builder: (context, constraint) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            reverse: true,
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Illustration Image
                    Center(
                      child: Image.asset(
                        'assets/images/car.png',
                        height: 150,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Instruction Text
                    Center(
                      child: Text(
                        t.meterNumberRequest,
                        style: theme.textTheme.bodyMedium,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Odometer Number Input
                    TextField(
                      keyboardType: TextInputType.number,
                      controller: odometerController,
                      decoration: InputDecoration(
                        hintText: t.meterNumber,
                        hintStyle: TextStyle(color: Colors.grey.shade400),
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 10),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Image Picker Container
                    GestureDetector(
                      onTap: pickImageFromCamera,
                      child: Container(
                        height: 120,
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        child: odometerImage != null
                            ? Image.file(File(odometerImage!.path),
                                fit: BoxFit.cover)
                            : Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/images/meter.png'),
                                  const SizedBox(height: 10),
                                  Text(t.meterNumberRequestImage,
                                      style: TextStyle(
                                          color: Colors.grey.shade400)),
                                ],
                              ),
                      ),
                    ),
                    const Spacer(),

                    // Confirm Button
                    BlocBuilder<OrderCubit, OrderState>(
                      builder: (context, state) {
                        if (state is OrderCreatedState) {
                          return SizedBox(
                            height: 51,
                            width: 200,
                            child: ElevatedButton(
                              onPressed: odometerImage == null
                                  ? null
                                  : () async {
                                      if (odometerImage != null) {
                                        setState(() => _isLoading = true);
                                        try {
                                          await _orderService.finishFuelOrder(
                                            image: odometerImage!,
                                            refNumber: state.referenceNumber,
                                          );

                                          if (!mounted) return;
                                          Navigator.pushReplacement(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  OrderQrCodeScreen(
                                                order: widget.order,
                                              ),
                                            ),
                                          );
                                        } catch (e) {
                                          showToast(
                                            text: "$e",
                                            state: ToastStates.error,
                                          );
                                        } finally {
                                          if (mounted) {
                                            setState(() => _isLoading = false);
                                          }
                                        }
                                      } else {
                                        showToast(
                                          text: t.this_field_is_required,
                                          state: ToastStates.error,
                                        );
                                      }
                                    },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xff55217F),
                                minimumSize: const Size(double.infinity, 50),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      100), // Circular radius of 100
                                ),
                                disabledBackgroundColor:
                                    const Color(0xff55217F).withOpacity(0.5),
                              ),
                              child: _isLoading
                                  ? const SizedBox(
                                      width: 24,
                                      height: 24,
                                      child: CircularProgressIndicator(
                                        color: Colors.white,
                                        strokeWidth: 3,
                                      ),
                                    )
                                  : Text(
                                      t.next,
                                      style: theme.textTheme.titleLarge!
                                          .copyWith(color: Colors.white),
                                    ),
                            ),
                          );
                        }
                        return const SizedBox(
                          height: 200,
                          child: Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}
