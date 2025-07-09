import 'package:flutter/material.dart';
import '../../../l10n/app_localizations.dart';
import 'package:future_hub/common/shared/widgets/chevron_app_bar.dart';
import 'package:future_hub/puncher/orders/model/vehicle_qr.dart';

import '../../common/shared/palette.dart';
import 'fuel_order.dart';

class VehicleDetailsScreen extends StatefulWidget {
  final VehicleQr order;

  const VehicleDetailsScreen({Key? key, required this.order}) : super(key: key);

  @override
  _VehicleDetailsScreenState createState() => _VehicleDetailsScreenState();
}

class _VehicleDetailsScreenState extends State<VehicleDetailsScreen> {
  int? selectedDriverId;

  @override
  void initState() {
    super.initState();
    // Auto-select driver if only one exists
    if (widget.order.data.drivers.length == 1) {
      selectedDriverId = widget.order.data.drivers.first.id;
    }
  }

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context)!;
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildVehicleDetails(),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 250.0),
              child: Text(t.driverList,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  )),
            ),
            const SizedBox(height: 20),
            _buildDriversList(),
            _buildNextButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildVehicleDetails() {
    final vehicle = widget.order.data;
    return Container(
      height: 133,
      width: 333,
      decoration: BoxDecoration(
        color: const Color(0xFFF9F9F9),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    vehicle.drivers[0].companyName,
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "${vehicle.plateLetters.ar} - ${vehicle.plateNumbers}",
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "${vehicle.carBrand} ${vehicle.carModel}",
                    style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff545454)),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/images/carf.png',
              height: 51,
              width: 160,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDriversList() {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.order.data.drivers.length,
        itemBuilder: (context, index) {
          final driver = widget.order.data.drivers[index];
          final isSelected = selectedDriverId == driver.id;
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(driver.image),
            ),
            title: Text(
              driver.name,
              style: const TextStyle(fontSize: 20),
            ),
            trailing: Checkbox(
              value: isSelected,
              onChanged: (bool? value) {
                setState(() {
                  selectedDriverId = value! ? driver.id : null;
                });
              },
              shape: const CircleBorder(),
              activeColor: Colors.white,
              checkColor: const Color(0xFF5FFF9F),
            ),
          );
        },
      ),
    );
  }

  Widget _buildNextButton() {
    final t = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ElevatedButton(
        onPressed: selectedDriverId == null
            ? null
            : () {
                final selectedDriver = widget.order.data.drivers
                    .firstWhere((driver) => driver.id == selectedDriverId);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FuelOrderScreen(
                        order: widget.order, selectedDriver: selectedDriver),
                  ),
                );
              },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff55217F),
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        child: Text(t.next,
            style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20)),
      ),
    );
  }
}
