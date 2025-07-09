import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/employee/orders/cubit/order_cubit.dart';
import 'package:future_hub/employee/orders/cubit/order_state.dart';
import 'package:future_hub/employee/orders/services/order_service.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

import 'order_qr_code_bottom_sheet.dart';

class CarNumberBottomSheet extends StatefulWidget {
  const CarNumberBottomSheet({super.key});

  @override
  State<CarNumberBottomSheet> createState() => _CarNumberBottomSheetState();
}

class _CarNumberBottomSheetState extends State<CarNumberBottomSheet> {
  final TextEditingController odometerController = TextEditingController();
  XFile? odometerImage;
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
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Title
          Center(
            child: Text(
              t.meterNumber,
              style: labelStyle.copyWith(color: Colors.purple),
            ),
          ),
          const SizedBox(height: 10),

          // Illustration Image
          Center(
            child: Image.asset(
              'assets/images/car.png', // Replace with your asset image path
              height: 150,
            ),
          ),
          const SizedBox(height: 10),

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
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            ),
          ),
          const SizedBox(height: 15),

          // Image Picker Container
          GestureDetector(
            onTap: pickImageFromCamera,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: odometerImage != null
                  ? Image.file(File(odometerImage!.path), fit: BoxFit.cover)
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/meter.png'),
                        const SizedBox(width: 10),
                        Text(t.meterNumberRequestImage,
                            style: TextStyle(color: Colors.grey.shade400)),
                      ],
                    ),
            ),
          ),
          const SizedBox(height: 20),

          // Confirm Button
          BlocBuilder<OrderCubit, OrderState>(
            builder: (context, state) {
              if (state is OrderCreatedState) {
                return ElevatedButton(
                  onPressed: () async {
                    // Handle the confirmation process here
                    if (odometerImage != null) {
                      try {
                        // Show loading indicator
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (_) =>
                              const Center(child: CircularProgressIndicator()),
                        );
                        // Call the finishOrder method
                        await _orderService.finishOrder(
                          image: odometerImage!,
                          refNumber: state
                              .referenceNumber, // Replace with actual reference number
                        );

                        // Close the loading indicator
                        Navigator.pop(context);
                        // Show the bottom sheet on success
                        context.pop();
                        context.pop();
                        context.pop();
                        showModalBottomSheet(
                          context: context,
                          builder: (context) => const OrderQrCodeBottomSheet(),
                        );
                      } catch (e) {
                        // Close the loading indicator
                        Navigator.pop(context); // Show error toast
                        showToast(
                          text: "$e",
                          state: ToastStates.error,
                        );
                      }
                    } else {
                      // Show error message for missing image
                      showToast(
                        text: t.this_field_is_required,
                        state: ToastStates.error,
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    t.confirm_order,
                    style: theme.textTheme.titleLarge!
                        .copyWith(color: Colors.white),
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
          const SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
