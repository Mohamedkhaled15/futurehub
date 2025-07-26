import 'package:flutter/material.dart';
import 'package:future_hub/common/auth/models/company.dart';
import 'package:future_hub/common/auth/models/user.dart';
import 'package:future_hub/common/auth/screens/choose_language_screen.dart';
import 'package:future_hub/common/auth/screens/login_screen.dart';
import 'package:future_hub/common/auth/screens/otp_screen.dart';
import 'package:future_hub/common/auth/screens/password_recovery_otp_screen.dart';
import 'package:future_hub/common/auth/screens/password_recovery_phone_screen.dart';
import 'package:future_hub/common/auth/screens/password_recovery_screen.dart';
import 'package:future_hub/common/auth/screens/password_screen.dart';
import 'package:future_hub/common/auth/screens/sign_up_screen.dart';
import 'package:future_hub/common/info/screens/about_screen.dart';
import 'package:future_hub/common/info/screens/faq_screen.dart';
import 'package:future_hub/common/info/screens/privacy_policy_screen.dart';
import 'package:future_hub/common/info/screens/terms_conditions_screen.dart';
import 'package:future_hub/common/onBoarding/on_boarding_screen.dart';
import 'package:future_hub/common/points/models/user_gift.dart';
import 'package:future_hub/common/points/screens/points_added_screen.dart';
import 'package:future_hub/common/points/screens/points_redeemed_screen.dart';
import 'package:future_hub/common/points/screens/scan_product_points_code_screen.dart';
import 'package:future_hub/common/profile/screens/account_data_screen.dart';
import 'package:future_hub/common/profile/screens/change_password_screen.dart';
import 'package:future_hub/common/profile/screens/profile_screen.dart';
import 'package:future_hub/common/shared/settings/screens/language_screen.dart';
import 'package:future_hub/common/shared/settings/screens/setting_screen.dart';
import 'package:future_hub/common/shared/settings/screens/support_screen.dart';
import 'package:future_hub/common/splash/splash_screen.dart';
import 'package:future_hub/common/wallet/screens/payment_methods_screen.dart';
import 'package:future_hub/common/wallet/screens/transaction_screen.dart';
import 'package:future_hub/common/wallet/screens/wallet_recharge.dart';
import 'package:future_hub/common/wallet/screens/wallet_screen.dart';
import 'package:future_hub/company/companyOrders/company_orders.dart';
import 'package:future_hub/company/companyOrders/model/order_company_model.dart';
import 'package:future_hub/company/components/company_order_details.dart';
import 'package:future_hub/company/coupons/coupons_screen.dart';
import 'package:future_hub/company/employees/model/driver_model.dart';
import 'package:future_hub/company/employees/screens/add_group_employees_screen.dart';
import 'package:future_hub/company/employees/screens/add_single_employee_screen.dart';
import 'package:future_hub/company/employees/screens/company_employee_screen.dart';
import 'package:future_hub/company/employees/screens/edit_employee_screen.dart';
import 'package:future_hub/company/employees/screens/emloyees_screen.dart';
import 'package:future_hub/company/employees/screens/employee_details_screen.dart';
import 'package:future_hub/company/employees/screens/employee_wallet_screen.dart';
import 'package:future_hub/company/employees/screens/soon_screen.dart';
import 'package:future_hub/company/employees/widgets/company_employee_order_proudct_deatils.dart';
import 'package:future_hub/company/home/screens/company_home_screen.dart';
import 'package:future_hub/company/layout/screens/company_layout_screen.dart';
import 'package:future_hub/company/products/screens/product_details_screen.dart';
import 'package:future_hub/company/products/screens/products_screen.dart';
import 'package:future_hub/employee/home/model/services-categories_model.dart';
import 'package:future_hub/employee/home/screens/employee_home_screen.dart';
import 'package:future_hub/employee/oil/screens/oil_search_result_screen.dart';
import 'package:future_hub/employee/oil/screens/oil_search_screen.dart';
import 'package:future_hub/employee/orders/models/employee_order_model.dart';
import 'package:future_hub/employee/orders/models/puncher_branch.dart';
import 'package:future_hub/employee/orders/screens/employee_new_order_screen.dart';
import 'package:future_hub/employee/orders/screens/employee_order_details_screen.dart';
import 'package:future_hub/employee/orders/screens/employee_orders_screen.dart';
import 'package:future_hub/employee/orders/screens/employee_puncher_screen.dart';
import 'package:future_hub/employee/orders/screens/employee_services_branches_screen.dart';
import 'package:future_hub/employee/orders/screens/employees_order_details_screen.dart';
import 'package:future_hub/employee/orders/screens/fuel_create_order_screen.dart';
import 'package:future_hub/employee/orders/screens/serivces_create_order.dart';
import 'package:future_hub/puncher/daily_report/screens/reports_screen.dart';
import 'package:future_hub/puncher/home/screens/puncher_home_screen.dart';
import 'package:future_hub/puncher/orders/model/service_provider_order_model.dart';
import 'package:future_hub/puncher/orders/model/service_provider_order_model_confirm_canel.dart';
import 'package:future_hub/puncher/orders/model/vehicle_qr.dart';
import 'package:future_hub/puncher/orders/screens/puncher_order_deatils.dart';
import 'package:future_hub/puncher/orders/screens/puncher_order_details_screen.dart';
import 'package:future_hub/puncher/orders/screens/puncher_orders_screen.dart';
import 'package:future_hub/puncher/orders/screens/recieve_order_screen.dart';
import 'package:future_hub/puncher/qr_vichle/fail_order_screen.dart';
import 'package:future_hub/puncher/qr_vichle/vichle_deatils.dart';
import 'package:future_hub/puncher/shared/widgets/car_number_bottom_sheet.dart';
import 'package:future_hub/puncher/shared/widgets/otp_bottom_sheet.dart';
import 'package:go_router/go_router.dart';

