import 'dart:convert';
import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:future_hub/common/shared/constants.dart';
import 'package:future_hub/common/shared/services/battery_optimizaton_service.dart';
import 'package:future_hub/common/shared/services/map_services.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:pusher_channels_flutter/pusher_channels_flutter.dart';

// Service callbacks
@pragma('vm:entry-point')
Future<void> _onServiceStart(ServiceInstance service) async {
  if (service is AndroidServiceInstance) {
    service.setAsForegroundService();
  }

  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();
  await CacheManager.init();
  _startMinimalLocationTracking();
}

@pragma('vm:entry-point')
Future<bool> _onServiceBackground(ServiceInstance service) async {
  return true;
}

@pragma('vm:entry-point')
void _startMinimalLocationTracking() async {
  final settings = LocationSettings(
    accuracy: LocationAccuracy.medium,
    distanceFilter: 30,
  );

  Geolocator.getPositionStream(locationSettings: settings).listen((position) {
    // Placeholder for sending position
  });
}

@pragma('vm:entry-point')
class PusherConfig {
  late PusherChannelsFlutter _pusher;

  final Map<int, void Function(Position)> _trackerCallbacks = {};

  Future<void> initPusher(void Function(PusherEvent event) onEvent,
      {String? channelName, int? userId, BuildContext? context}) async {
    _pusher = PusherChannelsFlutter.getInstance();

    try {
      await _pusher.init(
        apiKey: apiKEY,
        cluster: apiCLUSTER,
        onConnectionStateChange: (current, previous) {
          log("Connection: $previous → $current");
          if (current == "CONNECTED") {
            _subscribeToChannel(channelName, userId, onEvent);
          }
        },
        onError: onError,
        onSubscriptionSucceeded: onSubscriptionSucceeded,
        onEvent: (PusherEvent event) {
          log("Event: ${event.eventName}");
          if (event.eventName == 'user-selected') {
            _handleUserSelected(event, userId!, context!);
          } else if (event.eventName == 'user-deselected') {
            _handleUserDeselected(event, userId!);
          }
          onEvent(event);
        },
        onSubscriptionError: onSubscriptionError,
        onDecryptionFailure: onDecryptionFailure,
        onMemberAdded: onMemberAdded,
        onMemberRemoved: onMemberRemoved,
      );
      await _pusher.connect();
    } catch (e) {
      log("Pusher init error: $e");
    }
  }

  Future<void> _subscribeToChannel(String? channelName, int? userId,
      void Function(PusherEvent event) onEvent) async {
    try {
      var socketId = await fetchSocketId();
      if (socketId == null) return;

      if (channelName != null && channelName.startsWith('private-')) {
        await _pusher.subscribe(
          channelName: channelName ?? '',
          onEvent: (dynamic event) {
            if (event is PusherEvent) {
              onEvent(event);
            } else {
              log("Received non-PusherEvent: $event");
            }
          },
        );
      } else {
        await _pusher.subscribe(
          channelName: channelName ?? '',
          onEvent: (dynamic event) {
            if (event is PusherEvent) {
              onEvent(event);
            } else {
              log("Received non-PusherEvent: $event");
            }
          },
        );
      }
    } catch (e) {
      log("Subscription error: $e");
    }
  }

  Future<String?> fetchSocketId() async {
    String? socketId;
    int retryCount = 0;

    while (socketId == null && retryCount < 5) {
      socketId = await _pusher.getSocketId();
      retryCount++;
    }
    return socketId;
  }

  void disconnectPusher() {
    _pusher.disconnect();
  }

  void onError(String message, int? code, dynamic e) =>
      log("Pusher Error: $message, Code: $code, Exception: $e");

  void onSubscriptionSucceeded(String channelName, dynamic data) =>
      log("Subscribed: $channelName");

  void onSubscriptionError(String message, dynamic e) =>
      log("Subscription Error: $message, Exception: $e");

  void onDecryptionFailure(String event, String reason) =>
      log("Decrypt Failure on $event: $reason");

  void onMemberAdded(String channelName, PusherMember member) =>
      log("Member Added to $channelName: $member");

  void onMemberRemoved(String channelName, PusherMember member) =>
      log("Member Removed from $channelName: $member");

  Future<void> _handleUserSelected(
      PusherEvent event, int userId, BuildContext context) async {
    log("Start tracking user: $userId");
    await CacheManager.setCurrentDriverId(userId);
    await CacheManager.setTrackingActive(true);

    if (!_trackerCallbacks.containsKey(userId)) {
      _trackerCallbacks[userId] = (position) {
        _sendLocationUpdate(userId, position);
      };
    }

    await BatteryOptimizationService.checkAndRequestOptimization(context);
    final service = FlutterBackgroundService();
    final isRunning = await service.isRunning();

    if (!isRunning) {
      await service.configure(
        androidConfiguration: AndroidConfiguration(
          onStart: _onServiceStart,
          isForegroundMode: true,
          autoStart: true,
          notificationChannelId: 'driver_tracking',
          initialNotificationTitle: 'تتبع السائق',
          initialNotificationContent: 'جاري تتبع موقعك',
          foregroundServiceNotificationId: 12345,
          foregroundServiceTypes: [AndroidForegroundType.location],
        ),
        iosConfiguration: IosConfiguration(
          autoStart: true,
          onForeground: _onServiceStart,
          onBackground: _onServiceBackground,
        ),
      );
    }

    await service.startService();
    MapServices.addTracker(userId, _trackerCallbacks[userId]!, context);
  }

  Future<void> _handleUserDeselected(PusherEvent event, int userId) async {
    log("Stop tracking user: $userId");
    MapServices.removeTracker(userId);
    _trackerCallbacks.remove(userId);

    if ((await CacheManager.getCurrentDriverId()) == userId) {
      await CacheManager.setCurrentDriverId(null);
      await CacheManager.setTrackingActive(false);

      if (_trackerCallbacks.isEmpty) {
        final service = FlutterBackgroundService();
        service.invoke('stopService');
      }
    }
  }

  Future<void> _sendLocationUpdate(int trackerId, Position position) async {
    final token = await CacheManager.getToken();
    try {
      await http.post(
        Uri.parse("${ApiConstants.baseLiveURL}/update-location"),
        body: jsonEncode({
          'user_id': trackerId,
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
      log("Location sent for user: $trackerId");
    } catch (e) {
      log("Failed to send location: $e");
    }
  }
}
