import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/auth/models/user.dart';
import 'package:future_hub/common/auth/services/auth_service.dart';
import 'package:future_hub/common/notifications/services/notifications_service.dart';
import 'package:future_hub/common/shared/router.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/shared/utils/run_fetch.dart';
import 'package:future_hub/common/shared/widgets/flutter_toast.dart';

import '../../../l10n/app_localizations.dart';

class AuthCubit extends Cubit<AuthState> {
  final _authService = AuthService();
  // final _pointsService = PointsService();

  AuthCubit() : super(AuthLoading());

  Future<void> init() async {
    try {
      final needsUpdate = await _checkAppVersion();
      if (needsUpdate) {
        await _handleForceUpdate();
        return;
      }
      final onBoarding = await CacheManager.getData('onBoarding');
      final languageScreen = await CacheManager.getData('languageScreen');
      final token = await CacheManager.getToken();
      debugPrint("hehehe1234${token.toString()}");
      debugPrint("language screen from cubit is $languageScreen");
      if (languageScreen == null) {
        // Future.delayed(const Duration(seconds: 1), () {
        router.go('/choose_language_screen');
        // });
        return;
      }
      if (onBoarding == null) {
        // Future.delayed(const Duration(seconds: 1), () {
        router.go('/onBoarding');
        // Client.authenticate(null);
        CacheManager.deleteToken();
        // });
        return;
      }

      if (token == null) {
        // Future.delayed(const Duration(seconds: 1), () {
        router.go('/login');
        // });
        return emit(AuthSignedOut());
      }
      // Client.authenticate(token);
      final user = await _authService.me();
      await login(user, token);
    } catch (error) {
      debugPrint("Error is ${error.toString()}");
      // Client.authenticate(null);
      CacheManager.deleteToken();
      return emit(AuthSignedOut());
    } finally {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // FlutterNativeSplash.remove();
      });
    }
  }

  // Future<void> initializeApp() async {
  //   try {
  //     final appVersionData = await _authService.checkAppVersion();
  //     final backendVersion =
  //         appVersionData.version.androidVersion; // Adjust this to your model
  //     final currentAppVersion = ApiConstants.currentVersion;
  //
  //     if (backendVersion != currentAppVersion) {
  //       final token = await CacheManager.getToken();
  //
  //       if (token == null) {
  //         // Navigate to login and show update sheet
  //         router.go('/login');
  //         emit(ForceUpdateRequired());
  //       } else {
  //         // Sign out and show update sheet on login
  //         router.go('/login');
  //         await _authService.logout();
  //         await CacheManager.deleteToken();
  //         FirebaseMessaging.instance.deleteToken();
  //         emit(SignedOutDueToUpdate());
  //       }
  //     } else {
  //       // Continue normal app flow
  //       emit(AppInitialized());
  //     }
  //   } catch (e) {
  //     throw Exception("Can't change OTP when AuthState isn't AuthSignedOut");
  //   }
  // }
  Future<bool> _checkAppVersion() async {
    try {
      final appVersionData = await _authService.checkAppVersion();
      String version = await NotificationsService().getAppVersion();
      final currentPlatformVersion = Platform.isAndroid
          ? appVersionData.version.androidVersion
          : appVersionData.version.appleVersion;
      debugPrint(version);
      return currentPlatformVersion != version;
    } catch (e) {
      // If version check fails, continue normal flow
      debugPrint("Version check error: ${e.toString()}");
      return false;
    }
  }

  Future<void> _handleForceUpdate() async {
    final token = await CacheManager.getToken();
    if (token != null) {
      await _authService.logout();
      await CacheManager.deleteToken();
      debugPrint("token remove");
      await FirebaseMessaging.instance.deleteToken();
    }
    emit(ForceUpdateRequired());
    await Future.delayed(const Duration(milliseconds: 100));
    router.go('/login');
  }

  void setOTP(String otp) {
    final current = state;

    if (current is AuthSignedOut) {
      return emit(
        AuthSignedOut(
          otp: otp,
          phone: current.phone,
        ),
      );
    }

    throw Exception("Can't change OTP when AuthState isn't AuthSignedOut");
  }

  void setPhone(String phone) async {
    final token = await CacheManager.getToken();
    if (token == null) {
      emit(AuthSignedOut());
    }
    final current = state;
    debugPrint("the auth state is $state");
    if (current is AuthSignedOut) {
      return emit(
        AuthSignedOut(
          phone: phone,
          otp: current.otp,
        ),
      );
    }

    throw Exception("Can't change phone when AuthState isn't AuthSignedOut");
  }

  void signingEmployee(String name, String company) {
    debugPrint("token is ${CacheManager.getToken()}");
    final current = state;
    if (current is AuthSignedOut) {
      return emit(
        AuthEmployeeSigningIn(
          name: name,
          company: company,
          phone: current.phone,
          otp: current.otp,
        ),
      );
    }
    throw Exception(
        "Can't sign in an employee when AuthState isn't AuthSignedOut");
  }

  // 0560498238
  Future<void> login(
    User user,
    String token,
  ) async {
    await CacheManager.setToken(token);
    // Client.authenticate(token);
    emit(
      AuthSignedIn(
        token: token,
        user: user,
      ),
    );
    // Future.delayed(const Duration(seconds: 1), () {
    switch (user.type) {
      case 'company':
        return router.go('/company/home');
      case 'customer':
        return router.go('/employee');
      default:
        return router.go('/puncher');
    }
    // });
  }

  void signOut() async {
    router.go('/login');
    await _authService.logout();
    // Client.authenticate(null);
    CacheManager.deleteToken();
    FirebaseMessaging.instance.deleteToken();
    emit(AuthSignedOut());
  }

  Future<void> updateProfile({
    required String name,
    required String phone,
    required String email,
    required BuildContext context,
  }) async {
    await runFetch(
      context: context,
      fetch: () async {
        await _authService.updateProfile(
          name: name,
          phone: phone,
          email: email,
        );

        final current = state as AuthSignedIn;

        emit(
          AuthSignedIn(
            user: current.user.copyWith(
              name: name,
              mobile: phone,
              email: email,
            ),
            token: current.token,
          ),
        );

        if (context.mounted) {
          final t = AppLocalizations.of(context)!;
          showToast(
            text: t.profile_updated_successfully,
            state: ToastStates.success,
          );
        }
      },
    );
  }

  Future<void> updateProfilePhoto({
    required File image,
    required BuildContext context,
  }) async {
    final imageURL = await _authService.updateProfilePhoto(image);

    final current = state as AuthSignedIn;

    emit(
      AuthSignedIn(
        user: current.user.copyWith(image: imageURL),
        token: current.token,
      ),
    );

    if (context.mounted) {
      final t = AppLocalizations.of(context)!;
      showToast(
        text: t.profile_photo_updated_successfully,
        state: ToastStates.success,
      );
    }
  }

  Future<void> refreshUserData() async {
    try {
      final userData = await _authService.me();
      final current = state as AuthSignedIn;

      emit(
        AuthSignedIn(
          user: userData,
          token: current.token,
        ),
      );
    } catch (e) {
      debugPrint("Failed to refresh user data: $e");
      rethrow;
    }
  }

  Future<void> deleteAccount(BuildContext context) async {
    await runFetch(
      context: context,
      fetch: () async {
        await _authService.deleteAccount();
        signOut();
      },
    );
  }

  // Future<int?> gainPoints(BuildContext context, {required String code}) async {
  //   return runFetch<int>(
  //     context: context,
  //     fetch: () async {
  //       final points = await _pointsService.scanProductCode(code);
  //
  //       final current = state as AuthSignedIn;
  //
  //       emit(
  //         AuthSignedIn(
  //           user: current.user.copyWith(
  //             points: current.user.points! + points,
  //           ),
  //           token: current.token,
  //         ),
  //       );
  //
  //       return points;
  //     },
  //   );
  // }
}
