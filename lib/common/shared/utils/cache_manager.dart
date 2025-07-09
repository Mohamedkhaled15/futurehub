import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheManager {
  static late SharedPreferences _preferences;
  static const _secureStorage = FlutterSecureStorage();
  static final List<VoidCallback> _listeners = [];

  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
    // final tokenExists = await _secureStorage.read(key: 'access_token') != null;
    // if (tokenExists) {
    //   await _secureStorage.deleteAll(
    //     iOptions: const IOSOptions(accessibility: KeychainAccessibility.unlocked_this_device,synchronizable: true),
    //   );
    //   debugPrint("Deleted all Keychain data on init.");
    // }
  }

  static void addListener(VoidCallback listener) {
    _listeners.add(listener);
  }

  static void removeListener() {
    _listeners.clear();
  }

// Call this when the locale changes
  static void notifyLocaleChanged() {
    for (final listener in _listeners) {
      listener();
    }
  }

  static Locale? get locale {
    final value = _preferences.getString('locale');

    if (value == null) {
      return null;
    }

    return Locale(value);
  }

  static Future<dynamic> getData(String key) async {
    final value = _preferences.getString(key);
    return value;
  }

  static void changeLocale(String locale) {
    _preferences.setString('locale', locale);
    notifyLocaleChanged();
  }

  static Future<String?> getToken() async {
    final token = await _secureStorage.read(
      key: 'access_token',
      iOptions: const IOSOptions(
          accessibility: KeychainAccessibility.first_unlock,
          synchronizable: true,
          accountName: "future hub"),
      aOptions: const AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );
    return token;
  }

  static Future<void> setToken(String token) async {
    await _secureStorage.write(
      aOptions: const AndroidOptions(
        encryptedSharedPreferences: true,
      ),
      key: 'access_token',
      iOptions: const IOSOptions(
          accessibility: KeychainAccessibility.first_unlock,
          synchronizable: true,
          accountName: "future hub"),
      value: token,
    );
  }

  static Future<void> saveData(String key, String value) async {
    _preferences.setString(key, value);
  }

  static Future<void> deleteToken() async {
    await _secureStorage.delete(
      key: 'access_token',
      iOptions: const IOSOptions(
          accessibility: KeychainAccessibility.first_unlock,
          synchronizable: true,
          accountName: "future hub"),
      aOptions: const AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    );
  }
}
