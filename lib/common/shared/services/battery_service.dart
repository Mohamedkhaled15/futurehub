import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BatteryService {
  static const _channel = MethodChannel('battery_optimization');

  static Future<void> checkAndRequestOptimization(BuildContext context) async {
    // Only run on Android
    if (!Platform.isAndroid) return;

    try {
      final isDisabled = await _isBatteryOptimizationDisabled();

      if (!isDisabled) {
        await _showOptimizationDialog(context);
      }
    } catch (e) {
      debugPrint('Battery optimization check error: $e');
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('حدث خطأ أثناء التحقق من إعدادات البطارية'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    }
  }

  static Future<bool> _isBatteryOptimizationDisabled() async {
    try {
      return await _channel.invokeMethod('isBatteryOptimizationDisabled') ??
          false;
    } catch (e) {
      debugPrint('Error checking battery optimization: $e');
      return false;
    }
  }

  static Future<void> _showOptimizationDialog(BuildContext context) async {
    if (!context.mounted || ModalRoute.of(context)?.isCurrent != true) return;

    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text("تحسين البطارية",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold)),
        content: const Text(
          "لضمان استمرار التتبع أثناء إغلاق التطبيق، يرجى تعطيل تحسين البطارية للتطبيق في إعدادات الجهاز",
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
              await _openBatterySettings();
            },
            child: const Text("فتح الإعدادات"),
          ),
        ],
      ),
    );
  }

  static Future<void> _openBatterySettings() async {
    try {
      await _channel.invokeMethod('openBatterySettings');
    } catch (e) {
      debugPrint('Error opening battery settings: $e');
    }
  }

  static Future<void> onStartTracking(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    final hasShownBatteryPrompt =
        prefs.getBool('hasShownBatteryPrompt') ?? false;

    if (!hasShownBatteryPrompt) {
      await checkAndRequestOptimization(context);
      await prefs.setBool('hasShownBatteryPrompt', true);
    }
  }
}
