//
class ApiConstants {
  static const String baseUrl = 'https://pro.future-food.sa/api';
  static const String baseLiveURL = 'https://futurehub.sa/api';
  static const String baseTestURL = 'https://future-food.sa/api';
  static const String login = '/login';
  static const String register = '/register';
  static const String logout = '/logout';
  static const String validateMobile = '/validate-mobile';
  static const String setPassword = '/set-password-first-login';
  static const String verifyOtp = '/verify-otp';
  static const String forgetPassword = '/forget-password';
  static const String resetPassword = '/reset-password';
  static const String updateProfile = '/users/update-profile';
  static const String changeLang = '/users/change-language';
  static const String deleteAccount = '/users/delete-account';
  static const String updateProfilePhoto = '/users/update-profile-photo';
  static const String cities = '/cities';
  static const String termsConditions = '/terms-conditions';
  static const String privacy = '/privacy';
  static const String aboutCompany = '/about-company';
  static const String support = '/support';
  static const String questions = '/questions';
  static const String notifaction = '/users/list-notifications';
  static const String updateFcmToken = '/users/update-fcm-token';
  static const String sendOtp = '/send-otp';
  static const String userInfo = '/users/user-info';
  static const String serviceProvidersFuelOrderList =
      '/service-providers/fuel-orders';
  static const String serviceProvidersServicesOrderList =
      '/service-providers/services-orders';
  // static const String receiveOrder = '/service-provider/orders/receive-order';
  static const String receiveQrData = '/service-providers/scan-qrcode';
  static const String cancelOrder = '/service-provider/orders/cancel-order';
  static const String sendFuelOrderOtp =
      '/service-providers/fuel-orders/sent-otp-complete-order';
  static const String sendServicesOrderOtp =
      '/service-providers/services-orders/sent-otp-complete-order';
  static const String confirmFuelOrder =
      '/service-providers/fuel-orders/complete-order';
  static const String confirmServicesOrder =
      '/service-providers/services-orders/complete-order';
  static const String brandsCar = '/list-brands';
  static const String modelCar = '/list-models';
  static const String yearCar = '/list-years';
  static const String bestOil = '/list-best-oil-products';
  static const String employeeFuelOrder = '/driver/fuel-orders';
  static const String employeeServicesOrder = '/driver/services-orders';
  static const String serviceProvidersFuelBranches =
      '/service-providers/list-branches-with-fuel';
  static const String serviceProvidersServicesBranches =
      '/service-providers/list-branches-with-services';
  static const String companyOrder = '/company/orders';
  static const String companyDriver = '/drivers';
  static const String stopDriver = '/drivers/stop/';
  static const String resumeDriver = '/drivers/resume/';
  static const String deleteDriver = '/drivers/';
  static const String editDriver = '/drivers/';
  static const String addDriver = '/drivers';
  static const String addDriverWallet = '/drivers/add-to-wallet/';
  static const String vehicles = '/company/vehicles';
  static const String branches = '/company/branches';
  static const String uploadTemplete = '/company/drivers/upload';
  static const String downloadTemplete = '/download/drivers-template';
  static const String bankTransfer = '/company/wallet/add-amount';
  static const String createOrder = '/create-orders';
  static const String createServiceProviderOrder =
      '/service-providers/fuel-orders/create-order';
  static const String finishOrder = '/driver/orders/finish-order';
  static const String silder = '/sliders';
  static const String servicesCategory = '/services-categories';
  static const String createFuelOrder = '/driver/create-fuel-orders';
  static const String createServicesOrder = '/driver/create-service-order';
  static const String finishFuelOrder = '/driver/fuel-orders/finish-order';
  static const String servicesSubcategories = '/services-subcategories';
  static const String getAppVersion = '/app-version';
  static const String reportFuelProvider =
      '/service-providers/employee/day-report/fuel-orders';
  static const String reportServicesProvider =
      '/service-providers/employee/day-report/service-orders';

  // static String currentVersion = '1.1';
}
