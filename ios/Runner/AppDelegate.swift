import Flutter
import UIKit
import GoogleMaps
import flutter_local_notifications


@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GMSServices.provideAPIKey("AIzaSyD5X_MEYPJPNQUgWzDD0fdL86wDwTgYZ_U")
    GeneratedPluginRegistrant.register(with: self)
FlutterLocalNotificationsPlugin.setPluginRegistrantCallback { (registry) in
    GeneratedPluginRegistrant.register(with: registry)
  }
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
