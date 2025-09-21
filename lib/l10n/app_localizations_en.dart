// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcome_to_caltex => 'Welcome to\nFuturehub';

  @override
  String get welcome => 'Welcome';

  @override
  String get hi => 'Hi !,';

  @override
  String get hello => 'Hello';

  @override
  String get caltex => 'Futurehub';

  @override
  String get greet_user => 'we are happy to have you';

  @override
  String get phone_number => 'Phone Number';

  @override
  String get join_now => 'Submit';

  @override
  String get login => 'Login';

  @override
  String get enter_the_code_sent_to_the_phone_number => 'Enter the code sent to your phone';

  @override
  String get activate => 'Activate';

  @override
  String get resend_the_code => 'Resend the code';

  @override
  String get try_again_after => 'Send again after ';

  @override
  String get terms_and_conditions => 'Terms and Conditions';

  @override
  String get about_the_app => 'About Futurehub';

  @override
  String get frequently_asked_questions => 'Frequently Asked Questions';

  @override
  String get home => 'Home';

  @override
  String get orders => 'Orders';

  @override
  String get my_orders => 'My Orders';

  @override
  String get my_profile => 'My Profile';

  @override
  String get account_data => 'Account Data';

  @override
  String get recieve_a_new_order => 'Recieve a New Order';

  @override
  String get previous_orders => 'Previous Orders';

  @override
  String get operation_number => 'Operation Number:';

  @override
  String get number_of_products => 'Number of Products:';

  @override
  String get client => 'Client:';

  @override
  String get order_total => 'Order Total:';

  @override
  String get products => 'Products';

  @override
  String get other_products => 'Other Products';

  @override
  String get sar => 'SAR';

  @override
  String get notifications => 'Notifications';

  @override
  String get wallet => 'current Balance';

  @override
  String get balance => 'Balance';

  @override
  String get my_transactions => 'My Transactions';

  @override
  String get withdrawal => 'Withdrawal';

  @override
  String get deposit => 'Deposit';

  @override
  String get transfer => 'Transfer';

  @override
  String get scan_the_order_code => 'Scan the Order Code';

  @override
  String get direct_the_camera_to_the_clients_phone_to_read_the_order_code =>
      'Direct the camera to the clients phone to read the order code';

  @override
  String get switch_the_language => 'Switch the Language';

  @override
  String get delete_the_account => 'Delete the Account';

  @override
  String get sign_out => 'Sign out';

  @override
  String get switch_the_apps_language => 'Switch the App\'s Language';

  @override
  String get back => 'Back';

  @override
  String get do_you_want_to_sign_out => 'Do you want to sign out?';

  @override
  String get no_stay_connected => 'No, Stay Connected';

  @override
  String get company_data => 'Company Data';

  @override
  String get company_files => 'Company Files';

  @override
  String get company_name_in_arabic => 'Company Name in Arabic';

  @override
  String get company_name_in_english => 'Company Name in English';

  @override
  String get company_owner_name => 'Company Owner Name';

  @override
  String get id_number => 'ID Number';

  @override
  String get general_manager => 'General Manager';

  @override
  String get save_changes => 'Save Changes';

  @override
  String get username => 'Username';

  @override
  String get email => 'Email';

  @override
  String get commercial_record => 'Commercial Record';

  @override
  String get chamber_of_commerce_book => 'Chamber of Commerce Book';

  @override
  String get upload_the_file => 'Upload the File';

  @override
  String get order_details => 'Order Details';

  @override
  String get client_name => 'Client Name';

  @override
  String get company_name => 'Company Name';

  @override
  String get order_has_been_done => 'Order Has Been Done';

  @override
  String get choose_orders_done_state => 'Choose Orders Done State';

  @override
  String get client_recieved_the_products => 'Client Recieved the Products';

  @override
  String get products_arent_available => 'Products aren\'t Available';

  @override
  String get didnt_agree_upon_the_cost => 'Didn\'t Agree Upon the Cost';

  @override
  String get done => 'Done';

  @override
  String get employees => 'Employees';

  @override
  String count_employees(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count employees',
      one: '1 employee',
      zero: 'No employees',
    );
    return '$_temp0';
  }

  @override
  String count_orders(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count orders',
      one: '1 order',
      zero: 'No orders',
    );
    return '$_temp0';
  }

  @override
  String get add_an_employee => 'Add an Employee';

  @override
  String get add_a_group => 'Add a Group';

  @override
  String get date_added => 'Date Added';

  @override
  String get start => 'Start';

  @override
  String get my_products => 'My Products';

  @override
  String get welcome_again => 'Welcome Back!';

  @override
  String get enter_the_password => 'Enter Your Password';

  @override
  String get password_goes_here => 'Password goes here';

  @override
  String get forgot_password => 'Forgot password ?';

  @override
  String get enter_opt => 'Enter OTP ';

  @override
  String get log_in => 'Log in';

  @override
  String get new_order => 'New Order';

  @override
  String get edit => 'Edit';

  @override
  String get stop => 'Stop';

  @override
  String get delete => 'Delete';

  @override
  String get add => 'Add';

  @override
  String get show_all => 'Show All';

  @override
  String get operations => 'Operations';

  @override
  String get transaction_details => 'Transaction Details';

  @override
  String get transaction_type => 'Transaction Type';

  @override
  String get reciever => 'Reciever';

  @override
  String get transaction_amount => 'Transaction Amount';

  @override
  String get remaining_balance => 'Remaining Balance';

  @override
  String get employee_name => 'Employee Name';

  @override
  String get enter_employee_name_here => 'Enter Employee Name Here';

  @override
  String get enter_phone_number_here => 'Enter Phone Number Here';

  @override
  String get enter_email_here => 'Enter Email Here';

  @override
  String get enter_id_number_here => 'Enter ID Number Here';

  @override
  String get data_filling_file => 'Data Filling File';

  @override
  String get upload_data_filling_file => 'Upload Data Filling File';

  @override
  String get download_file => 'Download File';

  @override
  String get add_file => 'Add File';

  @override
  String get uploaded_files => 'Uploaded Files';

  @override
  String get limit => 'Limit';

  @override
  String get name => 'Name';

  @override
  String get enter_the_limit_here => 'Enter the Limit Here';

  @override
  String get sign_up => 'Sign Up';

  @override
  String get password => 'Password';

  @override
  String get confirm_password => 'Confirm Password';

  @override
  String get enter_the_password_again => 'Enter the Password Again';

  @override
  String count_products(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count products',
      one: '1 product',
      zero: 'No products',
    );
    return '$_temp0';
  }

  @override
  String get original_price => 'Original Price';

  @override
  String get public_price => 'Public Price';

  @override
  String get change_public_price => 'Change Employee price';

  @override
  String get product_details => 'Product Details';

  @override
  String get change => 'Change';

  @override
  String get coupons => 'Coupons';

  @override
  String count_coupons(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count coupons',
      one: '1 coupon',
      zero: 'No coupons',
    );
    return '$_temp0';
  }

  @override
  String get start_date => 'Start Date';

  @override
  String get end_date => 'End Date';

  @override
  String get discount => 'Discount';

  @override
  String get password_recovery => 'Password Recovery';

  @override
  String get send_recovery_code => 'Send Recovery Code';

  @override
  String get change_your_password => 'Change Your Password';

  @override
  String get new_password => 'New Password';

  @override
  String get enter_new_password_here => 'Enter New Password Here';

  @override
  String get confirm_new_password => 'Confirm  New Password';

  @override
  String get enter_new_password_again => 'Enter New Password Again';

  @override
  String get change_password => 'Change Password';

  @override
  String get create_new_order => 'New Order';

  @override
  String get choose_by_name => 'Choose By Name';

  @override
  String get choose_from_map => 'Choose From Map';

  @override
  String get choose_product => 'Choose Product';

  @override
  String get next => 'Next';

  @override
  String get best_oil_for_your_car => 'Best Oil For You ?';

  @override
  String get choose_vehicle_type => 'Choose Vehicle Type';

  @override
  String get choose_car_make => 'Choose Vehicle Make';

  @override
  String get choose_car_model => 'Choose Vehicle Model';

  @override
  String get choose_manufacture_year => 'Choose Manufacture year';

  @override
  String get search => 'Search';

  @override
  String get tax => 'Tax';

  @override
  String get total => 'Total';

  @override
  String get puncher_direction => 'Directions';

  @override
  String get not_now => 'Not now';

  @override
  String get something_went_wrong => 'Something went wrong!';

  @override
  String get employee_stopped_successfully => 'Employee stopped successfully';

  @override
  String get employee_activated_successfully => 'Employee activated successfully';

  @override
  String get employee_deleted_successfully => 'Employee deleted successfully';

  @override
  String get profile_updated_successfully => 'Profile updated successfully';

  @override
  String get do_you_want_to_delete_your_account => 'Do you want to delete your account?';

  @override
  String get product_updated_successfully => 'Product price updated successfully';

  @override
  String get this_field_is_required => 'This field is required';

  @override
  String get phone_number_must_contain_only_digits => 'Phone number must contain only digits';

  @override
  String get phone_number_must_start_with_05 => 'Phone number must start with 05';

  @override
  String get otp_must_contain_only_digits => 'OTP must contain only digits';

  @override
  String otp_must_be_of_length(Object length) {
    return 'OTP must be of length $length';
  }

  @override
  String get password_must_have_8_characters_or_more => 'Password must have 8 characters or more';

  @override
  String get password_confirmation_doesnt_match_password =>
      'Password confirmation doesn\'t match password';

  @override
  String get name_must_contain_only_letters => 'Name must contain only letters';

  @override
  String get please_enter_a_valid_email => 'Please enter a valid email';

  @override
  String get id_number_must_contain_only_digits => 'ID number must contain only digits';

  @override
  String get limit_must_be_a_valid_number => 'Limit must be a valid number';

  @override
  String get price => 'Price';

  @override
  String get enter_phone_number_05XXXXXXXX => 'Enter phone number (05XXXXXXXX)';

  @override
  String get phone_number_must_be_10_digits => 'Phone number must be 10 digits';

  @override
  String get id_number_must_be_10_digits => 'ID number must be 10 digits';

  @override
  String get my_points => 'My Points';

  @override
  String get my_points_balance => 'My points balance';

  @override
  String get point => 'Point';

  @override
  String get points => 'Points';

  @override
  String get language => 'Language';

  @override
  String get settings => 'Settings';

  @override
  String get redeem_points => 'Redeem points';

  @override
  String get enter_number_of_points => 'Enter the number of points';

  @override
  String get minimum_number_points_redeemed_is_25_points =>
      'The minimum number of points redeemed is 25 SAR';

  @override
  String get redeem => 'Redeem';

  @override
  String get number_of_points => 'Number of Points';

  @override
  String get points_partners => 'Points Partners';

  @override
  String get record_of_substitutions => 'Points History';

  @override
  String get do_you_want_to_activate => 'Do you want to activate?';

  @override
  String get old_password => 'Old password';

  @override
  String get enter_old_password_here => 'Enter Your Old Password Here';

  @override
  String get privacy_policy => 'Privacy Policy';

  @override
  String get the_qr_code_is_broken_please_try_again => 'The QR code is broken. Please try again';

  @override
  String get do_you_want_to_delete_this_employee => 'Do you want to delete this employee?';

  @override
  String get edit_employee => 'Edit Employee';

  @override
  String get employee_updated_successfully => 'Employee updated Successfully!';

  @override
  String get all => 'All';

  @override
  String get the_amount => 'The amount';

  @override
  String get enter_the_amount => 'Enter the amount';

  @override
  String get add_to_wallet => 'Add to balance';

  @override
  String get add_the_amount => 'Add the amount';

  @override
  String get title => 'Title';

  @override
  String get enter_the_title => 'Enter the title';

  @override
  String get confirm_payment => 'Confirm payment';

  @override
  String get no_image => 'No Image';

  @override
  String get please_choose_media_to_select => 'Please choose media to select';

  @override
  String get from_gallery => 'From Gallery';

  @override
  String get from_camera => 'From Camera';

  @override
  String get transfer_image => 'Transfer image';

  @override
  String get enter_the_code_sent_to_employee_number => 'Enter the code sent to the employee number';

  @override
  String get confirm_order => 'Confirm order';

  @override
  String get unknown => 'Unknown';

  @override
  String get amount_added_successfully => 'Amount added successfully';

  @override
  String get deposit_method => 'Deposit method';

  @override
  String get bank_transfer => 'Bank transfer';

  @override
  String get there_are_no_transactions => 'There are no transactions';

  @override
  String get there_are_no_orders => 'You have no previous orders';

  @override
  String get copy_qr_code => 'Copy QR Code';

  @override
  String get scan_the_point_code => 'Scan the Points Code';

  @override
  String get direct_the_camera_to_the_products_code_to_read_it =>
      'Direct the camera to the product\'s code to read it';

  @override
  String count_points(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count points',
      one: '1 point',
      zero: '0.00 point',
    );
    return '$_temp0';
  }

  @override
  String get you_have => 'You have';

  @override
  String get about_your_points => 'Transfer points';

  @override
  String get redeem_points_hint => '*Note: Every 1 point equals 1 riyal';

  @override
  String get number_of_points_to_rerdeem => 'The number of points to be redeemed';

  @override
  String get back_to_points => 'Back to Points';

  @override
  String get profile_photo_updated_successfully => 'Profile photo updated successfully';

  @override
  String get mada => 'Mada';

  @override
  String get credit_card => 'Card';

  @override
  String get apple_pay => 'Apple Pay';

  @override
  String get proceed_to_payment => 'Proceed Payment';

  @override
  String get points_redeemed_successfully => 'Points redeemed successfully';

  @override
  String get reference_number => 'Reference number';

  @override
  String get expiration_date => 'Expiration date';

  @override
  String get your_points => 'Your Points';

  @override
  String get value => 'Value';

  @override
  String get coupon_code => 'Coupon code';

  @override
  String get click_this_button_when_order_is_completed =>
      'Click on the button below once order is completed';

  @override
  String get couldnt_find_the_data_filling_file_try_again_later =>
      'Couldn\'t find the data filling file. Try again later';

  @override
  String get there_are_no_substitutions => 'There are no transactions';

  @override
  String get enter_coupon_code => 'Enter Coupon code';

  @override
  String get add_couppn_first => 'Add coupon code first';

  @override
  String get coolants => 'Coolants';

  @override
  String get differentialFront => 'Differential Front';

  @override
  String get engine => 'Engine';

  @override
  String get powerSteering => 'Power Steering';

  @override
  String get transferBox => 'Transfer Box';

  @override
  String get automaticTransmission => 'Automatic Transmission';

  @override
  String get manualTransmission => 'Manual Transmission';

  @override
  String get differential => 'Differential';

  @override
  String get show => 'Show';

  @override
  String get your_balance => 'Your wallet balance';

  @override
  String get hide => 'Hide';

  @override
  String get choose_best_oil => 'Determine the best oil for your car';

  @override
  String get add_quick_order_hint => 'Place a quick order from here';

  @override
  String get current => 'Current';

  @override
  String get finished => 'Finished';

  @override
  String get user_code => 'User code';

  @override
  String get scan_qr_announcement => '*info: if the QR can not be used use the user code';

  @override
  String get start_scanning => 'Start scanning';

  @override
  String get barcode => 'QR code';

  @override
  String get enter_user_code => 'Enter user code';

  @override
  String get enter_user_code_hint => 'Ask the user for his code';

  @override
  String get basic_information => 'Basic information';

  @override
  String get save => 'Save';

  @override
  String get arabic => 'Arabic';

  @override
  String get english => 'English';

  @override
  String get urdu => 'Urdo';

  @override
  String get support => 'Support';

  @override
  String get finish_the_order => 'Finish the order';

  @override
  String get the_place_here_is_empty => 'The Place Here Is Empty!';

  @override
  String get you_can_find_your_orders_here => 'You can find your Orders here';

  @override
  String get you_can_find_your_notifications_here => 'You can find your Notifications here';

  @override
  String get know_more => 'Know more';

  @override
  String get map => 'Map';

  @override
  String get all_stores => 'All stores';

  @override
  String get near_stores => 'Nearby stores';

  @override
  String get skip => 'Skip';

  @override
  String get you_can_no_contact => 'You can now contact us through';

  @override
  String get social_media => 'Social media';

  @override
  String get we_are_happy_to_contact_you =>
      'We are happy to communicate with you and respond to all your messages\nS\nEvery day, 24 hours a day';

  @override
  String get app_language => 'App Language';

  @override
  String get choose_app_language => 'Please select the application language';

  @override
  String get all_stores2 => 'All stores';

  @override
  String get addToCart => 'Add to Cart';

  @override
  String get activeOrdersNow => 'activeOrdersNow';

  @override
  String get accountReview => 'accountReview';

  @override
  String get lastOrders => 'lastOrders';

  @override
  String get services => 'services';

  @override
  String get teamProgress => 'teamProgress';

  @override
  String get soon => 'soon';

  @override
  String get main => 'back to home screen';

  @override
  String get rechargeWallet => 'rechargeBalance';

  @override
  String get requiedAmount => 'requiedAmount';

  @override
  String get carNumber => 'carNumber';

  @override
  String get carNumberRequest => 'please enter car Number';

  @override
  String get meterNumber => 'meterNumber';

  @override
  String get meterNumberRequest => 'please enter meter Number';

  @override
  String get carNumberRequestImage => 'carNumberRequestImage';

  @override
  String get meterNumberRequestImage => 'meterNumberRequestImage';

  @override
  String get noPartners => 'no Partners';

  @override
  String get futureHubWallet => 'futureHubWallet';

  @override
  String get e_Payment =>
      'You can browse the nearest branch to you or your drivers with ease through a digital map that provides you with all the options.';

  @override
  String get security => 'Ease and security';

  @override
  String get securityDetails =>
      'The first application in the Kingdom of Saudi Arabia to sell Futurehub oils safely and easily';

  @override
  String get product => 'Many products';

  @override
  String get productDetails => 'Many featured products with exclusive discounts';

  @override
  String get distanceBetween => ' distance between your location and petrol station ';

  @override
  String get choiceBranch => 'choiceBranch';

  @override
  String get choiceVichele => 'choiceVichele';

  @override
  String get vicheleNumber => ' vicheleNumber';

  @override
  String get paymentBy => 'paymentBy';

  @override
  String get bankTransfer => 'bankTransfer';

  @override
  String get ePayment => 'ePayment';

  @override
  String get confirmRecharge => 'confirmRecharge';

  @override
  String get liter => 'liter';

  @override
  String get literPrice => 'literPrice';

  @override
  String get vicheleId => 'vichele Number';

  @override
  String get walletAmount => 'walletAmount';

  @override
  String get literCount => 'liter count';

  @override
  String get fuelType => 'fuel Type';

  @override
  String get date => 'date';

  @override
  String get paymentType => 'payment Type';

  @override
  String get employeeBalance => 'employee Balance';

  @override
  String get successOpeartion => 'success Opeartion';

  @override
  String get failedOpeartion => 'failed Opeartion';

  @override
  String get orderConfirmed => 'Order confirmed successfully!';

  @override
  String get orderFailed => 'Failed to confirm order. Please try again.';

  @override
  String get dirctions => 'dirctions';

  @override
  String get vicheleInfo => 'Vehicle Details';

  @override
  String get driverList => 'driver List';

  @override
  String get securityData => 'Secure transactions that support all electronic payment methods';

  @override
  String get orderData => 'all of your pervious order you will found it in pervious order list';

  @override
  String get serviceYou => 'What can we do for you today?';

  @override
  String get fuelTime => 'Time to fill up?';

  @override
  String get fuelTimeDes => 'Determine what fuel is suitable for your car';

  @override
  String get nearbyStations => 'nearest stations';

  @override
  String get manager => 'Come on, manager';

  @override
  String get fuel => 'fuel';

  @override
  String get fuel_Balance => 'fuel balance';

  @override
  String get vehicle_Change => 'vehicle change';

  @override
  String get details => 'details';

  @override
  String get show_content => 'show content';

  @override
  String get services_provider => 'service provider';

  @override
  String get services_details => 'services details';

  @override
  String get payment_details => 'payment details';

  @override
  String get services_balance => 'services balance';

  @override
  String get update_app => 'update App ';

  @override
  String get update_require => 'Please update the app to the latest version. ';

  @override
  String get update => 'update';

  @override
  String get reports => 'reports';

  @override
  String get select_day => 'select day';

  @override
  String get order_count => 'order count';

  @override
  String get quantity_count => 'quantity count';

  @override
  String get total_price => 'total price';

  @override
  String get today => 'today';

  @override
  String get show_order => 'show order';

  @override
  String get otp => 'otp';

  @override
  String get branches => 'branches';

  @override
  String get branches_near => 'branches near for you';

  @override
  String get futureHub =>
      'Future  team is working hard to add services to you as soon as possible 👋';

  @override
  String get addToCartSuccess => 'Add to Cart Success';

  @override
  String get locationRequired => 'locationRequired';

  @override
  String get pleaseEnableLocationServicesForThisApp => 'pleaseEnableLocationServicesForThisApp';

  @override
  String get enable => 'enable';

  @override
  String get cancel => 'cancel';

  @override
  String get plateMatched => 'Plate Matched';

  @override
  String get plateNotMatched => 'Plate Not Matched';

  @override
  String get confirm => 'confirm';

  @override
  String get reTakeImage => 'reTake Image';

  @override
  String get confirmImage => 'Confirm Image';
}
