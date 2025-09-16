import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/auth/models/user.dart';
import 'package:future_hub/common/shared/models/order_model.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/common/shared/widgets/number_format.dart';
import 'package:future_hub/employee/orders/cubit/order_cubit.dart';
import 'package:future_hub/employee/orders/models/puncher_branch.dart';
import 'package:future_hub/employee/orders/services/order_service.dart';

import '../../../l10n/app_localizations.dart';
import 'employee_car_meter_screen.dart';
import 'employee_qr_order_screen.dart';

class FuelCreateOrderScreen extends StatefulWidget {
  final User order;
  final Punchers selectedPunchers;
  const FuelCreateOrderScreen(
      {super.key, required this.order, required this.selectedPunchers});
  @override
  _FuelCreateOrderScreenState createState() => _FuelCreateOrderScreenState();
}

class _FuelCreateOrderScreenState extends State<FuelCreateOrderScreen> {
  int selectedFuelType = 91; // Default selected fuel type for Petrol
  num fuelPrice = 0.0; // Current fuel price
  String totalPrice = "0.0"; // Total price
  int selectedFuelId = 0; // Default selected fuel type for Petrol
  late TextEditingController litersController;
  late TextEditingController priceController;
  late Vehicle? _selectedVehicle;
  late bool scanOdometer;
  final _ordersService = OrderService();
  @override
  void initState() {
    super.initState();

     final authState = context.read<AuthCubit>().state;
    if (authState is AuthSignedIn) {
      scanOdometer = authState.user.readOdometerOCR == 1;
      log("$scanOdometer ${authState.user.readOdometerOCR}");
    } else {
      scanOdometer = false;
    }
    if (widget.order.vehicles?.isNotEmpty == true &&
        widget.order.vehicles != null &&
        widget.order.vehicles != [[]]) {
      _selectedVehicle = widget.order.vehicles?.first;
    } else {
      _selectedVehicle = null;
    }

    // Set default fuel type to 91 if Petrol
    if (_selectedVehicle?.fuelType == "Petrol") {
      selectedFuelType = 91;
    }
    _updateFuelPrice();
    litersController = TextEditingController();
    priceController = TextEditingController();
    litersController.addListener(_updateButtonState);
    priceController.addListener(_updateButtonState);
  }

