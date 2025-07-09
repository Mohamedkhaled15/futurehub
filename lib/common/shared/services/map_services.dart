import 'package:geolocator/geolocator.dart';

class MapServices {
  static Future<Position> getCurrentLocation() async {
    //  bool isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    // if (!isServiceEnabled) {
    await Geolocator.requestPermission();
    //}

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }
}
