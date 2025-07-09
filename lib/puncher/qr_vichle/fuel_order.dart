import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';
import 'package:future_hub/common/shared/widgets/number_format.dart';
import 'package:future_hub/puncher/orders/model/vehicle_qr.dart';
import 'package:future_hub/puncher/orders/services/puncher_order_services.dart';
import 'package:go_router/go_router.dart';

import '../../common/shared/palette.dart';
import '../../common/shared/widgets/chevron_app_bar.dart';

class FuelOrderScreen extends StatefulWidget {
  final VehicleQr order;
  final Driver selectedDriver;
  const FuelOrderScreen(
      {super.key, required this.order, required this.selectedDriver});
  @override
  _FuelOrderScreenState createState() => _FuelOrderScreenState();
}

class _FuelOrderScreenState extends State<FuelOrderScreen> {
  int selectedFuelType = 91; // Default selected fuel type for Petrol
  num fuelPrice = 0.0; // Current fuel price
  String totalPrice = "0.0"; // Total price
  int selectedFuelId = 0; // Default selected fuel type for Petrol
  late TextEditingController litersController;
  late TextEditingController priceController;
  final _ordersService = PuncherOrderServices();
  @override
  void initState() {
    super.initState();
    // Set default fuel type to 91 if Petrol
    if (widget.order.data.fuelType == "Petrol") {
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
    if (widget.order.data.fuelType == "Diesel") {
      // Diesel case: litrePrice is a String
      fuelPrice = double.parse(widget.order.data.litrePrice as String);
      selectedFuelId = widget.order.data.productId;
    } else {
      // Petrol case: litrePrice is a LitrePrice object
      final litrePrice = widget.order.data.litrePrice as LitrePrice;
      final fuelId = widget.order.data.productId as ProductId;
      if (selectedFuelType == 91) {
        fuelPrice = double.parse(litrePrice.gasoline91);
        selectedFuelId = fuelId.gasoline91;
      } else if (selectedFuelType == 95) {
        fuelPrice = double.parse(litrePrice.gasoline95);
        selectedFuelId = fuelId.gasoline95;
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

  void navigateToCarNumberScreen(BuildContext context, String referenceNumber) {
    context.pushNamed(
      'carNumber',
      pathParameters: {
        'referenceNumber': referenceNumber,
        'type': "fuel_order",
      },
    );
  }
  // void showOdometerBottomSheet(BuildContext context, String referenceNumber) {
  //   showModalBottomSheet(
  //     context: context,
  //     isScrollControlled: true,
  //     shape: const RoundedRectangleBorder(
  //       borderRadius: BorderRadius.vertical(top: Radius.circular(26)),
  //     ),
  //     builder: (context) => Padding(
  //       padding: EdgeInsets.only(
  //         bottom: MediaQuery.of(context).viewInsets.bottom,
  //         top: 20,
  //         left: 20,
  //         right: 20,
  //       ),
  //       child: CarNumberBottomSheet(
  //         referenceNumber: referenceNumber,
  //         type: "fuel_order",
  //       ),
  //     ),
  //   );
  // }

  bool isButtonEnabled = true;

  Future<void> _confirm(BuildContext context, String referenceNumber) async {
    debugPrint("helloooo");
    if (isButtonEnabled) {
      // Disable the button
      setState(() {
        isButtonEnabled = false;
      });

      // Open the OTP bottom sheet immediately
      navigateToCarNumberScreen(context, referenceNumber);

      // Run the OTP sending process in the background
      // await runFetch(
      //   context: context,
      //   fetch: () async {
      //     await _ordersService.sendOtp(referenceNumber);
      //   },
      //   after: () {
      //     // Optionally handle any post-OTP logic here
      //   },
      // );
      // Re-enable the button after 10 seconds
      Future.delayed(const Duration(seconds: 10), () {
        if (mounted) {
          setState(() {
            isButtonEnabled = true;
          });
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: FutureHubAppBar(
        title: Text(
          t.vicheleInfo,
          style: const TextStyle(
              color: Palette.blackColor,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
        context: context,
      ),
      body: LayoutBuilder(
        builder: (context, constraint) {
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
        },
      ),
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
                widget.selectedDriver.image), // Replace with actual image
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
                  Text("${widget.selectedDriver.walletAmount} ${t.sar} ",
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
                  Text("${widget.selectedDriver.pullLimit} ${t.sar} ",
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
    return Container(
      width: 360,
      height: 83,
      margin: const EdgeInsets.symmetric(vertical: 35),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            t.vicheleId,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "${widget.order.data.plateLetters.ar} - ${widget.order.data.plateNumbers}",
            style: const TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }

  Widget _buildFuelSelection() {
    final t = AppLocalizations.of(context)!;
    final isDiesel = widget.order.data.fuelType == "Diesel";

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
        Image.asset(
          'assets/images/diesel.png', // Replace with your Diesel image
          width: 86,
          height: 86,
        ),
        const SizedBox(width: 8),
        Column(
          children: [
            Text(widget.order.data.fuelType,
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
        // Petrol Image
        Image.asset(
          'assets/images/diesel.png', // Replace with your Diesel image
          width: 86,
          height: 86,
        ),
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
    ;
  }

  bool _isLoading = false; // Add this variable to track loading state

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
    final isButtonEnabled = litersValid && priceValid;
    return ElevatedButton(
      onPressed: !isButtonEnabled
          ? null
          : () async {
              setState(() {
                _isLoading = true; // Start loading
              });

              try {
                final order = await _ordersService.createServiceProviderOrder(
                  totalPrice: num.parse(totalPrice),
                  vehicleId: widget.order.data.id,
                  driverId: widget.selectedDriver.id,
                  quantity: num.parse(litersController.text),
                  // productId: selectedFuelId,
                  fuelId: selectedFuelId,
                );

                if (!mounted) return;
                context.pop();

                await _confirm(context, order.referenceNumber.toString());
              } catch (e) {
                // Handle any errors that occur during the operation
                if (!mounted) return;
                showToast(text: e.toString(), state: ToastStates.error);
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(
                //       content: Text("Failed to place order: ${e.toString()}")),
                // );
              } finally {
                if (mounted) {
                  setState(() {
                    _isLoading = false; // Stop loading
                  });
                }
              }
            },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xff55217F),
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100), // Circular radius of 100
        ),
      ),
      child: _isLoading
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
