// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get welcome_to_caltex => 'أهلًا بك في\nفيوتشرهب';

  @override
  String get welcome => 'اهلًا بك !';

  @override
  String get hi => 'هلا ! ،';

  @override
  String get hello => 'مرحباً';

  @override
  String get caltex => 'Futurehub';

  @override
  String get greet_user => 'حيّ الله الوجوه الطيبة ';

  @override
  String get phone_number => 'رقم جوالك يبدأ بـ 05';

  @override
  String get join_now => 'انضم الآن';

  @override
  String get login => 'تسجيل الدخول';

  @override
  String get enter_the_code_sent_to_the_phone_number => 'لقد ارسلنا كود التحقق الي جوالك';

  @override
  String get activate => 'تفعيل';

  @override
  String get resend_the_code => 'ارسل الكود مجددًا';

  @override
  String get try_again_after => 'اعادة الإرسال بعد';

  @override
  String get terms_and_conditions => 'الشروط والأحكام';

  @override
  String get about_the_app => 'عن التطبيق';

  @override
  String get frequently_asked_questions => 'الأسئلة الشائعة';

  @override
  String get home => 'الرئيسية';

  @override
  String get orders => 'الطلبات';

  @override
  String get my_orders => 'طلباتي';

  @override
  String get my_profile => 'حسابي';

  @override
  String get account_data => 'بيانات الحساب';

  @override
  String get recieve_a_new_order => 'استقبال طلب جديد';

  @override
  String get previous_orders => 'الطلبات السابقة';

  @override
  String get operation_number => 'رقم العملية:';

  @override
  String get number_of_products => 'عدد المنتجات:';

  @override
  String get client => 'العميل:';

  @override
  String get order_total => 'مجموع الطلب:';

  @override
  String get products => 'المنتجات';

  @override
  String get other_products => 'منتجات أخرى';

  @override
  String get sar => 'ريال';

  @override
  String get notifications => 'الإشعارات';

  @override
  String get wallet => 'رصيدك الحالي';

  @override
  String get balance => 'الرصيد الحالي';

  @override
  String get my_transactions => 'عملياتي';

  @override
  String get withdrawal => 'عميلة سحب';

  @override
  String get deposit => 'عملية إيداع';

  @override
  String get transfer => 'عملية تحويل';

  @override
  String get scan_the_order_code => 'قراءة شفرة الطلب';

  @override
  String get direct_the_camera_to_the_clients_phone_to_read_the_order_code => 'قم بتثبيت الكاميرا على هاتف العميل لقراءة شفرة الطلب';

  @override
  String get switch_the_language => 'تغيير اللغة';

  @override
  String get delete_the_account => 'حذف الحساب';

  @override
  String get sign_out => 'تسجيل الخروج';

  @override
  String get switch_the_apps_language => 'تغيير لغة التطبيق';

  @override
  String get back => 'رجوع';

  @override
  String get do_you_want_to_sign_out => 'هل ترغب في تسجيل الخروج؟';

  @override
  String get no_stay_connected => 'لا، ابق متصلًا';

  @override
  String get company_data => 'بيانات الشركة';

  @override
  String get company_files => 'ملفات الشركة';

  @override
  String get company_name_in_arabic => 'اسم الشركة باللغة العربية';

  @override
  String get company_name_in_english => 'اسم الشركة باللغة الإنجليزية';

  @override
  String get company_owner_name => 'اسم مالك الشركة';

  @override
  String get id_number => 'رقم الهوية';

  @override
  String get general_manager => 'المدير العام';

  @override
  String get save_changes => 'حفظ التعديلات';

  @override
  String get username => 'اسم المستخدم';

  @override
  String get email => 'البريد الالكتروني';

  @override
  String get commercial_record => 'السجل التجاري';

  @override
  String get chamber_of_commerce_book => 'كتاب الغرفة التجارية';

  @override
  String get upload_the_file => 'ارفع الملف';

  @override
  String get order_details => 'تفاصيل الطلب';

  @override
  String get client_name => 'اسم العميل';

  @override
  String get company_name => 'اسم الشركة';

  @override
  String get order_has_been_done => 'تم الانتهاء من الطلب';

  @override
  String get choose_orders_done_state => 'اختر حالة إنهاء الطلب';

  @override
  String get client_recieved_the_products => 'العميل استلم المنتجات';

  @override
  String get products_arent_available => 'المنتجات غير متوفرة';

  @override
  String get didnt_agree_upon_the_cost => 'لم يتم الاتفاق على التكلفة';

  @override
  String get done => 'إنهاء';

  @override
  String get employees => 'الموظفين';

  @override
  String count_employees(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count موظف',
      few: '$count موظفين',
      two: 'موظفان',
      one: 'موظف واحد',
      zero: 'لا يوجد موظفين',
    );
    return '$_temp0';
  }

  @override
  String count_orders(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count طلب',
      few: '$count طلبات',
      two: 'طلبان',
      one: 'طلب واحد',
      zero: 'لا يوجد طلبات',
    );
    return '$_temp0';
  }

  @override
  String get add_an_employee => 'إضافة موظف';

  @override
  String get add_a_group => 'إضافة مجموعة';

  @override
  String get date_added => 'تاريخ الإضافة';

  @override
  String get start => 'ابدأ';

  @override
  String get my_products => 'منتجاتي';

  @override
  String get welcome_again => 'مرحباً بعودتك مرة أخرى';

  @override
  String get enter_the_password => 'أدخل كلمة المرور الخاصة بحسابك';

  @override
  String get password_goes_here => 'كلمة المرور هنا';

  @override
  String get forgot_password => 'نسيت كلمة المرور ؟';

  @override
  String get enter_opt => 'ادخل رمز التحقق';

  @override
  String get log_in => 'دخول';

  @override
  String get new_order => 'طلب جديد';

  @override
  String get edit => 'تعديل';

  @override
  String get stop => 'إيقاف';

  @override
  String get delete => 'حذف';

  @override
  String get add => 'إضافة';

  @override
  String get show_all => 'عرض الكل';

  @override
  String get operations => 'العمليات';

  @override
  String get transaction_details => 'تفاصيل العملية';

  @override
  String get transaction_type => 'نوع العملية';

  @override
  String get reciever => 'المستلم';

  @override
  String get transaction_amount => 'قيمة التحويل';

  @override
  String get remaining_balance => 'الرصيد المتبقي';

  @override
  String get employee_name => 'اسم الموظف';

  @override
  String get enter_employee_name_here => 'ادخل اسم الموظف هنا';

  @override
  String get enter_phone_number_here => 'ادخل رقم الجوال هنا';

  @override
  String get enter_email_here => 'ادخل البريد الالكتروني هنا';

  @override
  String get enter_id_number_here => 'ادخل رقم الهوية هنا';

  @override
  String get data_filling_file => 'ملف تعبئة البيانات';

  @override
  String get upload_data_filling_file => 'رفع ملف تعبئة المبيانات';

  @override
  String get download_file => 'تحميل الملف';

  @override
  String get add_file => 'إضافة الملف';

  @override
  String get uploaded_files => 'الملفات المرفوعة';

  @override
  String get limit => 'الحد الأقصى';

  @override
  String get name => 'الاسم';

  @override
  String get enter_the_limit_here => 'أدخل الحد الأقصى هنا';

  @override
  String get sign_up => 'التسجيل';

  @override
  String get password => 'كلمة المرور';

  @override
  String get confirm_password => 'تأكيد كلمة المرور';

  @override
  String get enter_the_password_again => 'أدخل كلمة المرور مجددًا هنا';

  @override
  String count_products(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count منتج',
      few: '$count منتجات',
      two: 'منتجان',
      one: 'منتج واحد',
      zero: 'لا يوجد منتجات',
    );
    return '$_temp0';
  }

  @override
  String get original_price => 'السعر الأصلي';

  @override
  String get public_price => 'سعر الجمهور';

  @override
  String get change_public_price => 'تغيير سعر الجمهور';

  @override
  String get product_details => 'تفاصيل المنتج';

  @override
  String get change => 'تغيير';

  @override
  String get coupons => 'الكوبونات';

  @override
  String count_coupons(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count كوبون',
      few: '$count كوبونات',
      two: 'كوبونان',
      one: 'كوبون واحد',
      zero: 'لا يوجد كوبونات',
    );
    return '$_temp0';
  }

  @override
  String get start_date => 'تاريخ البداية';

  @override
  String get end_date => 'تاريخ الانتهاء';

  @override
  String get discount => 'قيمة الخصم';

  @override
  String get password_recovery => 'استرجاع كلمة المرور';

  @override
  String get send_recovery_code => 'أرسل رمز الاسترجاع';

  @override
  String get change_your_password => 'قم بتحديث كلمة المرور';

  @override
  String get new_password => 'كلمة المرور الجديدة';

  @override
  String get enter_new_password_here => 'أدخل كلمة المرور الجديدة هنا';

  @override
  String get confirm_new_password => 'تأكيد كلمة المرور الجديدة';

  @override
  String get enter_new_password_again => 'أعد إدخال كلمة المرور الجديدة';

  @override
  String get change_password => 'تحديث كلمة المرور';

  @override
  String get create_new_order => 'إنشاء طلب جديد';

  @override
  String get choose_by_name => 'اختر عن طريق الاسم';

  @override
  String get choose_from_map => 'اختر عن طريق الخريطة';

  @override
  String get choose_product => 'اختر المنتج';

  @override
  String get next => 'التالي';

  @override
  String get best_oil_for_your_car => 'الزيت المناسب لسيارتك ؟';

  @override
  String get choose_vehicle_type => 'أختر نوع مركبتك';

  @override
  String get choose_car_make => 'اختر ماركة المركبة';

  @override
  String get choose_car_model => 'اختر موديل المركبة';

  @override
  String get choose_manufacture_year => 'اختر سنة الصنع';

  @override
  String get search => 'ابحث';

  @override
  String get tax => 'الضريبة';

  @override
  String get total => 'المجموع';

  @override
  String get puncher_direction => 'إتجه للبنشر';

  @override
  String get not_now => 'مو لحين';

  @override
  String get something_went_wrong => 'حدث خطأ ما!';

  @override
  String get employee_stopped_successfully => 'تم إيقاف الموظف بنجاح';

  @override
  String get employee_activated_successfully => 'تم تفعيل الموظف بنجاح';

  @override
  String get employee_deleted_successfully => 'تم حذف الموظف بنجاح';

  @override
  String get profile_updated_successfully => 'تم تعديل بيانات الحساب بنجاح';

  @override
  String get do_you_want_to_delete_your_account => 'هل تريد حذف حسابك؟';

  @override
  String get product_updated_successfully => 'تم تعديل سعر المنتج بنجاح';

  @override
  String get this_field_is_required => 'هذا الحقل مطلوب';

  @override
  String get phone_number_must_contain_only_digits => 'رقم الجوال لابد أن يحتوي أرقامًا فقط';

  @override
  String get phone_number_must_start_with_05 => 'رقم الجوال لابد من أن يبدأ بـ05';

  @override
  String get otp_must_contain_only_digits => 'الكود لابد أن يحتوي أرقامًا فقط';

  @override
  String otp_must_be_of_length(Object length) {
    return 'الكود لا بد أن يكون طوله $length';
  }

  @override
  String get password_must_have_8_characters_or_more => 'كلمة المرور لابد أن تكون 8 حروف أو أكثر';

  @override
  String get password_confirmation_doesnt_match_password => 'تأكيد كلمة المرور لا يطابق كلمة المرور';

  @override
  String get name_must_contain_only_letters => 'الاسم لابد أن يحتوي حروفًا فقط';

  @override
  String get please_enter_a_valid_email => 'رجاءًا أدخل بريدًا إلكترونيًا صحيحًا';

  @override
  String get id_number_must_contain_only_digits => 'رقم الهوية لابد أن يحتوي أرقامًا فقط';

  @override
  String get limit_must_be_a_valid_number => 'الحد الأقصى لابد أن يكون رقمًا صالحًا';

  @override
  String get price => 'السعر';

  @override
  String get enter_phone_number_05XXXXXXXX => 'أدخل رقم الهاتف (05XXXXXXXX)';

  @override
  String get phone_number_must_be_10_digits => 'رقم الهاتف لابد أن يحتوي 10 أرقام';

  @override
  String get id_number_must_be_10_digits => 'رقم الهوية لابد أن يحتوي 10 أرقام';

  @override
  String get my_points => 'نقاطى';

  @override
  String get my_points_balance => 'رصيد نقاطى';

  @override
  String get point => 'نقطة';

  @override
  String get points => 'النقاط';

  @override
  String get language => 'اللغة';

  @override
  String get settings => 'الإعدادات';

  @override
  String get redeem_points => 'استبدال النقاط';

  @override
  String get enter_number_of_points => 'ادخل عدد النقاط';

  @override
  String get minimum_number_points_redeemed_is_25_points => 'الحد الأدنى للنقاط المستبدلة 25 ريال';

  @override
  String get redeem => 'استبدال';

  @override
  String get number_of_points => 'عدد النقاط';

  @override
  String get points_partners => 'شركاء النقاط';

  @override
  String get record_of_substitutions => 'سجل الاستبدالات';

  @override
  String get do_you_want_to_activate => 'هل تريد التفعيل؟';

  @override
  String get old_password => 'كلمة السر القديمة';

  @override
  String get enter_old_password_here => 'ادخل كلمة السر القديمة';

  @override
  String get privacy_policy => 'سياسة الخصوصية';

  @override
  String get the_qr_code_is_broken_please_try_again => 'هذا الكود به مشكلة. حاول مرة أخرى';

  @override
  String get do_you_want_to_delete_this_employee => 'هل تريد حذف الموظف؟';

  @override
  String get edit_employee => 'تعديل بيانات الموظف';

  @override
  String get employee_updated_successfully => 'تم تعديل بيانات الموظف بنجاح';

  @override
  String get all => 'الكل';

  @override
  String get the_amount => 'المبلغ';

  @override
  String get enter_the_amount => 'أدخل المبلغ';

  @override
  String get add_to_wallet => 'أضف الى رصيدك';

  @override
  String get add_the_amount => 'اضافة المبلغ';

  @override
  String get title => 'العنوان';

  @override
  String get enter_the_title => 'ادخل العنوان';

  @override
  String get confirm_payment => 'تاكيد الدفع';

  @override
  String get no_image => 'لا صورة';

  @override
  String get please_choose_media_to_select => 'الرجاء اختيار الوسائط للاختيار';

  @override
  String get from_gallery => 'من المعرض';

  @override
  String get from_camera => 'من الكاميرا';

  @override
  String get transfer_image => 'صورة التحويل';

  @override
  String get enter_the_code_sent_to_employee_number => 'أدخل الرمز الذي تم إرساله إلي رقم الموظف';

  @override
  String get confirm_order => 'تأكيد الطلب';

  @override
  String get unknown => 'غير معروف';

  @override
  String get amount_added_successfully => 'تم إضافة المبلغ';

  @override
  String get deposit_method => 'طريقة الإيداع';

  @override
  String get bank_transfer => 'تحويل بنكي';

  @override
  String get there_are_no_transactions => 'لا يوجد عمليات';

  @override
  String get there_are_no_orders => 'لا يوجد طلبات';

  @override
  String get copy_qr_code => 'انسخ الكود';

  @override
  String get scan_the_point_code => 'قراءة شفرة النقاط';

  @override
  String get direct_the_camera_to_the_products_code_to_read_it => 'وجه الكاميرا نحو كود المنتج لقراءته';

  @override
  String count_points(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count نقطة',
      few: '$count نقاط',
      two: 'نقطتان',
      one: 'نقطة واحدة',
      zero: '0.00 نقطة',
    );
    return '$_temp0';
  }

  @override
  String get you_have => 'لديك';

  @override
  String get about_your_points => 'حول نقاطك';

  @override
  String get redeem_points_hint => '*ملحوظة : كل 1 نقطة تساوي 1 ريال';

  @override
  String get number_of_points_to_rerdeem => 'عدد النقاط المراد إستبدالها';

  @override
  String get back_to_points => 'عودة للنقاط';

  @override
  String get profile_photo_updated_successfully => 'تم تغيير صورة الحساب بنجاح';

  @override
  String get mada => 'مدى';

  @override
  String get credit_card => 'بطاقة ائتمانية';

  @override
  String get apple_pay => 'ابل باي';

  @override
  String get proceed_to_payment => 'استكمال طلب الدفع';

  @override
  String get points_redeemed_successfully => 'تم استبدال النقاط بنجاح';

  @override
  String get reference_number => 'رقم المرجع';

  @override
  String get expiration_date => 'تاريخ انتهاء الصلاحية';

  @override
  String get your_points => 'نقاطك';

  @override
  String get value => 'القمية';

  @override
  String get coupon_code => 'الكود';

  @override
  String get click_this_button_when_order_is_completed => 'اضغط على الزر حال الإنتهاء من الطلب';

  @override
  String get couldnt_find_the_data_filling_file_try_again_later => 'لم نتمكن من العثور على ملف تعبئة البيانات. حاول مرة أخرى لاحقًا';

  @override
  String get there_are_no_substitutions => 'لا يوجد استبدالات';

  @override
  String get enter_coupon_code => 'ادخل كوبون الخصم';

  @override
  String get add_couppn_first => 'ادخل كود الخصم اولًا';

  @override
  String get coolants => 'المبردات';

  @override
  String get differentialFront => 'العجلات الأمامية';

  @override
  String get engine => 'المحرك';

  @override
  String get powerSteering => 'نظام القيادة المعززة';

  @override
  String get transferBox => 'صندوق النقل';

  @override
  String get automaticTransmission => 'ناقل حركة أوتوماتيكي';

  @override
  String get manualTransmission => 'ناقل الحركة اليدوي';

  @override
  String get differential => 'التفاضلي';

  @override
  String get show => 'إظهار';

  @override
  String get your_balance => 'رصيدك الحالي';

  @override
  String get hide => 'إخفاء';

  @override
  String get choose_best_oil => 'حدد ما هو الزيت اللي يناسب سيارتك';

  @override
  String get add_quick_order_hint => 'يمكنك أضافة طلب سريعاً من هنا';

  @override
  String get current => 'حالية';

  @override
  String get finished => 'إنتهت';

  @override
  String get user_code => 'كود المستخدم';

  @override
  String get scan_qr_announcement => '*توجيه : في حالة عدم قراء الباركود ابحث بكود المستخدم';

  @override
  String get start_scanning => 'ابدء المسح';

  @override
  String get barcode => 'باركود';

  @override
  String get enter_user_code => 'ادخل كود المستخدم';

  @override
  String get enter_user_code_hint => 'أطلب من المستخدم الكود الخاص به';

  @override
  String get basic_information => 'البيانات الأساسية';

  @override
  String get save => 'حفظ';

  @override
  String get arabic => 'العربية';

  @override
  String get english => 'الإنجليزية';

  @override
  String get urdu => 'اوردو';

  @override
  String get support => 'الدعم';

  @override
  String get finish_the_order => 'إنهاء الطلب';

  @override
  String get the_place_here_is_empty => 'المكان هنا خالي !';

  @override
  String get you_can_find_your_orders_here => 'بإمكانك العثور هنا على الطلبات الخاصة بك';

  @override
  String get you_can_find_your_notifications_here => 'بإمكانك العثور هنا على التنبيهات الخاصة بك';

  @override
  String get know_more => 'اعرف أكثر';

  @override
  String get map => 'خريطة';

  @override
  String get all_stores => 'جميع المحطات';

  @override
  String get near_stores => 'محطات بالقرب منك';

  @override
  String get skip => 'تخطي';

  @override
  String get you_can_no_contact => 'يمكنك الآن التواصل معنا من خلال';

  @override
  String get social_media => 'وسائل التواصل الإجتماعي';

  @override
  String get we_are_happy_to_contact_you => 'سعداء بالتواصل معكم والرد على جميع رسائلكم\n\nيومياً على مدار الـ 24 ساعة';

  @override
  String get app_language => 'لغة التطبيق';

  @override
  String get choose_app_language => 'الرجاء إختيار لغة التطبيق';

  @override
  String get all_stores2 => 'كل المحطات';

  @override
  String get addToCart => 'أضف إلى العربة';

  @override
  String get activeOrdersNow => 'تفعيل الطلب الان';

  @override
  String get accountReview => 'نظرة عامة على الحساب';

  @override
  String get lastOrders => 'الطلبات الأخيرة';

  @override
  String get services => 'الخدمات';

  @override
  String get teamProgress => 'معدل تقدم فريق العمل';

  @override
  String get soon => 'قريبا';

  @override
  String get main => 'العودة للرئيسية';

  @override
  String get rechargeWallet => 'شحن رصيدك';

  @override
  String get requiedAmount => 'القيمة المراد شحنها لرصيدك';

  @override
  String get carNumber => 'كتابة رقم لوحه المركبة';

  @override
  String get carNumberRequest => 'برجاء  إرفاق صورة المركبه';

  @override
  String get meterNumber => 'كتابة رقم عداد المركبة';

  @override
  String get meterNumberRequest => 'برجاء كتابة رقم عداد المسافة للمركبة و إرفاق صورة العداد';

  @override
  String get carNumberRequestImage => '  إرفاق صورة المركبه';

  @override
  String get meterNumberRequestImage => '  إرفاق صورة العداد';

  @override
  String get noPartners => 'لا يوجد شركاء';

  @override
  String get futureHubWallet => 'رصيد فيوتشرهب';

  @override
  String get e_Payment => 'يمكنك تصفح أقرب فرع لك أو لقائدي مركباتك بكل سهولة من خلال خريطة رقمية تتيح لك كافة الإختيارات';

  @override
  String get security => 'السهولة والأمان';

  @override
  String get securityDetails => 'التطبيق الأول في المملكة العربية السعودية لبيع الزيوت الخاصة بفيوتشرهب بأمان وسهولة';

  @override
  String get product => 'العديد من المنتجات';

  @override
  String get productDetails => 'العديد من المنتجات المميزة مع تخفيضات حصرية';

  @override
  String get distanceBetween => ' المسافه بين موقعك والمحطه';

  @override
  String get choiceBranch => 'اختار فرع';

  @override
  String get choiceVichele => 'اختار رقم المركبه ';

  @override
  String get vicheleNumber => ' عدد المركبات';

  @override
  String get paymentBy => 'الدفع عن طريق';

  @override
  String get bankTransfer => 'تحويل بنكي';

  @override
  String get ePayment => 'الدفع الإلكتروني';

  @override
  String get confirmRecharge => 'إتمام عملية الشحن';

  @override
  String get liter => 'لتر';

  @override
  String get literPrice => 'سعر التر';

  @override
  String get vicheleId => 'رقم المركبه';

  @override
  String get walletAmount => 'حد السحب اليومي';

  @override
  String get literCount => 'عدد الترات';

  @override
  String get fuelType => 'نوع الوقود';

  @override
  String get date => 'التاريخ';

  @override
  String get paymentType => 'طريقه الدفع';

  @override
  String get employeeBalance => 'رصيد موظف';

  @override
  String get successOpeartion => 'عمليه ناجحه';

  @override
  String get failedOpeartion => 'عمليه غير ناجحه';

  @override
  String get orderConfirmed => 'تم اتمام الطلب بنجاح';

  @override
  String get orderFailed => 'فشل في اتمام الطلب يرجي المحاوله لاحقا';

  @override
  String get dirctions => 'الاتجاهات';

  @override
  String get vicheleInfo => 'معلومات المركبة';

  @override
  String get driverList => 'قائمة السائقين';

  @override
  String get securityData => 'معاملات أمنة تدعم كافة وسائل الدفع الإلكتروني';

  @override
  String get orderData => 'جميع طلباتك السابقة تلقاها في طلباتك السابقة';

  @override
  String get serviceYou => 'وش نقدر نخدمك فيه اليوم ؟';

  @override
  String get fuelTime => 'حان وقت تعبئة الوقود؟';

  @override
  String get fuelTimeDes => 'حدد ما هو الوقود اللي يناسب سيارتك';

  @override
  String get nearbyStations => 'محطات قريبة منك';

  @override
  String get manager => 'فل يا مدير';

  @override
  String get fuel => 'الوقود';

  @override
  String get fuel_Balance => 'رصيد الوقود';

  @override
  String get vehicle_Change => 'تغيير المركبة';

  @override
  String get details => 'التفاصيل';

  @override
  String get show_content => 'رؤية المحتويات';

  @override
  String get services_provider => 'مزود الخدمة';

  @override
  String get services_details => 'تفاصيل الخدمه';

  @override
  String get payment_details => 'تفاصيل الدفع';

  @override
  String get services_balance => 'رصيد الخدمات';

  @override
  String get update_app => 'تحديث التطبيق ';

  @override
  String get update_require => 'يرجى تحديث التطبيق الى أحدث إصدار. ';

  @override
  String get update => 'تحديث';

  @override
  String get reports => 'التقارير';

  @override
  String get select_day => 'إختيار اليوم';

  @override
  String get order_count => 'عدد الطلبات';

  @override
  String get quantity_count => 'إجمالي الكمية';

  @override
  String get total_price => 'إجمالي السعر';

  @override
  String get today => 'اليوم';

  @override
  String get show_order => 'رؤية الطلبات';

  @override
  String get otp => 'الرمز المتغير';

  @override
  String get branches => 'كل الفروع';

  @override
  String get branches_near => 'فروع قريبه منك';

  @override
  String get futureHub => 'يعمل فريق عمل فيوتشر هب بكل جهده لإضافة الخدمات لك في اقرب وقت 👋';

  @override
  String get addToCartSuccess => 'تم الاضافه إلى العربة بنجاح';
}