  void _updateButtonState() {
    setState(() {
      isButtonEnabled =
          litersController.text.isNotEmpty || priceController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    // quantityController.dispose();
    litersController.removeListener(_updateButtonState);
    priceController.removeListener(_updateButtonState);
    litersController.dispose();
    priceController.dispose();
    super.dispose();
  }

  void _updateFuelPrice() {
    if (_selectedVehicle?.fuelType == "Diesel") {
      fuelPrice = double.parse(widget.selectedPunchers.diesel?.price ?? "0.0");
      selectedFuelId = 1;
    } else {
      if (selectedFuelType == 91) {
        fuelPrice =
            double.parse(widget.selectedPunchers.gasoline91?.price ?? "0.0");
        selectedFuelId = 2;
      } else if (selectedFuelType == 95) {
        fuelPrice =
            double.parse(widget.selectedPunchers.gasoline95?.price ?? "0.0");
        selectedFuelId = 3;
      }
    }
  }

  Future<void> _convertToPrice() async {
    final liters = double.tryParse(litersController.text) ?? 0.0;
    final pricePerLiter = fuelPrice ?? 0.0;
    totalPrice = (liters * pricePerLiter).toStringAsFixed(2);
    // Update priceController with a fixed string
    priceController.text = totalPrice;
  }

  Future<void> _convertToLiters() async {
    final price = double.tryParse(priceController.text) ?? 0.0;
    final pricePerLiter = fuelPrice ?? 0.0;
    // Prevent division by zero
    if (pricePerLiter == 0.0) {
      litersController.text = "0.00";
      return;
    }
    totalPrice = price.toStringAsFixed(2);
    final totalLiters = (price / pricePerLiter).toStringAsFixed(2);
    // Update litersController with a fixed string
    litersController.text = totalLiters;
  }

  void _toggleFuelType() {
    setState(() {
      // Toggle between 91 and 95
      selectedFuelType = selectedFuelType == 91 ? 95 : 91;

      // Update fuel price based on new selection
      _updateFuelPrice();

      // Clear input fields to avoid conflicts
      litersController.clear();
      priceController.clear();
      totalPrice = "0.0";
    });
  }

  bool isButtonEnabled = true;
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: FutureHubAppBar(
        title: Text(
          t.fuel,
          style: const TextStyle(
              color: Palette.blackColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        context: context,
      ),
      body: LayoutBuilder(builder: (context, constraint) {
        return SafeArea(
          child: SingleChildScrollView(
            reverse: true,
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    minHeight: constraint.maxHeight -
                        MediaQuery.of(context).viewInsets.bottom -
                        kToolbarHeight -
                        MediaQuery.of(context).padding.top -
                        MediaQuery.of(context).padding.bottom -
                        40),
                child: IntrinsicHeight(
                  child: Column(
                    children: [
                      _buildTopSection(),
                      _buildVehiclePlate(),
                      _buildFuelSelection(),
                      const SizedBox(
                        height: 30,
                      ),
                      _buildFuelOrderSummary(),
                      const Spacer(),
                      const SizedBox(
                        height: 40, // Adjust height accordingly
                      ),
                      _buildOrderButton(),
                      // Expanded(
                      //   child: Column(
                      //     children: [
                      //      // Button at bottom
                      //     ],
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildTopSection() {
    final t = AppLocalizations.of(context)!;
    return Container(
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: const DecorationImage(
          image: AssetImage('assets/images/small.png'), // Set background image
          fit: BoxFit.fill, // Adjust the image to cover the container
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                widget.order.image ?? ""), // Replace with actual image
            radius: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(t.fuel_Balance,
                      style: const TextStyle(color: Colors.white)),
                  const SizedBox(height: 5),
                  Text("${widget.order.balanceFuel} ${t.sar} ",
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18)),
                  const SizedBox(height: 8),
                ],
              ),
              const SizedBox(width: 50),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(t.walletAmount,
                      style: const TextStyle(color: Colors.white)),
                  const SizedBox(height: 5),
                  Text("${widget.order.fuelPullLimit} ${t.sar} ",
                      style:
                          const TextStyle(color: Colors.white, fontSize: 18)),
                  const SizedBox(height: 8),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVehiclePlate() {
    final t = AppLocalizations.of(context)!;
    return GestureDetector(
      onTap: () {
        if (widget.order.vehicles?.isNotEmpty ?? false) {
          _showVehicleSelectionBottomSheet();
        }
      },
      child: Container(
        width: 360,
        height: 83,
        margin: const EdgeInsets.symmetric(vertical: 35),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: const Color(0xffF9F9F9),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  t.vicheleId,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 15),
                Text(
                  "${_selectedVehicle?.plateLetters.ar} - ${_selectedVehicle?.plateNumbers}",
                  style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            const Spacer(),
            // if ((widget.order.vehicles?.length ?? 0) > 1)
            Text(
              t.change,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Color(0xff55217F),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showVehicleSelectionBottomSheet() {
    final t = AppLocalizations.of(context)!;
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      isScrollControlled: true,
      builder: (context) => Container(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
          bottom: 30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Header
            Center(
              child: Text(
                t.vehicle_Change, // "Change Vehicle" in Arabic
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Vehicle List
            Container(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.of(context).size.height * 0.5,
              ),
              child: ListView.separated(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                itemCount: widget.order.vehicles?.length??0,

                separatorBuilder: (context, index) => const Divider(
                  height: 1,
                  thickness: 1,
                  color: Color(0xFFEEEEEE),
                ),
                itemBuilder: (context, index) {
                final vehicle = widget.order.vehicles![index];

                  return InkWell(
                    onTap: () {
                      setState(() {
                        litersController.clear();
                        priceController.clear();
                        totalPrice = "0.0";
                        _selectedVehicle = vehicle;
                        // Update fuel type based on selected vehicle
                        if (vehicle.fuelType == "Diesel") {
                          selectedFuelType = 1; // Diesel
                        } else {
                          selectedFuelType = 91; // Default to 91 petrol
                        }
                        _updateFuelPrice();
                        // print(_selectedVehicle.id);
                      });
                      Navigator.pop(context);
                    },
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "${CacheManager.locale! == const Locale("en") ? vehicle.plateLetters.en : vehicle.plateLetters.ar} - ${vehicle.plateNumbers}",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // // Close Button
            // const SizedBox(height: 20),
            // ElevatedButton(
            //   onPressed: () => Navigator.pop(context),
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: const Color(0xFF55217F),
            //     minimumSize: const Size(double.infinity, 50),
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(12),
            //     ),
            //   ),
            //   child: const Text(
            //     'إغلاق', // "Close" in Arabic
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 16,
            //       fontWeight: FontWeight.bold,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildFuelSelection() {
    final t = AppLocalizations.of(context)!;
    final isDiesel = _selectedVehicle?.fuelType == "Diesel";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(t.literCount,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 15),
        if (isDiesel) _buildDieselSection() else _buildPetrolSection(),
        const SizedBox(height: 8),
      ],
    );
  }

  Widget _buildDieselSection() {
    final t = AppLocalizations.of(context)!;
    return Row(
      children: [
        Container(
          width: 90,
          height: 90,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFF55217F),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: widget.selectedPunchers.diesel?.image ?? "",
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(
                  color: Colors.white,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(
                Icons.error,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ),
        // Image.asset(
        //   'assets/images/diesel.png', // Replace with your Diesel image
        //   width: 86,
        //   height: 86,
        // ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(_selectedVehicle?.fuelType ?? "",
                style: const TextStyle(fontSize: 20)),
            const SizedBox(
              height: 5,
            ),
            Text(t.literPrice,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff55217F))),
            const SizedBox(
              height: 5,
            ),
            Text("$fuelPrice ", style: const TextStyle(fontSize: 20)),
          ],
        ),
      ],
    );
  }

  Widget _buildPetrolSection() {
    final t = AppLocalizations.of(context)!;
    return Row(
      children: [
        // selectedFuelType == 91
        // Petrol Image
        selectedFuelType == 91
            ? Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF55217F),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: widget.selectedPunchers.gasoline91?.image ?? "",
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                    errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            : Container(
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFF55217F),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl: widget.selectedPunchers.gasoline95?.image ?? "",
                    placeholder: (context, url) => const Center(
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                    errorWidget: (context, url, error) => const Icon(
                      Icons.error,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),

        // Image.asset(
        //   'assets/images/diesel.png', // Replace with your Diesel image
        //   width: 86,
        //   height: 86,
        // ),
        const SizedBox(width: 16), // Space between image and text
        // Fuel Type and Liter Price
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "بنزين $selectedFuelType",
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(t.literPrice,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff55217F))),
            const SizedBox(
              height: 5,
            ),
            Text("$fuelPrice ", style: const TextStyle(fontSize: 20)),
          ],
        ),
        const Spacer(), // Pushes the toggle switch to the end
        // Custom Toggle Switch
        GestureDetector(
          onTap: _toggleFuelType,
          child: Container(
            width: 40,
            height: 80,
            decoration: BoxDecoration(
              color: const Color(0xffF9F9F9),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(style: BorderStyle.none),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                // Static label for "91" at the top
                Positioned(
                  top: 10, // Always at the top
                  child: Text(
                    "91",
                    style: TextStyle(
                      color: selectedFuelType == 91
                          ? Colors.white
                          : const Color(0xff54217E),
                      fontSize: 14,
                    ),
                  ),
                ),
                // Static label for "95" at the bottom
                Positioned(
                  bottom: 10, // Always at the bottom
                  child: Text(
                    "95",
                    style: TextStyle(
                      color: selectedFuelType == 95
                          ? Colors.white
                          : const Color(0xff54217E),
                      fontSize: 14,
                    ),
                  ),
                ),
                // Animated toggle button
                AnimatedPositioned(
                  duration: const Duration(milliseconds: 300),
                  top:
                      selectedFuelType == 91 ? 4 : 38, // Toggle button position
                  left: 4,
                  right: 4,
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color(0xff54217E),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      selectedFuelType.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFuelOrderSummary() {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Container(
      // width: 300,
      // height: 300,
      decoration: BoxDecoration(
        color: const Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(25), // Circular border radius
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: litersController,
                        keyboardType: const TextInputType.numberWithOptions(
                            signed: false),
                        inputFormatters: [
                          EnglishDigitsOnlyFormatter(),
                          FilteringTextInputFormatter.deny(
                              RegExp(r'[\-|,]')), // Extra protection
                        ],
                        decoration: InputDecoration(
                          labelText: t.liter,
                          border: OutlineInputBorder(
                            borderSide:
                                const BorderSide(style: BorderStyle.none),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onChanged: (_) {
                          _convertToPrice();
                        },
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        t.liter,
                        style: theme.textTheme.bodyLarge!.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8.0),
                CircleAvatar(
                  radius: 30.0, // Larger radius for better design
                  backgroundColor: const Color(0xff55217F),
                  child: IconButton(
                    icon: const Icon(Icons.swap_horiz, color: Colors.white),
                    onPressed: () {
                      // _toggleConversion();
                      // _addToCart();
                    },
                  ),
                ),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: priceController,
                        keyboardType: const TextInputType.numberWithOptions(
                            signed: false),
                        inputFormatters: [
                          EnglishDigitsOnlyFormatter(),
                          FilteringTextInputFormatter.deny(
                              RegExp(r'[\-|,]')), // Extra protection
                        ],
                        decoration: InputDecoration(
                          labelText: t.price,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        onChanged: (_) => _convertToLiters(),
                      ),
                      const SizedBox(height: 8.0),
                      Text(
                        t.price,
                        style: theme.textTheme.bodyLarge!.copyWith(
                            fontSize: 20, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 16.0),
            // const Divider(thickness: 1.0),
            // const SizedBox(height: 16.0),
          ],
        ),
      ),
    );
  }

  bool _loading = false; // Add this variable to track loading state
  Future<void> _createOrder() async {
    final orderCubit = context.read<OrderCubit>();
    // final state = orderCubit.state;
    await runFetch(
      context: context,
      fetch: () async {
        setState(() => _loading = true);
        // final punchersCubit = context.read<EmployeePunchersCubit>();
        // final branch = punchersCubit.cubitPunchers
        //     .firstWhere((b) => b.id == state.branchId);
        final order = await _ordersService.createFuelOrder(
          totalPrice: num.tryParse(totalPrice) ?? 0.0,
          vehicleId: _selectedVehicle?.id ?? 0,
          fuelId: selectedFuelId,
          puncher: widget.selectedPunchers.serviceProviderId ?? 0,
          branch: widget.selectedPunchers.id ?? 0,
          quantity: num.tryParse(litersController.text) ?? 0.0,
        );
        orderCubit.orderCreated(order);
        if (!mounted) return;
        if (widget.order.isMeterImageRequired == 1) {
          // Navigate to CarMeterScreen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CarMeterScreen(
                order: order,
              ),
            ),
          );
        } else {
          // No meter required, finish order and show QR
          await _handleFinishOrder(
              context, order.referenceNumber.toString(), order);
          if (mounted) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OrderQrCodeScreen(
                  order: order,
                ),
              ),
            );
          }
        }
      },
      after: () {
        setState(() => _loading = false);
      },
    );
  }

  Future<void> _handleFinishOrder(
      BuildContext context, String refNumber, Order order) async {
    try {
      setState(() => _loading = true);
      await _ordersService.finishFuelOrder(
        image: null,
        refNumber: refNumber,
      );
      if (context.mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OrderQrCodeScreen(
              order: order,
            ),
          ),
        );
      }
    } catch (e) {
      debugPrint("Error in finishOrder: $e");
      if (context.mounted) {
        showToast(
          text: "Failed to complete order: $e",
          state: ToastStates.error,
        );
      }
    } finally {
      if (mounted) {
        setState(() => _loading = false);
      }
    }
  }

  Widget _buildOrderButton() {
    final t = AppLocalizations.of(context)!;
    bool isValidInput(String input) {
      if (input.isEmpty) return false;
      if (input == '0') return false;
      if (input == '.' || input == ',') return false;
      // Remove any allowed decimal points for validation
      final cleaned = input.replaceAll('.', '');
      return cleaned.isNotEmpty && double.tryParse(input) != null;
    }

    // Check both fields
    final litersValid = isValidInput(litersController.text);
    final priceValid = isValidInput(priceController.text);
    final isButtonEnabled =
        litersValid && priceValid && widget.order.vehicles?.isNotEmpty == true;
    return ElevatedButton(
      onPressed: !isButtonEnabled ? null : _createOrder,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff55217F),
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100), // Circular radius of 100
        ),
      ),
      child: _loading
          ? const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                color: Colors.white, // Loading indicator color
                strokeWidth: 3, // Thickness of the loading indicator
              ),
            )
          : Text(
              t.activeOrdersNow,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
    );
  }
}
