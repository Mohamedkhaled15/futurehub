import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/splash/cubit/states.dart';

import '../../shared/router.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(SplashInitState());

  static SplashCubit get(context) => BlocProvider.of(context);

  onInit(BuildContext context) async {
    emit(SplashScreenLoadingState());
    final token = await CacheManager.getToken();
    final onBoarding = await CacheManager.getData('onBoarding');
    final languageScreen = await CacheManager.getData('languageScreen');
    debugPrint("language screen from splash is $languageScreen");
    if (languageScreen == null) {
      // Future.delayed(const Duration(seconds: 1), () {
      router.go('/choose_language_screen');
      // Client.authenticate(null);
      // CacheManager.deleteToken();
      // });
      return;
    }
    if (onBoarding == null) {
      // Future.delayed(const Duration(seconds: 1), () {
      emit(SplashOnBoardingState());
      router.go('/onBoarding');
      // });
      return;
    } else {
      if (token == null) {
        // Future.delayed(const Duration(seconds: 1), () {
        emit(SplashUnAuthenticatedState());
        // });
        router.go('/login');
        return;
      } else {
        if (AuthCubit().state is AuthSignedIn) {
          final user = (AuthCubit().state as AuthSignedIn).user;
          switch (user.type) {
            case 'company':
              return router.go('/company');
            case 'customer':
              return router.go('/employee');
            default:
              return router.go('/puncher');
          }
        }

        return;
      }
    }
  }
}
