import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:future_hub/common/auth/cubit/auth_cubit.dart';
import 'package:future_hub/common/auth/cubit/auth_state.dart';
import 'package:future_hub/common/info/cubit/info_cubit.dart';
import 'package:future_hub/common/notifications/cubit/notifications_cubit.dart';
import 'package:future_hub/common/points/cubit/prevoius_orders_cubit/cubit.dart';
import 'package:future_hub/common/shared/cubits/drawer_cubit/cubit.dart';
import 'package:future_hub/common/shared/cubits/locale_cubit.dart';
import 'package:future_hub/common/shared/cubits/orders_cubit/orders_cubit.dart';
import 'package:future_hub/common/shared/cubits/wallet_cubit/wallet_cubit.dart';
import 'package:future_hub/common/shared/palette.dart';
import 'package:future_hub/common/shared/router.dart';
import 'package:future_hub/common/shared/utils/cache_manager.dart';
import 'package:future_hub/common/splash/cubit/cubit.dart';
import 'package:future_hub/company/coupons/cubit/coupons_cubit.dart';
import 'package:future_hub/employee/oil/cubit/best_oil_cubit/best_oil_cubit.dart'
    as oil_best;
import 'package:future_hub/employee/orders/cubit/employee_punchers_cubit.dart';
import 'package:future_hub/employee/orders/cubit/order_cubit.dart';
import 'package:future_hub/puncher/daily_report/cubit/puncher_report_cubit.dart';
import 'package:future_hub/puncher/orders/order_cubit/service_provider_orders_cubit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../l10n/app_localizations.dart';
import 'common/notifications/services/notifications_service.dart';
import 'common/shared/cubits/products_cubit/products_cubit.dart';
import 'common/shared/services/remote/dio_manager.dart';
import 'company/companyOrders/cubit/cubit/company_order_cubit.dart';
import 'company/employees/cubit/employees_cubit.dart';
import 'employee/oil/cubit/oil_cubit.dart';
import 'employee/orders/cubit/employee_order_cubit.dart';
import 'employee/orders/cubit/employee_services_branches_cubit.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // await initHiveForFlutter();

  timeago.setLocaleMessages('ar', timeago.ArMessages());

  await CacheManager.init();
  await DioHelper.init();
  // await CacheManager.deleteToken();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    name: 'Future-hub',
  );
  await NotificationsService().initializeNotifications();
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  // final fcmToken = await FirebaseMessaging.instance.getToken();
  // debugPrint(fcmToken);
  runApp(const FutureHubApp());
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  NotificationsService().showNotification(message);
}

class FutureHubApp extends StatelessWidget {
  const FutureHubApp({super.key});

  // static final _client = ValueNotifier(Client.current);

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);
    final textScaleFactor =
        // ignore: deprecated_member_use
        media.textScaleFactor * (Platform.isAndroid ? 0.70 : 0.85);
    return BlocProvider(
      create: (context) => AuthCubit()..init(),
      child: MediaQuery(
        data: media.copyWith(textScaler: TextScaler.linear(textScaleFactor)),
        child: BlocBuilder<AuthCubit, AuthState>(
          builder: (context, state) {
            final signedInProviders = [
              BlocProvider(
                create: (context) => InfoCubit()..init(),
                lazy: false,
              ),
              BlocProvider(
                create: (context) => LocaleCubit(),
              ),
              BlocProvider(
                create: (context) => NotificationsCubit()..init(),
              ),
              BlocProvider(
                create: (context) => EmployeesCubit()
                  ..init()
                  ..fetchBranches()
                  ..fetchVehicles(),
              ),
              BlocProvider(
                create: (context) => EmployeePunchersCubit()..loadPunchers(),
              ),
              BlocProvider(create: (_) => ServicesPunchersCubit()),

              BlocProvider(
                create: (context) => ProductsCubit(),
              ),
              BlocProvider(
                create: (context) => OrdersCubit(),
              ),
              BlocProvider(
                create: (context) {
                  final authState = context.read<AuthCubit>().state;
                  final cubit = ServiceProviderOrdersCubit();
                  if (authState is AuthSignedIn) {
                    if (authState.user.puncherTypes!.contains('Fuel')) {
                      cubit.loadOrders();
                    } else {
                      cubit.loadServicesOrders();
                    }
                  }
                  return cubit;
                },
              ),
              BlocProvider(
                create: (context) => EmployeeOrderCubit()..loadOrders(),
              ),
              BlocProvider(create: (context) => PincherReportCubit()),
              BlocProvider(
                create: (context) => CompanyOrderCubit()..loadCompanyOrders(),
              ),
              BlocProvider(
                create: (context) => OrderCubit(),
              ),
              BlocProvider(
                create: (context) => WalletCubit(),
              ),
              BlocProvider(
                create: (context) => OilCubit()..init(),
              ),
              BlocProvider(
                create: (context) => CouponsCubit(),
              ),
              // BlocProvider(
              //   create: (context) => GiftsCubit(),
              // ),
              BlocProvider(
                create: (context) => oil_best.ProductsCubit(),
              ),
              BlocProvider(
                create: (context) => UserGiftsCubit(),
              ),
              BlocProvider(
                create: (context) => DrawerCubit(),
              ),
            ];

            return MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => LocaleCubit(),
                ),
                BlocProvider(
                  create: (context) => DrawerCubit(),
                ),
                BlocProvider(
                  create: (context) => SplashCubit()..onInit(context),
                ),
                BlocProvider(
                  create: (context) => InfoCubit()..init(),
                  lazy: false,
                ),
                if (state is AuthSignedIn) ...signedInProviders
              ],
              child: BlocBuilder<LocaleCubit, Locale?>(
                builder: (context, state) {
                  debugPrint(state.toString());
                  return MaterialApp.router(
                    title: 'Futurehub',
                    routerConfig: router,
                    debugShowCheckedModeBanner: false,
                    localizationsDelegates: const [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    supportedLocales: const [
                      Locale('en'),
                      Locale('ar'),
                      Locale('ur'),
                    ],
                    locale: state,
                    theme: ThemeData(
                      appBarTheme: const AppBarTheme(
                          backgroundColor: Palette.whiteColor),
                      useMaterial3: false,
                      fontFamily: state == const Locale("en") ? 'sf' : null,
                      textTheme: state == const Locale("ar")
                          ? GoogleFonts.almaraiTextTheme()
                          : null,
                      dividerColor: Palette.primaryLightColor,
                      primaryColor: Palette.primaryColor,
                      colorScheme: const ColorScheme.light()
                          .copyWith(primary: Palette.primaryColor),
                      scaffoldBackgroundColor: Palette.whiteColor,
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
