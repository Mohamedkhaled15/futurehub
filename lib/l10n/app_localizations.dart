import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_ur.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en'),
    Locale('ur')
  ];

  /// No description provided for @welcome_to_caltex.
  ///
  /// In en, this message translates to:
  /// **'Welcome to\nFuturehub'**
  String get welcome_to_caltex;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @hi.
  ///
  /// In en, this message translates to:
  /// **'Hi !,'**
  String get hi;

  /// No description provided for @hello.
  ///
  /// In en, this message translates to:
  /// **'Hello'**
  String get hello;

  /// No description provided for @caltex.
  ///
  /// In en, this message translates to:
  /// **'Futurehub'**
  String get caltex;

  /// No description provided for @greet_user.
  ///
  /// In en, this message translates to:
  /// **'we are happy to have you'**
  String get greet_user;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// No description provided for @join_now.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get join_now;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @enter_the_code_sent_to_the_phone_number.
  ///
  /// In en, this message translates to:
  /// **'Enter the code sent to your phone'**
  String get enter_the_code_sent_to_the_phone_number;

  /// No description provided for @activate.
  ///
  /// In en, this message translates to:
  /// **'Activate'**
  String get activate;

  /// No description provided for @resend_the_code.
  ///
  /// In en, this message translates to:
  /// **'Resend the code'**
  String get resend_the_code;

  /// No description provided for @try_again_after.
  ///
  /// In en, this message translates to:
  /// **'Send again after '**
  String get try_again_after;

  /// No description provided for @terms_and_conditions.
  ///
  /// In en, this message translates to:
  /// **'Terms and Conditions'**
  String get terms_and_conditions;

  /// No description provided for @about_the_app.
  ///
  /// In en, this message translates to:
  /// **'About Futurehub'**
  String get about_the_app;

  /// No description provided for @frequently_asked_questions.
  ///
  /// In en, this message translates to:
  /// **'Frequently Asked Questions'**
  String get frequently_asked_questions;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @orders.
  ///
  /// In en, this message translates to:
  /// **'Orders'**
  String get orders;

  /// No description provided for @my_orders.
  ///
  /// In en, this message translates to:
  /// **'My Orders'**
  String get my_orders;

  /// No description provided for @my_profile.
  ///
  /// In en, this message translates to:
  /// **'My Profile'**
  String get my_profile;

  /// No description provided for @account_data.
  ///
  /// In en, this message translates to:
  /// **'Account Data'**
  String get account_data;

  /// No description provided for @recieve_a_new_order.
  ///
  /// In en, this message translates to:
  /// **'Recieve a New Order'**
  String get recieve_a_new_order;

  /// No description provided for @previous_orders.
  ///
  /// In en, this message translates to:
  /// **'Previous Orders'**
  String get previous_orders;

  /// No description provided for @operation_number.
  ///
  /// In en, this message translates to:
  /// **'Operation Number:'**
  String get operation_number;

  /// No description provided for @number_of_products.
  ///
  /// In en, this message translates to:
  /// **'Number of Products:'**
  String get number_of_products;

  /// No description provided for @client.
  ///
  /// In en, this message translates to:
  /// **'Client:'**
  String get client;

  /// No description provided for @order_total.
  ///
  /// In en, this message translates to:
  /// **'Order Total:'**
  String get order_total;

  /// No description provided for @products.
  ///
  /// In en, this message translates to:
  /// **'Products'**
  String get products;

  /// No description provided for @other_products.
  ///
  /// In en, this message translates to:
  /// **'Other Products'**
  String get other_products;

  /// No description provided for @sar.
  ///
  /// In en, this message translates to:
  /// **'SAR'**
  String get sar;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @wallet.
  ///
  /// In en, this message translates to:
  /// **'current Balance'**
  String get wallet;

  /// No description provided for @balance.
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get balance;

  /// No description provided for @my_transactions.
  ///
  /// In en, this message translates to:
  /// **'My Transactions'**
  String get my_transactions;

  /// No description provided for @withdrawal.
  ///
  /// In en, this message translates to:
  /// **'Withdrawal'**
  String get withdrawal;

  /// No description provided for @deposit.
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get deposit;

  /// No description provided for @transfer.
  ///
  /// In en, this message translates to:
  /// **'Transfer'**
  String get transfer;

  /// No description provided for @scan_the_order_code.
  ///
  /// In en, this message translates to:
  /// **'Scan the Order Code'**
  String get scan_the_order_code;

  /// No description provided for @direct_the_camera_to_the_clients_phone_to_read_the_order_code.
  ///
  /// In en, this message translates to:
  /// **'Direct the camera to the clients phone to read the order code'**
  String get direct_the_camera_to_the_clients_phone_to_read_the_order_code;

  /// No description provided for @switch_the_language.
  ///
  /// In en, this message translates to:
  /// **'Switch the Language'**
  String get switch_the_language;

  /// No description provided for @delete_the_account.
  ///
  /// In en, this message translates to:
  /// **'Delete the Account'**
  String get delete_the_account;

  /// No description provided for @sign_out.
  ///
  /// In en, this message translates to:
  /// **'Sign out'**
  String get sign_out;

  /// No description provided for @switch_the_apps_language.
  ///
  /// In en, this message translates to:
  /// **'Switch the App\'s Language'**
  String get switch_the_apps_language;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @do_you_want_to_sign_out.
  ///
  /// In en, this message translates to:
  /// **'Do you want to sign out?'**
  String get do_you_want_to_sign_out;

  /// No description provided for @no_stay_connected.
  ///
  /// In en, this message translates to:
  /// **'No, Stay Connected'**
  String get no_stay_connected;

  /// No description provided for @company_data.
  ///
  /// In en, this message translates to:
  /// **'Company Data'**
  String get company_data;

  /// No description provided for @company_files.
  ///
  /// In en, this message translates to:
  /// **'Company Files'**
  String get company_files;

  /// No description provided for @company_name_in_arabic.
  ///
  /// In en, this message translates to:
  /// **'Company Name in Arabic'**
  String get company_name_in_arabic;

  /// No description provided for @company_name_in_english.
  ///
  /// In en, this message translates to:
  /// **'Company Name in English'**
  String get company_name_in_english;

  /// No description provided for @company_owner_name.
  ///
  /// In en, this message translates to:
  /// **'Company Owner Name'**
  String get company_owner_name;

  /// No description provided for @id_number.
  ///
  /// In en, this message translates to:
  /// **'ID Number'**
  String get id_number;

  /// No description provided for @general_manager.
  ///
  /// In en, this message translates to:
  /// **'General Manager'**
  String get general_manager;

  /// No description provided for @save_changes.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get save_changes;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @commercial_record.
  ///
  /// In en, this message translates to:
  /// **'Commercial Record'**
  String get commercial_record;

  /// No description provided for @chamber_of_commerce_book.
  ///
  /// In en, this message translates to:
  /// **'Chamber of Commerce Book'**
  String get chamber_of_commerce_book;

  /// No description provided for @upload_the_file.
  ///
  /// In en, this message translates to:
  /// **'Upload the File'**
  String get upload_the_file;

  /// No description provided for @order_details.
  ///
  /// In en, this message translates to:
  /// **'Order Details'**
  String get order_details;

  /// No description provided for @client_name.
  ///
  /// In en, this message translates to:
  /// **'Client Name'**
  String get client_name;

  /// No description provided for @company_name.
  ///
  /// In en, this message translates to:
  /// **'Company Name'**
  String get company_name;

  /// No description provided for @order_has_been_done.
  ///
  /// In en, this message translates to:
  /// **'Order Has Been Done'**
  String get order_has_been_done;

  /// No description provided for @choose_orders_done_state.
  ///
  /// In en, this message translates to:
  /// **'Choose Orders Done State'**
  String get choose_orders_done_state;

  /// No description provided for @client_recieved_the_products.
  ///
  /// In en, this message translates to:
  /// **'Client Recieved the Products'**
  String get client_recieved_the_products;

  /// No description provided for @products_arent_available.
  ///
  /// In en, this message translates to:
  /// **'Products aren\'t Available'**
  String get products_arent_available;

  /// No description provided for @didnt_agree_upon_the_cost.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t Agree Upon the Cost'**
  String get didnt_agree_upon_the_cost;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @employees.
  ///
  /// In en, this message translates to:
  /// **'Employees'**
  String get employees;

  /// No description provided for @count_employees.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero{No employees} one{1 employee} other{{count} employees}}'**
  String count_employees(num count);

  /// No description provided for @count_orders.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero{No orders} one{1 order} other{{count} orders}}'**
  String count_orders(num count);

  /// No description provided for @add_an_employee.
  ///
  /// In en, this message translates to:
  /// **'Add an Employee'**
  String get add_an_employee;

  /// No description provided for @add_a_group.
  ///
  /// In en, this message translates to:
  /// **'Add a Group'**
  String get add_a_group;

  /// No description provided for @date_added.
  ///
  /// In en, this message translates to:
  /// **'Date Added'**
  String get date_added;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @my_products.
  ///
  /// In en, this message translates to:
  /// **'My Products'**
  String get my_products;

  /// No description provided for @welcome_again.
  ///
  /// In en, this message translates to:
  /// **'Welcome Back!'**
  String get welcome_again;

  /// No description provided for @enter_the_password.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Password'**
  String get enter_the_password;

  /// No description provided for @password_goes_here.
  ///
  /// In en, this message translates to:
  /// **'Password goes here'**
  String get password_goes_here;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot password ?'**
  String get forgot_password;

  /// No description provided for @enter_opt.
  ///
  /// In en, this message translates to:
  /// **'Enter OTP '**
  String get enter_opt;

  /// No description provided for @log_in.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get log_in;

  /// No description provided for @new_order.
  ///
  /// In en, this message translates to:
  /// **'New Order'**
  String get new_order;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @stop.
  ///
  /// In en, this message translates to:
  /// **'Stop'**
  String get stop;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @show_all.
  ///
  /// In en, this message translates to:
  /// **'Show All'**
  String get show_all;

  /// No description provided for @operations.
  ///
  /// In en, this message translates to:
  /// **'Operations'**
  String get operations;

  /// No description provided for @transaction_details.
  ///
  /// In en, this message translates to:
  /// **'Transaction Details'**
  String get transaction_details;

  /// No description provided for @transaction_type.
  ///
  /// In en, this message translates to:
  /// **'Transaction Type'**
  String get transaction_type;

  /// No description provided for @reciever.
  ///
  /// In en, this message translates to:
  /// **'Reciever'**
  String get reciever;

  /// No description provided for @transaction_amount.
  ///
  /// In en, this message translates to:
  /// **'Transaction Amount'**
  String get transaction_amount;

  /// No description provided for @remaining_balance.
  ///
  /// In en, this message translates to:
  /// **'Remaining Balance'**
  String get remaining_balance;

  /// No description provided for @employee_name.
  ///
  /// In en, this message translates to:
  /// **'Employee Name'**
  String get employee_name;

  /// No description provided for @enter_employee_name_here.
  ///
  /// In en, this message translates to:
  /// **'Enter Employee Name Here'**
  String get enter_employee_name_here;

  /// No description provided for @enter_phone_number_here.
  ///
  /// In en, this message translates to:
  /// **'Enter Phone Number Here'**
  String get enter_phone_number_here;

  /// No description provided for @enter_email_here.
  ///
  /// In en, this message translates to:
  /// **'Enter Email Here'**
  String get enter_email_here;

  /// No description provided for @enter_id_number_here.
  ///
  /// In en, this message translates to:
  /// **'Enter ID Number Here'**
  String get enter_id_number_here;

  /// No description provided for @data_filling_file.
  ///
  /// In en, this message translates to:
  /// **'Data Filling File'**
  String get data_filling_file;

  /// No description provided for @upload_data_filling_file.
  ///
  /// In en, this message translates to:
  /// **'Upload Data Filling File'**
  String get upload_data_filling_file;

  /// No description provided for @download_file.
  ///
  /// In en, this message translates to:
  /// **'Download File'**
  String get download_file;

  /// No description provided for @add_file.
  ///
  /// In en, this message translates to:
  /// **'Add File'**
  String get add_file;

  /// No description provided for @uploaded_files.
  ///
  /// In en, this message translates to:
  /// **'Uploaded Files'**
  String get uploaded_files;

  /// No description provided for @limit.
  ///
  /// In en, this message translates to:
  /// **'Limit'**
  String get limit;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @enter_the_limit_here.
  ///
  /// In en, this message translates to:
  /// **'Enter the Limit Here'**
  String get enter_the_limit_here;

  /// No description provided for @sign_up.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get sign_up;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirm_password;

  /// No description provided for @enter_the_password_again.
  ///
  /// In en, this message translates to:
  /// **'Enter the Password Again'**
  String get enter_the_password_again;

  /// No description provided for @count_products.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero{No products} one{1 product} other{{count} products}}'**
  String count_products(num count);

  /// No description provided for @original_price.
  ///
  /// In en, this message translates to:
  /// **'Original Price'**
  String get original_price;

  /// No description provided for @public_price.
  ///
  /// In en, this message translates to:
  /// **'Public Price'**
  String get public_price;

  /// No description provided for @change_public_price.
  ///
  /// In en, this message translates to:
  /// **'Change Employee price'**
  String get change_public_price;

  /// No description provided for @product_details.
  ///
  /// In en, this message translates to:
  /// **'Product Details'**
  String get product_details;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @coupons.
  ///
  /// In en, this message translates to:
  /// **'Coupons'**
  String get coupons;

  /// No description provided for @count_coupons.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero{No coupons} one{1 coupon} other{{count} coupons}}'**
  String count_coupons(num count);

  /// No description provided for @start_date.
  ///
  /// In en, this message translates to:
  /// **'Start Date'**
  String get start_date;

  /// No description provided for @end_date.
  ///
  /// In en, this message translates to:
  /// **'End Date'**
  String get end_date;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// No description provided for @password_recovery.
  ///
  /// In en, this message translates to:
  /// **'Password Recovery'**
  String get password_recovery;

  /// No description provided for @send_recovery_code.
  ///
  /// In en, this message translates to:
  /// **'Send Recovery Code'**
  String get send_recovery_code;

  /// No description provided for @change_your_password.
  ///
  /// In en, this message translates to:
  /// **'Change Your Password'**
  String get change_your_password;

  /// No description provided for @new_password.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get new_password;

  /// No description provided for @enter_new_password_here.
  ///
  /// In en, this message translates to:
  /// **'Enter New Password Here'**
  String get enter_new_password_here;

  /// No description provided for @confirm_new_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm  New Password'**
  String get confirm_new_password;

  /// No description provided for @enter_new_password_again.
  ///
  /// In en, this message translates to:
  /// **'Enter New Password Again'**
  String get enter_new_password_again;

  /// No description provided for @change_password.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get change_password;

  /// No description provided for @create_new_order.
  ///
  /// In en, this message translates to:
  /// **'New Order'**
  String get create_new_order;

  /// No description provided for @choose_by_name.
  ///
  /// In en, this message translates to:
  /// **'Choose By Name'**
  String get choose_by_name;

  /// No description provided for @choose_from_map.
  ///
  /// In en, this message translates to:
  /// **'Choose From Map'**
  String get choose_from_map;

  /// No description provided for @choose_product.
  ///
  /// In en, this message translates to:
  /// **'Choose Product'**
  String get choose_product;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @best_oil_for_your_car.
  ///
  /// In en, this message translates to:
  /// **'Best Oil For You ?'**
  String get best_oil_for_your_car;

  /// No description provided for @choose_vehicle_type.
  ///
  /// In en, this message translates to:
  /// **'Choose Vehicle Type'**
  String get choose_vehicle_type;

  /// No description provided for @choose_car_make.
  ///
  /// In en, this message translates to:
  /// **'Choose Vehicle Make'**
  String get choose_car_make;

  /// No description provided for @choose_car_model.
  ///
  /// In en, this message translates to:
  /// **'Choose Vehicle Model'**
  String get choose_car_model;

  /// No description provided for @choose_manufacture_year.
  ///
  /// In en, this message translates to:
  /// **'Choose Manufacture year'**
  String get choose_manufacture_year;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @tax.
  ///
  /// In en, this message translates to:
  /// **'Tax'**
  String get tax;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @puncher_direction.
  ///
  /// In en, this message translates to:
  /// **'Directions'**
  String get puncher_direction;

  /// No description provided for @not_now.
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get not_now;

  /// No description provided for @something_went_wrong.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong!'**
  String get something_went_wrong;

  /// No description provided for @employee_stopped_successfully.
  ///
  /// In en, this message translates to:
  /// **'Employee stopped successfully'**
  String get employee_stopped_successfully;

  /// No description provided for @employee_activated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Employee activated successfully'**
  String get employee_activated_successfully;

  /// No description provided for @employee_deleted_successfully.
  ///
  /// In en, this message translates to:
  /// **'Employee deleted successfully'**
  String get employee_deleted_successfully;

  /// No description provided for @profile_updated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Profile updated successfully'**
  String get profile_updated_successfully;

  /// No description provided for @do_you_want_to_delete_your_account.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete your account?'**
  String get do_you_want_to_delete_your_account;

  /// No description provided for @product_updated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Product price updated successfully'**
  String get product_updated_successfully;

  /// No description provided for @this_field_is_required.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get this_field_is_required;

  /// No description provided for @phone_number_must_contain_only_digits.
  ///
  /// In en, this message translates to:
  /// **'Phone number must contain only digits'**
  String get phone_number_must_contain_only_digits;

  /// No description provided for @phone_number_must_start_with_05.
  ///
  /// In en, this message translates to:
  /// **'Phone number must start with 05'**
  String get phone_number_must_start_with_05;

  /// No description provided for @otp_must_contain_only_digits.
  ///
  /// In en, this message translates to:
  /// **'OTP must contain only digits'**
  String get otp_must_contain_only_digits;

  /// No description provided for @otp_must_be_of_length.
  ///
  /// In en, this message translates to:
  /// **'OTP must be of length {length}'**
  String otp_must_be_of_length(Object length);

  /// No description provided for @password_must_have_8_characters_or_more.
  ///
  /// In en, this message translates to:
  /// **'Password must have 8 characters or more'**
  String get password_must_have_8_characters_or_more;

  /// No description provided for @password_confirmation_doesnt_match_password.
  ///
  /// In en, this message translates to:
  /// **'Password confirmation doesn\'t match password'**
  String get password_confirmation_doesnt_match_password;

  /// No description provided for @name_must_contain_only_letters.
  ///
  /// In en, this message translates to:
  /// **'Name must contain only letters'**
  String get name_must_contain_only_letters;

  /// No description provided for @please_enter_a_valid_email.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get please_enter_a_valid_email;

  /// No description provided for @id_number_must_contain_only_digits.
  ///
  /// In en, this message translates to:
  /// **'ID number must contain only digits'**
  String get id_number_must_contain_only_digits;

  /// No description provided for @limit_must_be_a_valid_number.
  ///
  /// In en, this message translates to:
  /// **'Limit must be a valid number'**
  String get limit_must_be_a_valid_number;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @enter_phone_number_05XXXXXXXX.
  ///
  /// In en, this message translates to:
  /// **'Enter phone number (05XXXXXXXX)'**
  String get enter_phone_number_05XXXXXXXX;

  /// No description provided for @phone_number_must_be_10_digits.
  ///
  /// In en, this message translates to:
  /// **'Phone number must be 10 digits'**
  String get phone_number_must_be_10_digits;

  /// No description provided for @id_number_must_be_10_digits.
  ///
  /// In en, this message translates to:
  /// **'ID number must be 10 digits'**
  String get id_number_must_be_10_digits;

  /// No description provided for @my_points.
  ///
  /// In en, this message translates to:
  /// **'My Points'**
  String get my_points;

  /// No description provided for @my_points_balance.
  ///
  /// In en, this message translates to:
  /// **'My points balance'**
  String get my_points_balance;

  /// No description provided for @point.
  ///
  /// In en, this message translates to:
  /// **'Point'**
  String get point;

  /// No description provided for @points.
  ///
  /// In en, this message translates to:
  /// **'Points'**
  String get points;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @redeem_points.
  ///
  /// In en, this message translates to:
  /// **'Redeem points'**
  String get redeem_points;

  /// No description provided for @enter_number_of_points.
  ///
  /// In en, this message translates to:
  /// **'Enter the number of points'**
  String get enter_number_of_points;

  /// No description provided for @minimum_number_points_redeemed_is_25_points.
  ///
  /// In en, this message translates to:
  /// **'The minimum number of points redeemed is 25 SAR'**
  String get minimum_number_points_redeemed_is_25_points;

  /// No description provided for @redeem.
  ///
  /// In en, this message translates to:
  /// **'Redeem'**
  String get redeem;

  /// No description provided for @number_of_points.
  ///
  /// In en, this message translates to:
  /// **'Number of Points'**
  String get number_of_points;

  /// No description provided for @points_partners.
  ///
  /// In en, this message translates to:
  /// **'Points Partners'**
  String get points_partners;

  /// No description provided for @record_of_substitutions.
  ///
  /// In en, this message translates to:
  /// **'Points History'**
  String get record_of_substitutions;

  /// No description provided for @do_you_want_to_activate.
  ///
  /// In en, this message translates to:
  /// **'Do you want to activate?'**
  String get do_you_want_to_activate;

  /// No description provided for @old_password.
  ///
  /// In en, this message translates to:
  /// **'Old password'**
  String get old_password;

  /// No description provided for @enter_old_password_here.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Old Password Here'**
  String get enter_old_password_here;

  /// No description provided for @privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_policy;

  /// No description provided for @the_qr_code_is_broken_please_try_again.
  ///
  /// In en, this message translates to:
  /// **'The QR code is broken. Please try again'**
  String get the_qr_code_is_broken_please_try_again;

  /// No description provided for @do_you_want_to_delete_this_employee.
  ///
  /// In en, this message translates to:
  /// **'Do you want to delete this employee?'**
  String get do_you_want_to_delete_this_employee;

  /// No description provided for @edit_employee.
  ///
  /// In en, this message translates to:
  /// **'Edit Employee'**
  String get edit_employee;

  /// No description provided for @employee_updated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Employee updated Successfully!'**
  String get employee_updated_successfully;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @the_amount.
  ///
  /// In en, this message translates to:
  /// **'The amount'**
  String get the_amount;

  /// No description provided for @enter_the_amount.
  ///
  /// In en, this message translates to:
  /// **'Enter the amount'**
  String get enter_the_amount;

  /// No description provided for @add_to_wallet.
  ///
  /// In en, this message translates to:
  /// **'Add to balance'**
  String get add_to_wallet;

  /// No description provided for @add_the_amount.
  ///
  /// In en, this message translates to:
  /// **'Add the amount'**
  String get add_the_amount;

  /// No description provided for @title.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get title;

  /// No description provided for @enter_the_title.
  ///
  /// In en, this message translates to:
  /// **'Enter the title'**
  String get enter_the_title;

  /// No description provided for @confirm_payment.
  ///
  /// In en, this message translates to:
  /// **'Confirm payment'**
  String get confirm_payment;

  /// No description provided for @no_image.
  ///
  /// In en, this message translates to:
  /// **'No Image'**
  String get no_image;

  /// No description provided for @please_choose_media_to_select.
  ///
  /// In en, this message translates to:
  /// **'Please choose media to select'**
  String get please_choose_media_to_select;

  /// No description provided for @from_gallery.
  ///
  /// In en, this message translates to:
  /// **'From Gallery'**
  String get from_gallery;

  /// No description provided for @from_camera.
  ///
  /// In en, this message translates to:
  /// **'From Camera'**
  String get from_camera;

  /// No description provided for @transfer_image.
  ///
  /// In en, this message translates to:
  /// **'Transfer image'**
  String get transfer_image;

  /// No description provided for @enter_the_code_sent_to_employee_number.
  ///
  /// In en, this message translates to:
  /// **'Enter the code sent to the employee number'**
  String get enter_the_code_sent_to_employee_number;

  /// No description provided for @confirm_order.
  ///
  /// In en, this message translates to:
  /// **'Confirm order'**
  String get confirm_order;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @amount_added_successfully.
  ///
  /// In en, this message translates to:
  /// **'Amount added successfully'**
  String get amount_added_successfully;

  /// No description provided for @deposit_method.
  ///
  /// In en, this message translates to:
  /// **'Deposit method'**
  String get deposit_method;

  /// No description provided for @bank_transfer.
  ///
  /// In en, this message translates to:
  /// **'Bank transfer'**
  String get bank_transfer;

  /// No description provided for @there_are_no_transactions.
  ///
  /// In en, this message translates to:
  /// **'There are no transactions'**
  String get there_are_no_transactions;

  /// No description provided for @there_are_no_orders.
  ///
  /// In en, this message translates to:
  /// **'You have no previous orders'**
  String get there_are_no_orders;

  /// No description provided for @copy_qr_code.
  ///
  /// In en, this message translates to:
  /// **'Copy QR Code'**
  String get copy_qr_code;

  /// No description provided for @scan_the_point_code.
  ///
  /// In en, this message translates to:
  /// **'Scan the Points Code'**
  String get scan_the_point_code;

  /// No description provided for @direct_the_camera_to_the_products_code_to_read_it.
  ///
  /// In en, this message translates to:
  /// **'Direct the camera to the product\'s code to read it'**
  String get direct_the_camera_to_the_products_code_to_read_it;

  /// No description provided for @count_points.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, zero{0.00 point} one{1 point} other{{count} points}}'**
  String count_points(num count);

  /// No description provided for @you_have.
  ///
  /// In en, this message translates to:
  /// **'You have'**
  String get you_have;

  /// No description provided for @about_your_points.
  ///
  /// In en, this message translates to:
  /// **'Transfer points'**
  String get about_your_points;

  /// No description provided for @redeem_points_hint.
  ///
  /// In en, this message translates to:
  /// **'*Note: Every 1 point equals 1 riyal'**
  String get redeem_points_hint;

  /// No description provided for @number_of_points_to_rerdeem.
  ///
  /// In en, this message translates to:
  /// **'The number of points to be redeemed'**
  String get number_of_points_to_rerdeem;

  /// No description provided for @back_to_points.
  ///
  /// In en, this message translates to:
  /// **'Back to Points'**
  String get back_to_points;

  /// No description provided for @profile_photo_updated_successfully.
  ///
  /// In en, this message translates to:
  /// **'Profile photo updated successfully'**
  String get profile_photo_updated_successfully;

  /// No description provided for @mada.
  ///
  /// In en, this message translates to:
  /// **'Mada'**
  String get mada;

  /// No description provided for @credit_card.
  ///
  /// In en, this message translates to:
  /// **'Card'**
  String get credit_card;

  /// No description provided for @apple_pay.
  ///
  /// In en, this message translates to:
  /// **'Apple Pay'**
  String get apple_pay;

  /// No description provided for @proceed_to_payment.
  ///
  /// In en, this message translates to:
  /// **'Proceed Payment'**
  String get proceed_to_payment;

  /// No description provided for @points_redeemed_successfully.
  ///
  /// In en, this message translates to:
  /// **'Points redeemed successfully'**
  String get points_redeemed_successfully;

  /// No description provided for @reference_number.
  ///
  /// In en, this message translates to:
  /// **'Reference number'**
  String get reference_number;

  /// No description provided for @expiration_date.
  ///
  /// In en, this message translates to:
  /// **'Expiration date'**
  String get expiration_date;

  /// No description provided for @your_points.
  ///
  /// In en, this message translates to:
  /// **'Your Points'**
  String get your_points;

  /// No description provided for @value.
  ///
  /// In en, this message translates to:
  /// **'Value'**
  String get value;

  /// No description provided for @coupon_code.
  ///
  /// In en, this message translates to:
  /// **'Coupon code'**
  String get coupon_code;

  /// No description provided for @click_this_button_when_order_is_completed.
  ///
  /// In en, this message translates to:
  /// **'Click on the button below once order is completed'**
  String get click_this_button_when_order_is_completed;

  /// No description provided for @couldnt_find_the_data_filling_file_try_again_later.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t find the data filling file. Try again later'**
  String get couldnt_find_the_data_filling_file_try_again_later;

  /// No description provided for @there_are_no_substitutions.
  ///
  /// In en, this message translates to:
  /// **'There are no transactions'**
  String get there_are_no_substitutions;

  /// No description provided for @enter_coupon_code.
  ///
  /// In en, this message translates to:
  /// **'Enter Coupon code'**
  String get enter_coupon_code;

  /// No description provided for @add_couppn_first.
  ///
  /// In en, this message translates to:
  /// **'Add coupon code first'**
  String get add_couppn_first;

  /// No description provided for @coolants.
  ///
  /// In en, this message translates to:
  /// **'Coolants'**
  String get coolants;

  /// No description provided for @differentialFront.
  ///
  /// In en, this message translates to:
  /// **'Differential Front'**
  String get differentialFront;

  /// No description provided for @engine.
  ///
  /// In en, this message translates to:
  /// **'Engine'**
  String get engine;

  /// No description provided for @powerSteering.
  ///
  /// In en, this message translates to:
  /// **'Power Steering'**
  String get powerSteering;

  /// No description provided for @transferBox.
  ///
  /// In en, this message translates to:
  /// **'Transfer Box'**
  String get transferBox;

  /// No description provided for @automaticTransmission.
  ///
  /// In en, this message translates to:
  /// **'Automatic Transmission'**
  String get automaticTransmission;

  /// No description provided for @manualTransmission.
  ///
  /// In en, this message translates to:
  /// **'Manual Transmission'**
  String get manualTransmission;

  /// No description provided for @differential.
  ///
  /// In en, this message translates to:
  /// **'Differential'**
  String get differential;

  /// No description provided for @show.
  ///
  /// In en, this message translates to:
  /// **'Show'**
  String get show;

  /// No description provided for @your_balance.
  ///
  /// In en, this message translates to:
  /// **'Your wallet balance'**
  String get your_balance;

  /// No description provided for @hide.
  ///
  /// In en, this message translates to:
  /// **'Hide'**
  String get hide;

  /// No description provided for @choose_best_oil.
  ///
  /// In en, this message translates to:
  /// **'Determine the best oil for your car'**
  String get choose_best_oil;

  /// No description provided for @add_quick_order_hint.
  ///
  /// In en, this message translates to:
  /// **'Place a quick order from here'**
  String get add_quick_order_hint;

  /// No description provided for @current.
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get current;

  /// No description provided for @finished.
  ///
  /// In en, this message translates to:
  /// **'Finished'**
  String get finished;

  /// No description provided for @user_code.
  ///
  /// In en, this message translates to:
  /// **'User code'**
  String get user_code;

  /// No description provided for @scan_qr_announcement.
  ///
  /// In en, this message translates to:
  /// **'*info: if the QR can not be used use the user code'**
  String get scan_qr_announcement;

  /// No description provided for @start_scanning.
  ///
  /// In en, this message translates to:
  /// **'Start scanning'**
  String get start_scanning;

  /// No description provided for @barcode.
  ///
  /// In en, this message translates to:
  /// **'QR code'**
  String get barcode;

  /// No description provided for @enter_user_code.
  ///
  /// In en, this message translates to:
  /// **'Enter user code'**
  String get enter_user_code;

  /// No description provided for @enter_user_code_hint.
  ///
  /// In en, this message translates to:
  /// **'Ask the user for his code'**
  String get enter_user_code_hint;

  /// No description provided for @basic_information.
  ///
  /// In en, this message translates to:
  /// **'Basic information'**
  String get basic_information;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @urdu.
  ///
  /// In en, this message translates to:
  /// **'Urdo'**
  String get urdu;

  /// No description provided for @support.
  ///
  /// In en, this message translates to:
  /// **'Support'**
  String get support;

  /// No description provided for @finish_the_order.
  ///
  /// In en, this message translates to:
  /// **'Finish the order'**
  String get finish_the_order;

  /// No description provided for @the_place_here_is_empty.
  ///
  /// In en, this message translates to:
  /// **'The Place Here Is Empty!'**
  String get the_place_here_is_empty;

  /// No description provided for @you_can_find_your_orders_here.
  ///
  /// In en, this message translates to:
  /// **'You can find your Orders here'**
  String get you_can_find_your_orders_here;

  /// No description provided for @you_can_find_your_notifications_here.
  ///
  /// In en, this message translates to:
  /// **'You can find your Notifications here'**
  String get you_can_find_your_notifications_here;

  /// No description provided for @know_more.
  ///
  /// In en, this message translates to:
  /// **'Know more'**
  String get know_more;

  /// No description provided for @map.
  ///
  /// In en, this message translates to:
  /// **'Map'**
  String get map;

  /// No description provided for @all_stores.
  ///
  /// In en, this message translates to:
  /// **'All stores'**
  String get all_stores;

  /// No description provided for @near_stores.
  ///
  /// In en, this message translates to:
  /// **'Nearby stores'**
  String get near_stores;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @you_can_no_contact.
  ///
  /// In en, this message translates to:
  /// **'You can now contact us through'**
  String get you_can_no_contact;

  /// No description provided for @social_media.
  ///
  /// In en, this message translates to:
  /// **'Social media'**
  String get social_media;

  /// No description provided for @we_are_happy_to_contact_you.
  ///
  /// In en, this message translates to:
  /// **'We are happy to communicate with you and respond to all your messages\nS\nEvery day, 24 hours a day'**
  String get we_are_happy_to_contact_you;

  /// No description provided for @app_language.
  ///
  /// In en, this message translates to:
  /// **'App Language'**
  String get app_language;

  /// No description provided for @choose_app_language.
  ///
  /// In en, this message translates to:
  /// **'Please select the application language'**
  String get choose_app_language;

  /// No description provided for @all_stores2.
  ///
  /// In en, this message translates to:
  /// **'All stores'**
  String get all_stores2;

  /// No description provided for @addToCart.
  ///
  /// In en, this message translates to:
  /// **'Add to Cart'**
  String get addToCart;

  /// No description provided for @activeOrdersNow.
  ///
  /// In en, this message translates to:
  /// **'activeOrdersNow'**
  String get activeOrdersNow;

  /// No description provided for @accountReview.
  ///
  /// In en, this message translates to:
  /// **'accountReview'**
  String get accountReview;

  /// No description provided for @lastOrders.
  ///
  /// In en, this message translates to:
  /// **'lastOrders'**
  String get lastOrders;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'services'**
  String get services;

  /// No description provided for @teamProgress.
  ///
  /// In en, this message translates to:
  /// **'teamProgress'**
  String get teamProgress;

  /// No description provided for @soon.
  ///
  /// In en, this message translates to:
  /// **'soon'**
  String get soon;

  /// No description provided for @main.
  ///
  /// In en, this message translates to:
  /// **'back to home screen'**
  String get main;

  /// No description provided for @rechargeWallet.
  ///
  /// In en, this message translates to:
  /// **'rechargeBalance'**
  String get rechargeWallet;

  /// No description provided for @requiedAmount.
  ///
  /// In en, this message translates to:
  /// **'requiedAmount'**
  String get requiedAmount;

  /// No description provided for @carNumber.
  ///
  /// In en, this message translates to:
  /// **'carNumber'**
  String get carNumber;

  /// No description provided for @carNumberRequest.
  ///
  /// In en, this message translates to:
  /// **'please enter car Number'**
  String get carNumberRequest;

  /// No description provided for @meterNumber.
  ///
  /// In en, this message translates to:
  /// **'meterNumber'**
  String get meterNumber;

  /// No description provided for @meterNumberRequest.
  ///
  /// In en, this message translates to:
  /// **'please enter meter Number'**
  String get meterNumberRequest;

  /// No description provided for @carNumberRequestImage.
  ///
  /// In en, this message translates to:
  /// **'carNumberRequestImage'**
  String get carNumberRequestImage;

  /// No description provided for @meterNumberRequestImage.
  ///
  /// In en, this message translates to:
  /// **'meterNumberRequestImage'**
  String get meterNumberRequestImage;

  /// No description provided for @noPartners.
  ///
  /// In en, this message translates to:
  /// **'no Partners'**
  String get noPartners;

  /// No description provided for @futureHubWallet.
  ///
  /// In en, this message translates to:
  /// **'futureHubWallet'**
  String get futureHubWallet;

  /// No description provided for @e_Payment.
  ///
  /// In en, this message translates to:
  /// **'You can browse the nearest branch to you or your drivers with ease through a digital map that provides you with all the options.'**
  String get e_Payment;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Ease and security'**
  String get security;

  /// No description provided for @securityDetails.
  ///
  /// In en, this message translates to:
  /// **'The first application in the Kingdom of Saudi Arabia to sell Futurehub oils safely and easily'**
  String get securityDetails;

  /// No description provided for @product.
  ///
  /// In en, this message translates to:
  /// **'Many products'**
  String get product;

  /// No description provided for @productDetails.
  ///
  /// In en, this message translates to:
  /// **'Many featured products with exclusive discounts'**
  String get productDetails;

  /// No description provided for @distanceBetween.
  ///
  /// In en, this message translates to:
  /// **' distance between your location and petrol station '**
  String get distanceBetween;

  /// No description provided for @choiceBranch.
  ///
  /// In en, this message translates to:
  /// **'choiceBranch'**
  String get choiceBranch;

  /// No description provided for @choiceVichele.
  ///
  /// In en, this message translates to:
  /// **'choiceVichele'**
  String get choiceVichele;

  /// No description provided for @vicheleNumber.
  ///
  /// In en, this message translates to:
  /// **' vicheleNumber'**
  String get vicheleNumber;

  /// No description provided for @paymentBy.
  ///
  /// In en, this message translates to:
  /// **'paymentBy'**
  String get paymentBy;

  /// No description provided for @bankTransfer.
  ///
  /// In en, this message translates to:
  /// **'bankTransfer'**
  String get bankTransfer;

  /// No description provided for @ePayment.
  ///
  /// In en, this message translates to:
  /// **'ePayment'**
  String get ePayment;

  /// No description provided for @confirmRecharge.
  ///
  /// In en, this message translates to:
  /// **'confirmRecharge'**
  String get confirmRecharge;

  /// No description provided for @liter.
  ///
  /// In en, this message translates to:
  /// **'liter'**
  String get liter;

  /// No description provided for @literPrice.
  ///
  /// In en, this message translates to:
  /// **'literPrice'**
  String get literPrice;

  /// No description provided for @vicheleId.
  ///
  /// In en, this message translates to:
  /// **'vichele Number'**
  String get vicheleId;

  /// No description provided for @walletAmount.
  ///
  /// In en, this message translates to:
  /// **'walletAmount'**
  String get walletAmount;

  /// No description provided for @literCount.
  ///
  /// In en, this message translates to:
  /// **'liter count'**
  String get literCount;

  /// No description provided for @fuelType.
  ///
  /// In en, this message translates to:
  /// **'fuel Type'**
  String get fuelType;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'date'**
  String get date;

  /// No description provided for @paymentType.
  ///
  /// In en, this message translates to:
  /// **'payment Type'**
  String get paymentType;

  /// No description provided for @employeeBalance.
  ///
  /// In en, this message translates to:
  /// **'employee Balance'**
  String get employeeBalance;

  /// No description provided for @successOpeartion.
  ///
  /// In en, this message translates to:
  /// **'success Opeartion'**
  String get successOpeartion;

  /// No description provided for @failedOpeartion.
  ///
  /// In en, this message translates to:
  /// **'failed Opeartion'**
  String get failedOpeartion;

  /// No description provided for @orderConfirmed.
  ///
  /// In en, this message translates to:
  /// **'Order confirmed successfully!'**
  String get orderConfirmed;

  /// No description provided for @orderFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to confirm order. Please try again.'**
  String get orderFailed;

  /// No description provided for @dirctions.
  ///
  /// In en, this message translates to:
  /// **'dirctions'**
  String get dirctions;

  /// No description provided for @vicheleInfo.
  ///
  /// In en, this message translates to:
  /// **'Vehicle Details'**
  String get vicheleInfo;

  /// No description provided for @driverList.
  ///
  /// In en, this message translates to:
  /// **'driver List'**
  String get driverList;

  /// No description provided for @securityData.
  ///
  /// In en, this message translates to:
  /// **'Secure transactions that support all electronic payment methods'**
  String get securityData;

  /// No description provided for @orderData.
  ///
  /// In en, this message translates to:
  /// **'all of your pervious order you will found it in pervious order list'**
  String get orderData;

  /// No description provided for @serviceYou.
  ///
  /// In en, this message translates to:
  /// **'What can we do for you today?'**
  String get serviceYou;

  /// No description provided for @fuelTime.
  ///
  /// In en, this message translates to:
  /// **'Time to fill up?'**
  String get fuelTime;

  /// No description provided for @fuelTimeDes.
  ///
  /// In en, this message translates to:
  /// **'Determine what fuel is suitable for your car'**
  String get fuelTimeDes;

  /// No description provided for @nearbyStations.
  ///
  /// In en, this message translates to:
  /// **'nearest stations'**
  String get nearbyStations;

  /// No description provided for @manager.
  ///
  /// In en, this message translates to:
  /// **'Come on, manager'**
  String get manager;

  /// No description provided for @fuel.
  ///
  /// In en, this message translates to:
  /// **'fuel'**
  String get fuel;

  /// No description provided for @fuel_Balance.
  ///
  /// In en, this message translates to:
  /// **'fuel balance'**
  String get fuel_Balance;

  /// No description provided for @vehicle_Change.
  ///
  /// In en, this message translates to:
  /// **'vehicle change'**
  String get vehicle_Change;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'details'**
  String get details;

  /// No description provided for @show_content.
  ///
  /// In en, this message translates to:
  /// **'show content'**
  String get show_content;

  /// No description provided for @services_provider.
  ///
  /// In en, this message translates to:
  /// **'service provider'**
  String get services_provider;

  /// No description provided for @services_details.
  ///
  /// In en, this message translates to:
  /// **'services details'**
  String get services_details;

  /// No description provided for @payment_details.
  ///
  /// In en, this message translates to:
  /// **'payment details'**
  String get payment_details;

  /// No description provided for @services_balance.
  ///
  /// In en, this message translates to:
  /// **'services balance'**
  String get services_balance;

  /// No description provided for @update_app.
  ///
  /// In en, this message translates to:
  /// **'update App '**
  String get update_app;

  /// No description provided for @update_require.
  ///
  /// In en, this message translates to:
  /// **'Please update the app to the latest version. '**
  String get update_require;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'update'**
  String get update;

  /// No description provided for @reports.
  ///
  /// In en, this message translates to:
  /// **'reports'**
  String get reports;

  /// No description provided for @select_day.
  ///
  /// In en, this message translates to:
  /// **'select day'**
  String get select_day;

  /// No description provided for @order_count.
  ///
  /// In en, this message translates to:
  /// **'order count'**
  String get order_count;

  /// No description provided for @quantity_count.
  ///
  /// In en, this message translates to:
  /// **'quantity count'**
  String get quantity_count;

  /// No description provided for @total_price.
  ///
  /// In en, this message translates to:
  /// **'total price'**
  String get total_price;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'today'**
  String get today;

  /// No description provided for @show_order.
  ///
  /// In en, this message translates to:
  /// **'show order'**
  String get show_order;

  /// No description provided for @otp.
  ///
  /// In en, this message translates to:
  /// **'otp'**
  String get otp;

  /// No description provided for @branches.
  ///
  /// In en, this message translates to:
  /// **'branches'**
  String get branches;

  /// No description provided for @branches_near.
  ///
  /// In en, this message translates to:
  /// **'branches near for you'**
  String get branches_near;

  /// No description provided for @futureHub.
  ///
  /// In en, this message translates to:
  /// **'Future  team is working hard to add services to you as soon as possible 👋'**
  String get futureHub;

  /// No description provided for @addToCartSuccess.
  ///
  /// In en, this message translates to:
  /// **'Add to Cart Success'**
  String get addToCartSuccess;

  /// No description provided for @locationRequired.
  ///
  /// In en, this message translates to:
  /// **'locationRequired'**
  String get locationRequired;

  /// No description provided for @pleaseEnableLocationServicesForThisApp.
  ///
  /// In en, this message translates to:
  /// **'pleaseEnableLocationServicesForThisApp'**
  String get pleaseEnableLocationServicesForThisApp;

  /// No description provided for @enable.
  ///
  /// In en, this message translates to:
  /// **'enable'**
  String get enable;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'cancel'**
  String get cancel;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['ar', 'en', 'ur'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'en':
      return AppLocalizationsEn();
    case 'ur':
      return AppLocalizationsUr();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
