import 'dart:async';
import 'dart:convert';
import 'dart:developer';

import 'package:battery_plus/battery_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:future_hub/common/shared/services/battery_optimizaton_service.dart';
import 'package:future_hub/common/shared/services/battery_service.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:workmanager/workmanager.dart';

@pragma('vm:entry-point')
class MapServices {
  static Stream<Position>? _locationStream;
  static StreamSubscription<Position>? _locationSubscription;
  static final Map<int, Function(Position)> _activeTrackers = {};
  static bool _isTracking = false;
  static Timer? _backgroundTimer;
  static final Battery _battery = Battery();

  //======================= Location Permission =======================
  static Future<bool> ensureLocationEnabled() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) return false;

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse &&
          permission != LocationPermission.always) {
        return false;
      }
    }

    return true;
  }

  static Future<Position> getCurrentLocation() async {
    if (!await ensureLocationEnabled()) {
      throw Exception('Location services are disabled or permission denied');
    }

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  //======================= Tracker Management =======================
  static void addTracker(
      int trackerId, Function(Position) callback, BuildContext context) {
    _activeTrackers[trackerId] = callback;
    _startTracking(context);
  }

  static void removeTracker(int trackerId) {
    _activeTrackers.remove(trackerId);
    if (_activeTrackers.isEmpty) {
      _stopTracking();
    }
  }

  //======================= Tracking =======================
  static void _startTracking(BuildContext context) async {
    if (_isTracking) return;

    await BatteryOptimizationService.checkAndRequestOptimization(context);
    try {
      await BatteryService.checkAndRequestOptimization(context);
    } catch (e) {
      log('Battery optimization error: $e');
    }

    final service = FlutterBackgroundService();
    if (!await service.isRunning()) {
      await service.startService();
    }

    _locationStream = trackUserLocation();
    _locationSubscription = _locationStream?.listen((position) {
      for (final callback in _activeTrackers.values) {
        callback(position);
      }
    });

    _isTracking = true;
    await CacheManager.setTrackingActive(true);
  }

  static void _stopTracking() async {
    if (_activeTrackers.isNotEmpty) return;

    _locationSubscription?.cancel();
    _locationSubscription = null;
    _isTracking = false;
    await CacheManager.setTrackingActive(false);

    _backgroundTimer?.cancel();
    _backgroundTimer = null;

    Future.delayed(const Duration(minutes: 1), () async {
      if (!_isTracking) {
        final service = FlutterBackgroundService();
        if (await service.isRunning()) {
          service.invoke('stopService');
        }
      }
    });
  }

  static Stream<Position> trackUserLocation() async* {
    final settings = LocationSettings(
      accuracy: await _getOptimalAccuracy(),
      distanceFilter: await _getOptimalDistance(),
    );
    yield* Geolocator.getPositionStream(locationSettings: settings);
  }

  static Future<LocationAccuracy> _getOptimalAccuracy() async {
    final batteryLevel = await _battery.batteryLevel;
    final batteryState = await _battery.batteryState;
    final isCharging = batteryState == BatteryState.charging;

    if (isCharging || batteryLevel > 70) {
      return LocationAccuracy.high;
    } else if (batteryLevel > 30) {
      return LocationAccuracy.medium;
    } else {
      return LocationAccuracy.low;
    }
  }

  static Future<int> _getOptimalDistance() async {
    final accuracy = await _getOptimalAccuracy();
    return accuracy == LocationAccuracy.high ? 10 : 30;
  }

  //======================= Background Service =======================
  static Future<void> initBackgroundService() async {
    final service = FlutterBackgroundService();

    await service.configure(
      iosConfiguration: IosConfiguration(
        autoStart: false,
        onForeground: _onStart,
        onBackground: _onBackground,
      ),
      androidConfiguration: AndroidConfiguration(
        onStart: _onStart,
        isForegroundMode: true,
        autoStart: false,
        notificationChannelId: 'driver_tracking',
        initialNotificationTitle: 'تتبع السائق',
        initialNotificationContent: 'جاري تتبع موقعك',
        foregroundServiceNotificationId: 12345,
        foregroundServiceTypes: [AndroidForegroundType.location],
      ),
    );

    if (await CacheManager.isTrackingActive()) {
      await service.startService();
    }
  }

  static void startBackgroundTrackingFromService() {
    if (!_isTracking) {
      _startTrackingWithoutServiceCheck();
    }
  }

  static void _startTrackingWithoutServiceCheck() {
    _locationStream = trackUserLocation();
    _locationSubscription = _locationStream?.listen((position) {
      for (final callback in _activeTrackers.values) {
        callback(position);
      }
    });
    _isTracking = true;
  }

  static void startBackgroundTracking() {
    FlutterBackgroundService().startService();
  }

  static void stopBackgroundTracking() {
    FlutterBackgroundService().invoke('stopService');
  }

  @pragma('vm:entry-point')
  static void _onStart(ServiceInstance service) async {
    if (service is AndroidServiceInstance) {
      await service.setAsForegroundService();
    }

    _backgroundTimer?.cancel();
    _backgroundTimer =
        Timer.periodic(const Duration(seconds: 10), (timer) async {
      if (await CacheManager.isTrackingActive()) {
        final driverId = await CacheManager.getCurrentDriverId();
        if (driverId != null) {
          try {
            final position = await Geolocator.getLastKnownPosition();
            if (position != null) {
              await _sendBackgroundLocationUpdate(driverId, position);
            }
          } catch (e) {
            log('Background location error: $e');
          }
        }
      }
    });
  }

  @pragma('vm:entry-point')
  static Future<bool> _onBackground(ServiceInstance service) async {
    WidgetsFlutterBinding.ensureInitialized();
    return true;
  }

  static Future<void> _sendBackgroundLocationUpdate(
      int driverId, Position position) async {
    final token = await CacheManager.getToken();
    try {
      await http.post(
        Uri.parse("${ApiConstants.baseTestURL}/update-location"),
        body: jsonEncode({
          'user_id': driverId,
          'latitude': position.latitude,
          'longitude': position.longitude,
        }),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': token != null ? "Bearer $token" : "",
          'Accept': 'application/json',
          'Connection': 'keep-alive',
          'Accept-Language': CacheManager.locale?.languageCode ?? 'ar',
        },
      );
      log("تم إرسال الموقع للمستخدم: $driverId");
    } catch (e) {
      log("فشل إرسال الموقع: $e");
    }
  }

  //======================= WorkManager for Background Task =======================
  static void initializeBackgroundService() {
    Workmanager().initialize(_backgroundCallback, isInDebugMode: false);
  }

  @pragma('vm:entry-point')
  static Future<void> _backgroundCallback() async {
    WidgetsFlutterBinding.ensureInitialized();
    final service = FlutterBackgroundService();

    if (!await service.isRunning()) {
      await service.startService();
    }

    Timer.periodic(const Duration(minutes: 15), (timer) async {
      if (await CacheManager.isTrackingActive()) {
        final driverId = await CacheManager.getCurrentDriverId();
        if (driverId != null) {
          try {
            final position = await Geolocator.getLastKnownPosition();
            if (position != null) {
              await _sendBackgroundLocationUpdate(driverId, position);
            }
          } catch (e) {
            log('Background location error: $e');
          }
        }
      }
    });
  }
}
