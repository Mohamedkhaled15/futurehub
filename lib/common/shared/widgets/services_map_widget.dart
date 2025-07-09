import 'dart:async';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:future_hub/common/auth/models/user.dart';
import 'package:future_hub/common/shared/services/map_services.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/employee/components/services_map_pop_up.dart';
import 'package:future_hub/employee/home/model/services-categories_model.dart';
import 'package:future_hub/employee/orders/cubit/employee_services_branches_cubit.dart';
import 'package:future_hub/employee/orders/models/services_branch_model.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ServicesMapWidget extends StatefulWidget {
  final ServicesPunchersCubit cubit;
  final User user;
  final Categories categories;
  const ServicesMapWidget(
      {super.key,
      required this.cubit,
      required this.user,
      required this.categories});

  @override
  createState() => _MapWidgetState();
}

class _MapWidgetState extends State<ServicesMapWidget> {
  static Position? position;
  final Completer<GoogleMapController> _mapController = Completer();
  // String? distanceInKm;
  // String? selectedDistance;
  static final CameraPosition _myCurrentLocationCameraPosition = CameraPosition(
    bearing: 0.0,
    target: LatLng(position!.latitude, position!.longitude),
    tilt: 0.0,
    zoom: 17,
  );
  Set<Marker> markers = {};
  // ignore: unused_field
  double _topPosition = -200;
  ServicesPuncher? _selectedPuncher;

  @override
  initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      getMyCurrentLocation();
    });
  }

  Future<Uint8List> _assetImageBytes(String asset, int width) {
    final completer = Completer<Uint8List>();
    final config = createLocalImageConfiguration(context);
    final image = AssetImage(asset);
    final stream = image.resolve(config);

    stream.addListener(ImageStreamListener((info, _) async {
      final byteData = await info.image.toByteData(format: ImageByteFormat.png);
      final bytes = byteData!.buffer.asUint8List();
      final codec = await instantiateImageCodec(bytes, targetWidth: width);
      final frame = await codec.getNextFrame();
      final data = await frame.image.toByteData(format: ImageByteFormat.png);
      completer.complete(data!.buffer.asUint8List());
    }));

    return completer.future;
  }

  Future<void> getMyCurrentLocation() async {
    // Capture context-related values before async operations
    final localContext = context;
    final languageCode = Localizations.localeOf(localContext).languageCode;
    String iconPath;

    if (languageCode == 'en') {
      iconPath = 'assets/images/gasen.png';
    } else if (languageCode == 'ar') {
      iconPath = 'assets/images/gasar.png';
    } else {
      iconPath = 'assets/images/gasar.png';
    }

    try {
      position = await MapServices.getCurrentLocation();

      if (!mounted) return; // Check if widget is still mounted

      final image = await _assetImageBytes(iconPath, 100);
      final icon = BitmapDescriptor.bytes(image);

      Set<Marker> newMarkers = {};

      for (final branch in widget.cubit.servicePunchers) {
        try {
          final latitude = double.tryParse(branch.latitude.toString()) ?? 0.0;
          final longitude = double.tryParse(branch.longitude.toString()) ?? 0.0;

          if (latitude != 0.0 && longitude != 0.0) {
            newMarkers.add(Marker(
              onTap: () {
                if (!mounted) return;
                setState(() {
                  _selectedPuncher = branch;
                  _topPosition = 0;
                });
              },
              markerId: MarkerId("id-${branch.id}"),
              icon: icon,
              position: LatLng(latitude, longitude),
            ));
          }
        } catch (e) {
          print("Error processing branch ${branch.id}: $e");
        }
      }
      if (mounted) {
        setState(() {
          markers = newMarkers;
        });
      }
    } catch (e) {
      print("Error getting location: $e");
    }
  }

  Widget buildMap() {
    return GoogleMap(
      mapType: MapType.terrain,
      myLocationEnabled: true,
      onTap: (latlng) {
        setState(() {
          _topPosition = -200;
        });
      },
      zoomControlsEnabled: true,
      myLocationButtonEnabled: false,
      markers: markers,
      initialCameraPosition: _myCurrentLocationCameraPosition,
      onMapCreated: (GoogleMapController controller) {
        _mapController.complete(controller);
      },
    );
  }

  Future<void> _goToMyCurrentLocation() async {
    final GoogleMapController controller = await _mapController.future;
    controller.animateCamera(
        CameraUpdate.newCameraPosition(_myCurrentLocationCameraPosition));
    setState(() {
      _topPosition = -200;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          position != null
              ? buildMap()
              : const Center(
                  child: CircularProgressIndicator(
                    color: Colors.blue,
                  ),
                ),
          _selectedPuncher == null
              ? Container()
              : AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  right: 0,
                  left: 0,
                  top: MediaQuery.of(context).size.height * 0.2,
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque, // Capture all taps
                    onTap:
                        () {}, // Prevent closing when tapping outside the dialog
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ServicesMapPopUpWidget(
                        categories: widget.categories,
                        user: widget.user,
                        selectedPuncher: _selectedPuncher,
                        distance: _selectedPuncher?.distanceInKm ?? "",
                        onClosed: () {
                          setState(() {
                            _selectedPuncher = null; // Close the dialog
                          });
                        },
                        id: _selectedPuncher!.id ?? 0,
                        title:
                            "${CacheManager.locale! == const Locale("en") ? _selectedPuncher!.title?.en : _selectedPuncher!.title?.ar}  (${CacheManager.locale! == const Locale("en") ? _selectedPuncher!.title?.en : _selectedPuncher!.title?.ar})",
                        imageUrl: _selectedPuncher!.image,
                        location: _selectedPuncher!.city!,
                      ),
                    ),
                  ),
                )
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.fromLTRB(0, 0, 4, 45),
        child: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: _goToMyCurrentLocation,
          child: const Icon(Icons.place, color: Colors.white),
        ),
      ),
    );
  }
}
