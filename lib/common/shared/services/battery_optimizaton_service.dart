import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BatteryOptimizationService {
  static const _channel = MethodChannel('battery_optimization');

  static Future<bool> isBatteryOptimizationDisabled() async {
    if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
      try {
        final result =
            await _channel.invokeMethod('isBatteryOptimizationDisabled');
        return result as bool? ?? false;
      } catch (e) {
        debugPrint('Battery optimization check error: $e');
        return false;
      }
    }
    return true;
  }

  static Future<void> openBatterySettings() async {
    if (!kIsWeb && defaultTargetPlatform == TargetPlatform.android) {
      try {
        await _channel.invokeMethod('openBatterySettings');
      } catch (e) {
        debugPrint('Error opening battery settings: $e');
      }
    }
  }

  static Future<void> checkAndRequestOptimization(BuildContext context) async {
    final isDisabled = await isBatteryOptimizationDisabled();
    if (!isDisabled) {
      _showOptimizationDialog(context);
    }
  }

  static Future<void> _showOptimizationDialog(BuildContext context) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("تحسين البطارية",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold)),
        content: const Text(
          "لضمان استمرار التتبع أثناء إغلاق التطبيق، يرجى تعطيل تحسين البطارية للتطبيق",
          textAlign: TextAlign.center,
        ),
        actionsAlignment: MainAxisAlignment.spaceAround,
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("لاحقاً"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue[700],
              foregroundColor: Colors.white,
            ),
            onPressed: () async {
              Navigator.pop(context);
              await openBatterySettings();
            },
            child: const Text("فتح الإعدادات"),
          ),
        ],
      ),
    );
  }
}
