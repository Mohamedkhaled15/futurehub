import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_udid/flutter_udid.dart';
import 'package:future_hub/common/notifications/models/notification_model.dart';
import 'package:future_hub/common/shared/services/remote/dio_manager.dart';
import 'package:future_hub/common/shared/services/remote/end_points.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/utils/fetch_exception.dart';
import 'package:package_info_plus/package_info_plus.dart';

class NotificationsService {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  final DioHelper _dioHelper = DioHelper();

  Future<NotifactionApi> getNotifications() async {
    final token = await CacheManager.getToken();
    try {
      final response = await _dioHelper.getData(
        url: ApiConstants.notifaction,
        token: token,
      );
      if (response.statusCode == 200) {
        // Assuming your response is wrapped in a 'data' key
        return NotifactionApi.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      throw Exception('Error fetching data: $e');
    }
  }

  Future<void> initializeNotifications() async {
    if (Platform.isIOS) {
      // Request notification permissions for iOS
      await FirebaseMessaging.instance.requestPermission(
        alert: true,
        badge: true,
        sound: true,
      );
    } else if (Platform.isAndroid) {
      // Request notification permission for Android 13 and above
      final NotificationSettings settings = await FirebaseMessaging.instance
          .requestPermission(sound: true, alert: true, badge: true);
      if (settings.authorizationStatus == AuthorizationStatus.denied) {
        debugPrint("Notification permission denied on Android");
        // Show a message to the user if permission is denied
      }
    }
    const AndroidNotificationChannel androidChannel =
        AndroidNotificationChannel(
      '500',
      'Futurehub',
      description: 'This channel is used for important notifications.',
      importance: Importance.max,
      playSound: true,
    );

    const AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('ic_launcher');

    const DarwinInitializationSettings initializationSettingsIOS =
        DarwinInitializationSettings(
      defaultPresentSound: true,
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      // onDidReceiveLocalNotification: onDidReceiveLocalNotification,
    );

    const InitializationSettings initializationSettings =
        InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse response) async {
        _handleNotificationTap(response.payload);
      },
    );

    if (Platform.isAndroid) {
      await flutterLocalNotificationsPlugin
          .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>()
          ?.createNotificationChannel(androidChannel);
    }

    // Set foreground notification presentation options for iOS
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    _listenToForegroundMessages();
    _listenToOpenedApp();
  }

  // This method listens to foreground messages
  void _listenToForegroundMessages() {
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      showNotification(message);
    });
  }

  // This method listens to notifications opened from background
  void _listenToOpenedApp() {
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      _handleNotificationTap(message.data['payload']);
    });
  }

  // Display the notification for both Android and iOS
  void showNotification(RemoteMessage message) {
    RemoteNotification? notification = message.notification;
    AndroidNotification? android = message.notification?.android;
    AppleNotification? apple = message.notification?.apple;

    if (notification != null && (android != null || apple != null)) {
      flutterLocalNotificationsPlugin.show(
        notification.hashCode,
        notification.title,
        notification.body,
        const NotificationDetails(
          android: AndroidNotificationDetails(
            priority: Priority.high,
            playSound: true,
            importance: Importance.max,
            '500',
            'Futurehub',
            channelDescription:
                'This channel is used for important notifications.',
            icon: 'ic_launcher',
          ),
          iOS: DarwinNotificationDetails(
            presentSound: true,
            presentAlert: true,
          ),
        ),
        payload: message.data['payload'],
      );
    }
  }

  Future<void> _handleNotificationTap(String? payload) async {
    debugPrint("Notification tapped with payload: $payload");
    // Handle navigation or other actions based on payload
  }

  // iOS-specific method for handling notification when app is in the foreground
  static void onDidReceiveLocalNotification(
      int id, String? title, String? body, String? payload) async {
    debugPrint(
        "Local Notification received with id: $id, title: $title, body: $body, payload: $payload");
  }

  Future<void> updateFCMToken({
    required String? token,
    required String? userToken,
    required String userType,
  }) async {
    try {
      // Gather device info
      String platform = getPlatform();
      String? version = await getAppVersion();
      String deviceId = await getDeviceID();

      // Prepare request payload
      final data = {
        'fcm_token': token!,
        'device_id': deviceId,
        'platform': platform,
        'version': version,
      };

      // Make POST request using DioHelper
      final response = await DioHelper().postData(
        url: ApiConstants
            .updateFcmToken, // Define the endpoint in your API constants
        data: data,
        token: userToken,
      );
      // Check response status
      if (response.statusCode == 200) {
        final responseData = response.data;
        // Validate status and handle response message
        if (responseData['status'] == 'FAIL') {
          throw FetchException(responseData['message']);
        }
        debugPrint(responseData['message']);
      } else {
        throw const FetchException('Failed to update FCM token');
      }

      // Subscribe to Firebase topic
      FirebaseMessaging.instance.subscribeToTopic(userType);

      // Listen for token refresh and re-update the FCM token
      FirebaseMessaging.instance.onTokenRefresh.listen((newToken) async {
        await updateFCMToken(
          userToken: userToken,
          userType: userType,
          token: newToken,
        );
      });
    } catch (e) {
      debugPrint('Error updating FCM token: $e');
      rethrow;
    }
  }

  Future<String> getDeviceID() async {
    String deviceId = await FlutterUdid.udid;
    return deviceId;
  }

  Future<String> getAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String version = packageInfo.version;
    return version;
  }

  String getPlatform() {
    if (Platform.isIOS) {
      return "ios";
    } else if (Platform.isAndroid) {
      return "android";
    } else {
      return "not detected";
    }
  }
}
