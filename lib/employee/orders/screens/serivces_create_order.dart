import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/auth/models/user.dart';
import 'package:future_hub/common/shared/models/products.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/employee/orders/cubit/order_cubit.dart';
import 'package:future_hub/employee/orders/services/order_service.dart';

import 'employee_qr_order_screen.dart';

class SerivcesCreateOrderScreen extends StatefulWidget {
  final User user;
  final CompanyProduct product;
  final ServicesBranchDeatils selectedPunchers;
  const SerivcesCreateOrderScreen(
      {super.key,
      required this.user,
      required this.selectedPunchers,
      required this.product});
  @override
  _SerivcesCreateOrderScreenState createState() =>
      _SerivcesCreateOrderScreenState();
}

class _SerivcesCreateOrderScreenState extends State<SerivcesCreateOrderScreen> {
  late Vehicle _selectedVehicle;

  final _ordersService = OrderService();
  @override
  void initState() {
    super.initState();
    _selectedVehicle = widget.user.vehicles?[0][0] ??
        Vehicle(
          id: 0,
          plateLetters: PlateLetters(ar: '', en: ''),
          plateNumbers: '',
          carType: '',
          carBrand: '',
          carModel: '',
          manufactureYear: '',
          fuelType: 'Petrol', // default
          internalId: '',
          other1: '',
        );
    // Set default fuel type to 91 if Petrol
  }

  // void _updateButtonState() {
  //   setState(() {
  //     isButtonEnabled =
  //         litersController.text.isNotEmpty || priceController.text.isNotEmpty;
  //   });
  // }

  @override
  void dispose() {
    super.dispose();
  }

  bool isButtonEnabled = true;
  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: FutureHubAppBar(
        title: Text(
          t.payment_details,
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
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        _buildTopSection(),
                        const SizedBox(
                          height: 20,
                        ),
                        _buildServicesOrderSummary(),
                        const SizedBox(
                          height: 10,
                        ),
                        _buildVehiclePlate(),
                        Center(
                          child: SizedBox(
                            height: 150,
                            width: 150,
                            child: Image.network(
                              widget.product.image ??
                                  'https://i5.walmartimages.com/asr/462c1ae6-966c-4652-b93e-8559e992d45b.031cacbaeeac39e5a5aaee89579a5e73.jpeg',
                              // fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const Spacer(),
                        // const SizedBox(
                        //   height: 100, // Adjust height accordingly
                        // ),
                        _buildOrderButton(), // Button at bottom
                      ],
                    ),
                  ),
                ],
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
                widget.user.image ?? ""), // Replace with actual image
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
                  Text(t.services_balance,
                      style: const TextStyle(color: Colors.white)),
                  const SizedBox(height: 5),
                  Text("${widget.user.balanceService} ${t.sar} ",
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
                  Text("${widget.user.servicePullLimit} ${t.sar} ",
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
        if (widget.user.vehicles?.isNotEmpty ?? false) {
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
                  "${_selectedVehicle.plateLetters.ar} - ${_selectedVehicle.plateNumbers}",
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
                itemCount: widget.user.vehicles!.expand((e) => e).length,
                separatorBuilder: (context, index) => const Divider(
                  height: 1,
                  thickness: 1,
                  color: Color(0xFFEEEEEE),
                ),
                itemBuilder: (context, index) {
                  final vehicle =
                      widget.user.vehicles!.expand((e) => e).toList()[index];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedVehicle = vehicle;
                        print(_selectedVehicle.id);
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
          ],
        ),
      ),
    );
  }

  Widget _buildServicesOrderSummary() {
    final t = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    return Container(
      // width: 300,
      // height: 300,
      decoration: BoxDecoration(
        color: const Color(0xffF9F9F9),
        borderRadius: BorderRadius.circular(10), // Circular border radius
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  t.price,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                Text(
                  '${widget.product.price} ${t.sar}',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff55217F),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  t.services,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                const Spacer(),
                Text(
                  CacheManager.locale! == const Locale("en")
                      ? widget.product.title.en
                      : widget.product.title.ar,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff55217F),
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
    final state = orderCubit.state;
    await runFetch(
      context: context,
      fetch: () async {
        setState(() => _loading = true);
        final order = await _ordersService.createServicesOrder(
          totalPrice: num.tryParse(widget.product.price) ?? 0.0,
          vehicleId: _selectedVehicle.id ?? 0,
          servicesId: widget.product.id,
          puncher: widget.selectedPunchers.data.serviceProviderId ?? 0,
          branch: widget.selectedPunchers.data.id ?? 0,
        );
        orderCubit.orderCreated(order);
        if (!mounted) return;
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
      },
      after: () {
        setState(() => _loading = false);
      },
    );
  }

  Widget _buildOrderButton() {
    final t = AppLocalizations.of(context)!;
    return ElevatedButton(
      onPressed: _createOrder,
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
              t.confirm_order,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
            ),
    );
  }
}