import '../../puncher/qr_vichle/sucess_order_screen.dart';
import '../points/screens/points_partners_screen.dart';
import '../points/screens/points_screen.dart';
import '../wallet/screens/bank_transfer_screen.dart';
import 'models/order_model.dart';
import 'models/products.dart';

final RouteObserver<ModalRoute<void>> routeObserver =
    RouteObserver<ModalRoute<void>>();
final router = GoRouter(
  observers: [routeObserver], // <--- here, not in MaterialApp.router
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/support_screen',
      builder: (context, state) => const SupportScreen(),
    ),
    GoRoute(
      path: '/choose_language_screen',
      builder: (context, state) => const ChooseLanguageScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/onBoarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/password/:phone',
      builder: (context, state) => PasswordScreen(
        phoneNumber: state.pathParameters['phone']!,
      ),
    ),
    GoRoute(
      path: '/otp/:phone',
      builder: (context, state) => OTPScreen(
        phoneNumber: state.pathParameters['phone']!,
      ),
    ),
    GoRoute(
      path: '/password-recovery/phone',
      builder: (context, state) => const PasswordRecoveryPhoneScreen(),
    ),
    GoRoute(
      path: '/puncher-orders-screen',
      builder: (context, state) => const PuncherOrdersScreen(),
    ),
    GoRoute(
      path: '/password-recovery/otp/:phone',
      builder: (context, state) => PasswordRecoveryOTPScreen(
        phoneNumber: state.pathParameters['phone']!,
      ),
    ),
    GoRoute(
      path: '/password-recovery/change',
      builder: (context, state) => const PasswordRecoveryScreen(),
    ),
    GoRoute(
      path: '/sign-up',
      builder: (context, state) => SignUpScreen(
        id: state.uri.queryParameters['id']!,
      ),
    ),
    GoRoute(
      path: '/puncher',
      builder: (context, state) => const PuncherHomeScreen(),
    ),
    GoRoute(
      path: '/puncher/recieve-order',
      builder: (context, state) => const RecieveOrderScreen(),
    ),
    GoRoute(
      path: '/puncher/order-details',
      builder: (context, state) => PuncherOrderDetailsScreen(
        order: state.extra as ServiceProviderOrderConfirmCancelModel,
      ),
    ),
    GoRoute(
      path: '/puncher/vehicle-details',
      builder: (context, state) => VehicleDetailsScreen(
        order: state.extra as VehicleQr,
      ),
    ),
    GoRoute(
      path: '/company',
      builder: (context, state) => const CompanyLayoutScreen(),
    ),
    GoRoute(
      path: '/company/home',
      builder: (context, state) => const CompanyHomeScreen(),
    ),
    GoRoute(
      path: '/company/product',
      builder: (context, state) => const ProductsScreen(),
    ),
    GoRoute(
        path: '/company/product/:id',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>;
          final user = extra['user'] as User;
          final selectedPunchers =
              extra['selectedPunchers'] as ServicesBranchDeatils;
          final product = extra['product'] as CompanyProduct;
          return ProductDetailsScreen(
            selectedPunchers: selectedPunchers,
            user: user,
            state.pathParameters['id']!,
            product: product,
            company: state.uri.queryParameters['company'] == 'true',
          );
        }),
    GoRoute(
      path: '/employee/puncher-create-services-screen',
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        final user = extra['user'] as User;
        final selectedPunchers =
            extra['selectedPunchers'] as ServicesBranchDeatils;
        final product = extra['product'] as CompanyProduct;
        return SerivcesCreateOrderScreen(
          user: user,
          product: product,
          selectedPunchers: selectedPunchers,
        );
      },
    ),
    GoRoute(
      path: '/company/employee',
      builder: (context, state) => const CompanyEmployeesScreen(),
    ),
    GoRoute(
      path: '/company/employees',
      builder: (context, state) => const CompanyEmployeeScreen(),
    ),
    GoRoute(
      path: '/company/soon',
      builder: (context, state) => const SoonScreen(),
    ),
    GoRoute(
      path: '/company/employee/:id',
      builder: (context, state) =>
          EmployeeDetailsScreen(state.pathParameters['id']!),
    ),
    GoRoute(
      path: '/company/employees/add-single',
      builder: (context, state) => const AddSingleEmployee(),
    ),
    GoRoute(
      path: '/company/employees/add-group',
      builder: (context, state) => const AddGroupEmployees(),
    ),
    GoRoute(
      path: '/company/orders',
      builder: (context, state) => const CompanyOrdersScreen(),
    ),
    GoRoute(
      path: '/employee',
      builder: (context, state) => EmployeeHomeScreen(
        onTapBalance: () {},
      ),
    ),
    GoRoute(
      path: '/account-data',
      builder: (context, state) => const AccountDataScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/wallet/transaction',
      builder: (context, state) => TransactionScreen(
        transaction: state.extra as CompanyTransactionHistory,
      ),
    ),
    GoRoute(
      path: '/coupons',
      builder: (context, state) => const CouponsScreen(),
    ),
    GoRoute(
      path: '/terms',
      builder: (context, state) => const TermsConditionsScreen(),
    ),
    GoRoute(
      path: '/about',
      builder: (context, state) => const AboutScreen(),
    ),
    GoRoute(
      path: '/points',
      builder: (context, state) => const PointsScreen(),
    ),
    GoRoute(
      path: '/points/points_partners',
      builder: (context, state) => const PointPartnersScreen(),
    ),
    GoRoute(
      path: '/points/scan-product',
      builder: (context, state) => const ScanProductPointsCodeScreen(),
    ),
    GoRoute(
      path: '/points/added',
      builder: (context, state) => PointsAddedScreen(
        points: int.parse(state.uri.queryParameters['points']!),
      ),
    ),
    GoRoute(
      path: '/points/redeemed',
      builder: (context, state) => PointsRedeemedScreen(
        userGift: state.extra as UserGift,
        old: state.uri.queryParameters.containsKey('old'),
      ),
    ),
    GoRoute(
      path: '/privacy',
      builder: (context, state) => const PrivacyPolicyScreen(),
    ),
    GoRoute(
      path: '/faq',
      builder: (context, state) => const FAQScreen(),
    ),
    GoRoute(
      path: '/employee/new-order',
      builder: (context, state) => const EmployeeNewOrderScreen(),
    ),
    GoRoute(
      path: '/employee/puncher-screen/:id',
      builder: (context, state) {
        final categoryId = state.uri.queryParameters['categoryId'];
        return EmployeePuncherScreen(
          int.parse(state.pathParameters['id']!),
          name: state.extra as String,
          categoryId: int.parse(categoryId!),
        );
      },
    ),
    GoRoute(
      path: '/employees/services-branches',
      builder: (context, state) => EmployeeServicesBranchesScreen(
        categories: state.extra as Categories,
      ),
    ),
    GoRoute(
      path: '/employee/puncher-create-fuel-screen',
      builder: (context, state) {
        final extra = state.extra as Map<String, dynamic>;
        final order = extra['order'] as User;
        final selectedPunchers = extra['selectedPunchers'] as Punchers;
        return FuelCreateOrderScreen(
          order: order,
          selectedPunchers: selectedPunchers,
        );
      },
    ),
    GoRoute(
      path: '/employee/oil/search',
      builder: (context, state) => const OilSearchScreen(),
    ),
    GoRoute(
      path: '/employee/oil/result',
      builder: (context, state) => const OilSearchResultScreen(),
    ),
    GoRoute(
      path: '/employee/order-details',
      builder: (context, state) => EmployeeOrderDetailsScreen(
        order: state.extra as EmployeeOrder,
        showActivate: state.uri.queryParameters['showButton'] == "true",
      ),
    ),
    GoRoute(
      path: '/employees/order-details',
      builder: (context, state) => EmployeesOrderDetailsScreen(
        order: state.extra as Order,
        showActivate: state.uri.queryParameters['showButton'] == "true",
      ),
    ),
    GoRoute(
      path: '/company/employees/order-details',
      builder: (context, state) => CompanyEmployeeOrderDetailsScreen(
        order: state.extra as DriverOrder,
        showActivate: state.uri.queryParameters['showButton'] == "true",
      ),
    ),
    GoRoute(
      path: '/company/order-details',
      builder: (context, state) => CompanyOrderDetailsScreen(
        order: state.extra as CompanyOrder,
        showActivate: state.uri.queryParameters['showButton'] == "true",
      ),
    ),
    GoRoute(
      path: '/puncher/order-details-screen',
      builder: (context, state) => PuncherOrdersDetailsScreen(
        order: state.extra as Datum,
        showActivate: state.uri.queryParameters['showButton'] == "true",
      ),
    ),
    GoRoute(
      path: '/employee-orders-screen',
      builder: (context, state) => const EmployeeOrdersScreen(),
    ),
    GoRoute(
      path: '/change-password',
      builder: (context, state) => const ChangePasswordScreen(),
    ),
    GoRoute(
      path: '/edit-employee',
      builder: (context, state) =>
          EditEmployeeScreen(employee: state.extra as DriverData),
    ),
    GoRoute(
      path: '/company/employee/:id/employee-wallet',
      builder: (context, state) => EmployeeWalletScreen(
        transactionHistory: state.extra as List<TransactionHistory>,
        id: int.parse(state.pathParameters['id']!),
        balance: double.parse(state.uri.queryParameters['balance']!),
      ),
    ),
    GoRoute(
      path: '/payment-methods-screen',
      builder: (context, state) => const PaymentMethodsScreen(),
    ),
    GoRoute(
      path: '/wallet',
      builder: (context, state) => const WalletScreen(),
    ),
    GoRoute(
      path: '/bank-transfer-screen',
      builder: (context, state) => PaymentScreen(
        isBank: state.uri.queryParameters['isBank'] == "true",
        title: state.extra.toString(),
        amount: state.extra as double,
      ),
    ),
    GoRoute(
      path: '/wallet-keyboard',
      builder: (context, state) => WalletRechargeScreen(),
    ),
    GoRoute(
      path: '/settings_screen',
      builder: (context, state) => const SettingsScreen(),
    ),
    GoRoute(
      path: '/language_screen',
      builder: (context, state) => const LanguageScreen(),
    ),
    GoRoute(
      path: '/puncher-report-screen',
      builder: (context, state) => const ReportsScreen(),
    ),
    GoRoute(
      path:
          '/car-number/:referenceNumber/:type/:vehicle_plate_numbers/:plate_letters',
      name: 'carNumber',
      builder: (context, state) {
        final referenceNumber = state.pathParameters['referenceNumber']!;
        final type = state.pathParameters['type']!;
        final vehiclePlateNumbers =
            state.pathParameters['vehicle_plate_numbers']!;
        final plateLetters = state.pathParameters['plate_letters']!;
        return CarNumberScreen(
          referenceNumber: referenceNumber,
          type: type,
          vehiclePlateNumbers: vehiclePlateNumbers,
          plateLetters: plateLetters,
        );
      },
    ),
    GoRoute(
      path: '/otp-screen/:referenceNumber/:type',
      name: 'otp-screen',
      builder: (context, state) => OtpBottomSheetScreen(
        referenceNumber: state.pathParameters['referenceNumber']!,
        editedImage: (state.extra as Map<String, dynamic>? ??
            {})['editedImagePath'] as String?,
        type: state.pathParameters['type']!,
      ),
    ),
    GoRoute(
      path: '/fail_order',
      name: 'fail-order',
      builder: (context, state) => const ErrorScreen(),
    ),
    GoRoute(
      path: '/success_order',
      name: 'success-order',
      builder: (context, state) => const SucessOrderScreen(),
    ),
  ],
);
