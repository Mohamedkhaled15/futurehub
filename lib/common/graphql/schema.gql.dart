class InputRegisterInput {
  factory InputRegisterInput({
    required String name,
    required String email,
    required String mobile,
    required String password,
    required String password_confirmation,
  }) =>
      InputRegisterInput._({
        r'name': name,
        r'email': email,
        r'mobile': mobile,
        r'password': password,
        r'password_confirmation': password_confirmation,
      });

  InputRegisterInput._(this._$data);

  factory InputRegisterInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$mobile = data['mobile'];
    result$data['mobile'] = (l$mobile as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$password_confirmation = data['password_confirmation'];
    result$data['password_confirmation'] = (l$password_confirmation as String);
    return InputRegisterInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get email => (_$data['email'] as String);

  String get mobile => (_$data['mobile'] as String);

  String get password => (_$data['password'] as String);

  String get password_confirmation =>
      (_$data['password_confirmation'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$email = email;
    result$data['email'] = l$email;
    final l$mobile = mobile;
    result$data['mobile'] = l$mobile;
    final l$password = password;
    result$data['password'] = l$password;
    final l$password_confirmation = password_confirmation;
    result$data['password_confirmation'] = l$password_confirmation;
    return result$data;
  }

  CopyWithInputRegisterInput<InputRegisterInput> get copyWith =>
      CopyWithInputRegisterInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputRegisterInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$password_confirmation = password_confirmation;
    final lOther$password_confirmation = other.password_confirmation;
    if (l$password_confirmation != lOther$password_confirmation) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$mobile = mobile;
    final l$password = password;
    final l$password_confirmation = password_confirmation;
    return Object.hashAll([
      l$name,
      l$email,
      l$mobile,
      l$password,
      l$password_confirmation,
    ]);
  }
}

abstract class CopyWithInputRegisterInput<TRes> {
  factory CopyWithInputRegisterInput(
    InputRegisterInput instance,
    TRes Function(InputRegisterInput) then,
  ) = _CopyWithImplInputRegisterInput;

  factory CopyWithInputRegisterInput.stub(TRes res) =
      _CopyWithStubImplInputRegisterInput;

  TRes call({
    String? name,
    String? email,
    String? mobile,
    String? password,
    String? password_confirmation,
  });
}

class _CopyWithImplInputRegisterInput<TRes>
    implements CopyWithInputRegisterInput<TRes> {
  _CopyWithImplInputRegisterInput(
    this._instance,
    this._then,
  );

  final InputRegisterInput _instance;

  final TRes Function(InputRegisterInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? mobile = _undefined,
    Object? password = _undefined,
    Object? password_confirmation = _undefined,
  }) =>
      _then(InputRegisterInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (email != _undefined && email != null) 'email': (email as String),
        if (mobile != _undefined && mobile != null)
          'mobile': (mobile as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (password_confirmation != _undefined &&
            password_confirmation != null)
          'password_confirmation': (password_confirmation as String),
      }));
}

class _CopyWithStubImplInputRegisterInput<TRes>
    implements CopyWithInputRegisterInput<TRes> {
  _CopyWithStubImplInputRegisterInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? mobile,
    String? password,
    String? password_confirmation,
  }) =>
      _res;
}

class InputLoginInput {
  factory InputLoginInput({
    required String mobile,
    required String password,
  }) =>
      InputLoginInput._({
        r'mobile': mobile,
        r'password': password,
      });

  InputLoginInput._(this._$data);

  factory InputLoginInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mobile = data['mobile'];
    result$data['mobile'] = (l$mobile as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    return InputLoginInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mobile => (_$data['mobile'] as String);

  String get password => (_$data['password'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mobile = mobile;
    result$data['mobile'] = l$mobile;
    final l$password = password;
    result$data['password'] = l$password;
    return result$data;
  }

  CopyWithInputLoginInput<InputLoginInput> get copyWith =>
      CopyWithInputLoginInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputLoginInput) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mobile = mobile;
    final l$password = password;
    return Object.hashAll([
      l$mobile,
      l$password,
    ]);
  }
}

abstract class CopyWithInputLoginInput<TRes> {
  factory CopyWithInputLoginInput(
    InputLoginInput instance,
    TRes Function(InputLoginInput) then,
  ) = _CopyWithImplInputLoginInput;

  factory CopyWithInputLoginInput.stub(TRes res) =
      _CopyWithStubImplInputLoginInput;

  TRes call({
    String? mobile,
    String? password,
  });
}

class _CopyWithImplInputLoginInput<TRes>
    implements CopyWithInputLoginInput<TRes> {
  _CopyWithImplInputLoginInput(
    this._instance,
    this._then,
  );

  final InputLoginInput _instance;

  final TRes Function(InputLoginInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobile = _undefined,
    Object? password = _undefined,
  }) =>
      _then(InputLoginInput._({
        ..._instance._$data,
        if (mobile != _undefined && mobile != null)
          'mobile': (mobile as String),
        if (password != _undefined && password != null)
          'password': (password as String),
      }));
}

class _CopyWithStubImplInputLoginInput<TRes>
    implements CopyWithInputLoginInput<TRes> {
  _CopyWithStubImplInputLoginInput(this._res);

  TRes _res;

  call({
    String? mobile,
    String? password,
  }) =>
      _res;
}

class InputValidateMobileInput {
  factory InputValidateMobileInput({required String mobile}) =>
      InputValidateMobileInput._({
        r'mobile': mobile,
      });

  InputValidateMobileInput._(this._$data);

  factory InputValidateMobileInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mobile = data['mobile'];
    result$data['mobile'] = (l$mobile as String);
    return InputValidateMobileInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mobile => (_$data['mobile'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mobile = mobile;
    result$data['mobile'] = l$mobile;
    return result$data;
  }

  CopyWithInputValidateMobileInput<InputValidateMobileInput> get copyWith =>
      CopyWithInputValidateMobileInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputValidateMobileInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (l$mobile != lOther$mobile) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mobile = mobile;
    return Object.hashAll([l$mobile]);
  }
}

abstract class CopyWithInputValidateMobileInput<TRes> {
  factory CopyWithInputValidateMobileInput(
    InputValidateMobileInput instance,
    TRes Function(InputValidateMobileInput) then,
  ) = _CopyWithImplInputValidateMobileInput;

  factory CopyWithInputValidateMobileInput.stub(TRes res) =
      _CopyWithStubImplInputValidateMobileInput;

  TRes call({String? mobile});
}

class _CopyWithImplInputValidateMobileInput<TRes>
    implements CopyWithInputValidateMobileInput<TRes> {
  _CopyWithImplInputValidateMobileInput(
    this._instance,
    this._then,
  );

  final InputValidateMobileInput _instance;

  final TRes Function(InputValidateMobileInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? mobile = _undefined}) => _then(InputValidateMobileInput._({
        ..._instance._$data,
        if (mobile != _undefined && mobile != null)
          'mobile': (mobile as String),
      }));
}

class _CopyWithStubImplInputValidateMobileInput<TRes>
    implements CopyWithInputValidateMobileInput<TRes> {
  _CopyWithStubImplInputValidateMobileInput(this._res);

  TRes _res;

  call({String? mobile}) => _res;
}

class InputChangeLanguageInput {
  factory InputChangeLanguageInput({required String lang}) =>
      InputChangeLanguageInput._({
        r'lang': lang,
      });

  InputChangeLanguageInput._(this._$data);

  factory InputChangeLanguageInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$lang = data['lang'];
    result$data['lang'] = (l$lang as String);
    return InputChangeLanguageInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get lang => (_$data['lang'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$lang = lang;
    result$data['lang'] = l$lang;
    return result$data;
  }

  CopyWithInputChangeLanguageInput<InputChangeLanguageInput> get copyWith =>
      CopyWithInputChangeLanguageInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputChangeLanguageInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$lang = lang;
    final lOther$lang = other.lang;
    if (l$lang != lOther$lang) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$lang = lang;
    return Object.hashAll([l$lang]);
  }
}

abstract class CopyWithInputChangeLanguageInput<TRes> {
  factory CopyWithInputChangeLanguageInput(
    InputChangeLanguageInput instance,
    TRes Function(InputChangeLanguageInput) then,
  ) = _CopyWithImplInputChangeLanguageInput;

  factory CopyWithInputChangeLanguageInput.stub(TRes res) =
      _CopyWithStubImplInputChangeLanguageInput;

  TRes call({String? lang});
}

class _CopyWithImplInputChangeLanguageInput<TRes>
    implements CopyWithInputChangeLanguageInput<TRes> {
  _CopyWithImplInputChangeLanguageInput(
    this._instance,
    this._then,
  );

  final InputChangeLanguageInput _instance;

  final TRes Function(InputChangeLanguageInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? lang = _undefined}) => _then(InputChangeLanguageInput._({
        ..._instance._$data,
        if (lang != _undefined && lang != null) 'lang': (lang as String),
      }));
}

class _CopyWithStubImplInputChangeLanguageInput<TRes>
    implements CopyWithInputChangeLanguageInput<TRes> {
  _CopyWithStubImplInputChangeLanguageInput(this._res);

  TRes _res;

  call({String? lang}) => _res;
}

class InputUpdateProfileInput {
  factory InputUpdateProfileInput({
    required String name,
    required String email,
    required String mobile,
    String? gender,
    String? birth_date,
  }) =>
      InputUpdateProfileInput._({
        r'name': name,
        r'email': email,
        r'mobile': mobile,
        if (gender != null) r'gender': gender,
        if (birth_date != null) r'birth_date': birth_date,
      });

  InputUpdateProfileInput._(this._$data);

  factory InputUpdateProfileInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$name = data['name'];
    result$data['name'] = (l$name as String);
    final l$email = data['email'];
    result$data['email'] = (l$email as String);
    final l$mobile = data['mobile'];
    result$data['mobile'] = (l$mobile as String);
    if (data.containsKey('gender')) {
      final l$gender = data['gender'];
      result$data['gender'] = (l$gender as String?);
    }
    if (data.containsKey('birth_date')) {
      final l$birth_date = data['birth_date'];
      result$data['birth_date'] = (l$birth_date as String?);
    }
    return InputUpdateProfileInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get name => (_$data['name'] as String);

  String get email => (_$data['email'] as String);

  String get mobile => (_$data['mobile'] as String);

  String? get gender => (_$data['gender'] as String?);

  String? get birth_date => (_$data['birth_date'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$name = name;
    result$data['name'] = l$name;
    final l$email = email;
    result$data['email'] = l$email;
    final l$mobile = mobile;
    result$data['mobile'] = l$mobile;
    if (_$data.containsKey('gender')) {
      final l$gender = gender;
      result$data['gender'] = l$gender;
    }
    if (_$data.containsKey('birth_date')) {
      final l$birth_date = birth_date;
      result$data['birth_date'] = l$birth_date;
    }
    return result$data;
  }

  CopyWithInputUpdateProfileInput<InputUpdateProfileInput> get copyWith =>
      CopyWithInputUpdateProfileInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputUpdateProfileInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (l$email != lOther$email) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$gender = gender;
    final lOther$gender = other.gender;
    if (_$data.containsKey('gender') != other._$data.containsKey('gender')) {
      return false;
    }
    if (l$gender != lOther$gender) {
      return false;
    }
    final l$birth_date = birth_date;
    final lOther$birth_date = other.birth_date;
    if (_$data.containsKey('birth_date') !=
        other._$data.containsKey('birth_date')) {
      return false;
    }
    if (l$birth_date != lOther$birth_date) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$mobile = mobile;
    final l$gender = gender;
    final l$birth_date = birth_date;
    return Object.hashAll([
      l$name,
      l$email,
      l$mobile,
      _$data.containsKey('gender') ? l$gender : const {},
      _$data.containsKey('birth_date') ? l$birth_date : const {},
    ]);
  }
}

abstract class CopyWithInputUpdateProfileInput<TRes> {
  factory CopyWithInputUpdateProfileInput(
    InputUpdateProfileInput instance,
    TRes Function(InputUpdateProfileInput) then,
  ) = _CopyWithImplInputUpdateProfileInput;

  factory CopyWithInputUpdateProfileInput.stub(TRes res) =
      _CopyWithStubImplInputUpdateProfileInput;

  TRes call({
    String? name,
    String? email,
    String? mobile,
    String? gender,
    String? birth_date,
  });
}

class _CopyWithImplInputUpdateProfileInput<TRes>
    implements CopyWithInputUpdateProfileInput<TRes> {
  _CopyWithImplInputUpdateProfileInput(
    this._instance,
    this._then,
  );

  final InputUpdateProfileInput _instance;

  final TRes Function(InputUpdateProfileInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? mobile = _undefined,
    Object? gender = _undefined,
    Object? birth_date = _undefined,
  }) =>
      _then(InputUpdateProfileInput._({
        ..._instance._$data,
        if (name != _undefined && name != null) 'name': (name as String),
        if (email != _undefined && email != null) 'email': (email as String),
        if (mobile != _undefined && mobile != null)
          'mobile': (mobile as String),
        if (gender != _undefined) 'gender': (gender as String?),
        if (birth_date != _undefined) 'birth_date': (birth_date as String?),
      }));
}

class _CopyWithStubImplInputUpdateProfileInput<TRes>
    implements CopyWithInputUpdateProfileInput<TRes> {
  _CopyWithStubImplInputUpdateProfileInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? mobile,
    String? gender,
    String? birth_date,
  }) =>
      _res;
}

class InputUpdateProfilePhotoInput {
  factory InputUpdateProfilePhotoInput({required String image}) =>
      InputUpdateProfilePhotoInput._({
        r'image': image,
      });

  InputUpdateProfilePhotoInput._(this._$data);

  factory InputUpdateProfilePhotoInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$image = data['image'];
    result$data['image'] = (l$image as String);
    return InputUpdateProfilePhotoInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get image => (_$data['image'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$image = image;
    result$data['image'] = l$image;
    return result$data;
  }

  CopyWithInputUpdateProfilePhotoInput<InputUpdateProfilePhotoInput>
      get copyWith => CopyWithInputUpdateProfilePhotoInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputUpdateProfilePhotoInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$image = image;
    return Object.hashAll([l$image]);
  }
}

abstract class CopyWithInputUpdateProfilePhotoInput<TRes> {
  factory CopyWithInputUpdateProfilePhotoInput(
    InputUpdateProfilePhotoInput instance,
    TRes Function(InputUpdateProfilePhotoInput) then,
  ) = _CopyWithImplInputUpdateProfilePhotoInput;

  factory CopyWithInputUpdateProfilePhotoInput.stub(TRes res) =
      _CopyWithStubImplInputUpdateProfilePhotoInput;

  TRes call({String? image});
}

class _CopyWithImplInputUpdateProfilePhotoInput<TRes>
    implements CopyWithInputUpdateProfilePhotoInput<TRes> {
  _CopyWithImplInputUpdateProfilePhotoInput(
    this._instance,
    this._then,
  );

  final InputUpdateProfilePhotoInput _instance;

  final TRes Function(InputUpdateProfilePhotoInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? image = _undefined}) =>
      _then(InputUpdateProfilePhotoInput._({
        ..._instance._$data,
        if (image != _undefined && image != null) 'image': (image as String),
      }));
}

class _CopyWithStubImplInputUpdateProfilePhotoInput<TRes>
    implements CopyWithInputUpdateProfilePhotoInput<TRes> {
  _CopyWithStubImplInputUpdateProfilePhotoInput(this._res);

  TRes _res;

  call({String? image}) => _res;
}

class InputUpdateFCMTokenInput {
  factory InputUpdateFCMTokenInput({
    required String fcm_token,
    required String device_id,
    required String version,
    required String platform,
  }) =>
      InputUpdateFCMTokenInput._({
        r'fcm_token': fcm_token,
        r'device_id': device_id,
        r'version': version,
        r'platform': platform,
      });

  InputUpdateFCMTokenInput._(this._$data);

  factory InputUpdateFCMTokenInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$fcm_token = data['fcm_token'];
    result$data['fcm_token'] = (l$fcm_token as String);
    final l$device_id = data['device_id'];
    result$data['device_id'] = (l$device_id as String);
    final l$version = data['version'];
    result$data['version'] = (l$version as String);
    final l$platform = data['platform'];
    result$data['platform'] = (l$platform as String);
    return InputUpdateFCMTokenInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get fcm_token => (_$data['fcm_token'] as String);

  String get device_id => (_$data['device_id'] as String);

  String get version => (_$data['version'] as String);

  String get platform => (_$data['platform'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$fcm_token = fcm_token;
    result$data['fcm_token'] = l$fcm_token;
    final l$device_id = device_id;
    result$data['device_id'] = l$device_id;
    final l$version = version;
    result$data['version'] = l$version;
    final l$platform = platform;
    result$data['platform'] = l$platform;
    return result$data;
  }

  CopyWithInputUpdateFCMTokenInput<InputUpdateFCMTokenInput> get copyWith =>
      CopyWithInputUpdateFCMTokenInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputUpdateFCMTokenInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$fcm_token = fcm_token;
    final lOther$fcm_token = other.fcm_token;
    if (l$fcm_token != lOther$fcm_token) {
      return false;
    }
    final l$device_id = device_id;
    final lOther$device_id = other.device_id;
    if (l$device_id != lOther$device_id) {
      return false;
    }
    final l$version = version;
    final lOther$version = other.version;
    if (l$version != lOther$version) {
      return false;
    }
    final l$platform = platform;
    final lOther$platform = other.platform;
    if (l$platform != lOther$platform) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$fcm_token = fcm_token;
    final l$device_id = device_id;
    final l$version = version;
    final l$platform = platform;
    return Object.hashAll([
      l$fcm_token,
      l$device_id,
      l$version,
      l$platform,
    ]);
  }
}

abstract class CopyWithInputUpdateFCMTokenInput<TRes> {
  factory CopyWithInputUpdateFCMTokenInput(
    InputUpdateFCMTokenInput instance,
    TRes Function(InputUpdateFCMTokenInput) then,
  ) = _CopyWithImplInputUpdateFCMTokenInput;

  factory CopyWithInputUpdateFCMTokenInput.stub(TRes res) =
      _CopyWithStubImplInputUpdateFCMTokenInput;

  TRes call({
    String? fcm_token,
    String? device_id,
    String? version,
    String? platform,
  });
}

class _CopyWithImplInputUpdateFCMTokenInput<TRes>
    implements CopyWithInputUpdateFCMTokenInput<TRes> {
  _CopyWithImplInputUpdateFCMTokenInput(
    this._instance,
    this._then,
  );

  final InputUpdateFCMTokenInput _instance;

  final TRes Function(InputUpdateFCMTokenInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? fcm_token = _undefined,
    Object? device_id = _undefined,
    Object? version = _undefined,
    Object? platform = _undefined,
  }) =>
      _then(InputUpdateFCMTokenInput._({
        ..._instance._$data,
        if (fcm_token != _undefined && fcm_token != null)
          'fcm_token': (fcm_token as String),
        if (device_id != _undefined && device_id != null)
          'device_id': (device_id as String),
        if (version != _undefined && version != null)
          'version': (version as String),
        if (platform != _undefined && platform != null)
          'platform': (platform as String),
      }));
}

class _CopyWithStubImplInputUpdateFCMTokenInput<TRes>
    implements CopyWithInputUpdateFCMTokenInput<TRes> {
  _CopyWithStubImplInputUpdateFCMTokenInput(this._res);

  TRes _res;

  call({
    String? fcm_token,
    String? device_id,
    String? version,
    String? platform,
  }) =>
      _res;
}

class InputForgotPasswordInput {
  factory InputForgotPasswordInput({
    required String mobile,
    EnumVerifyEnum? type,
  }) =>
      InputForgotPasswordInput._({
        r'mobile': mobile,
        if (type != null) r'type': type,
      });

  InputForgotPasswordInput._(this._$data);

  factory InputForgotPasswordInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mobile = data['mobile'];
    result$data['mobile'] = (l$mobile as String);
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJsonEnumVerifyEnum((l$type as String));
    }
    return InputForgotPasswordInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mobile => (_$data['mobile'] as String);

  EnumVerifyEnum? get type => (_$data['type'] as EnumVerifyEnum?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mobile = mobile;
    result$data['mobile'] = l$mobile;
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJsonEnumVerifyEnum(l$type);
    }
    return result$data;
  }

  CopyWithInputForgotPasswordInput<InputForgotPasswordInput> get copyWith =>
      CopyWithInputForgotPasswordInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputForgotPasswordInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mobile = mobile;
    final l$type = type;
    return Object.hashAll([
      l$mobile,
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWithInputForgotPasswordInput<TRes> {
  factory CopyWithInputForgotPasswordInput(
    InputForgotPasswordInput instance,
    TRes Function(InputForgotPasswordInput) then,
  ) = _CopyWithImplInputForgotPasswordInput;

  factory CopyWithInputForgotPasswordInput.stub(TRes res) =
      _CopyWithStubImplInputForgotPasswordInput;

  TRes call({
    String? mobile,
    EnumVerifyEnum? type,
  });
}

class _CopyWithImplInputForgotPasswordInput<TRes>
    implements CopyWithInputForgotPasswordInput<TRes> {
  _CopyWithImplInputForgotPasswordInput(
    this._instance,
    this._then,
  );

  final InputForgotPasswordInput _instance;

  final TRes Function(InputForgotPasswordInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobile = _undefined,
    Object? type = _undefined,
  }) =>
      _then(InputForgotPasswordInput._({
        ..._instance._$data,
        if (mobile != _undefined && mobile != null)
          'mobile': (mobile as String),
        if (type != _undefined) 'type': (type as EnumVerifyEnum?),
      }));
}

class _CopyWithStubImplInputForgotPasswordInput<TRes>
    implements CopyWithInputForgotPasswordInput<TRes> {
  _CopyWithStubImplInputForgotPasswordInput(this._res);

  TRes _res;

  call({
    String? mobile,
    EnumVerifyEnum? type,
  }) =>
      _res;
}

class InputForgotPasswordCodeInput {
  factory InputForgotPasswordCodeInput({
    required String code,
    required String mobile,
    EnumVerifyEnum? type,
  }) =>
      InputForgotPasswordCodeInput._({
        r'code': code,
        r'mobile': mobile,
        if (type != null) r'type': type,
      });

  InputForgotPasswordCodeInput._(this._$data);

  factory InputForgotPasswordCodeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    final l$mobile = data['mobile'];
    result$data['mobile'] = (l$mobile as String);
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJsonEnumVerifyEnum((l$type as String));
    }
    return InputForgotPasswordCodeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  String get mobile => (_$data['mobile'] as String);

  EnumVerifyEnum? get type => (_$data['type'] as EnumVerifyEnum?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    final l$mobile = mobile;
    result$data['mobile'] = l$mobile;
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJsonEnumVerifyEnum(l$type);
    }
    return result$data;
  }

  CopyWithInputForgotPasswordCodeInput<InputForgotPasswordCodeInput>
      get copyWith => CopyWithInputForgotPasswordCodeInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputForgotPasswordCodeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$mobile = mobile;
    final l$type = type;
    return Object.hashAll([
      l$code,
      l$mobile,
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWithInputForgotPasswordCodeInput<TRes> {
  factory CopyWithInputForgotPasswordCodeInput(
    InputForgotPasswordCodeInput instance,
    TRes Function(InputForgotPasswordCodeInput) then,
  ) = _CopyWithImplInputForgotPasswordCodeInput;

  factory CopyWithInputForgotPasswordCodeInput.stub(TRes res) =
      _CopyWithStubImplInputForgotPasswordCodeInput;

  TRes call({
    String? code,
    String? mobile,
    EnumVerifyEnum? type,
  });
}

class _CopyWithImplInputForgotPasswordCodeInput<TRes>
    implements CopyWithInputForgotPasswordCodeInput<TRes> {
  _CopyWithImplInputForgotPasswordCodeInput(
    this._instance,
    this._then,
  );

  final InputForgotPasswordCodeInput _instance;

  final TRes Function(InputForgotPasswordCodeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? mobile = _undefined,
    Object? type = _undefined,
  }) =>
      _then(InputForgotPasswordCodeInput._({
        ..._instance._$data,
        if (code != _undefined && code != null) 'code': (code as String),
        if (mobile != _undefined && mobile != null)
          'mobile': (mobile as String),
        if (type != _undefined) 'type': (type as EnumVerifyEnum?),
      }));
}

class _CopyWithStubImplInputForgotPasswordCodeInput<TRes>
    implements CopyWithInputForgotPasswordCodeInput<TRes> {
  _CopyWithStubImplInputForgotPasswordCodeInput(this._res);

  TRes _res;

  call({
    String? code,
    String? mobile,
    EnumVerifyEnum? type,
  }) =>
      _res;
}

class InputResetPasswordByCodeInput {
  factory InputResetPasswordByCodeInput({
    required String mobile,
    required String code,
    required String password,
    required String password_confirmation,
    EnumVerifyEnum? type,
  }) =>
      InputResetPasswordByCodeInput._({
        r'mobile': mobile,
        r'code': code,
        r'password': password,
        r'password_confirmation': password_confirmation,
        if (type != null) r'type': type,
      });

  InputResetPasswordByCodeInput._(this._$data);

  factory InputResetPasswordByCodeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$mobile = data['mobile'];
    result$data['mobile'] = (l$mobile as String);
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$password_confirmation = data['password_confirmation'];
    result$data['password_confirmation'] = (l$password_confirmation as String);
    if (data.containsKey('type')) {
      final l$type = data['type'];
      result$data['type'] =
          l$type == null ? null : fromJsonEnumVerifyEnum((l$type as String));
    }
    return InputResetPasswordByCodeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get mobile => (_$data['mobile'] as String);

  String get code => (_$data['code'] as String);

  String get password => (_$data['password'] as String);

  String get password_confirmation =>
      (_$data['password_confirmation'] as String);

  EnumVerifyEnum? get type => (_$data['type'] as EnumVerifyEnum?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$mobile = mobile;
    result$data['mobile'] = l$mobile;
    final l$code = code;
    result$data['code'] = l$code;
    final l$password = password;
    result$data['password'] = l$password;
    final l$password_confirmation = password_confirmation;
    result$data['password_confirmation'] = l$password_confirmation;
    if (_$data.containsKey('type')) {
      final l$type = type;
      result$data['type'] =
          l$type == null ? null : toJsonEnumVerifyEnum(l$type);
    }
    return result$data;
  }

  CopyWithInputResetPasswordByCodeInput<InputResetPasswordByCodeInput>
      get copyWith => CopyWithInputResetPasswordByCodeInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputResetPasswordByCodeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$password_confirmation = password_confirmation;
    final lOther$password_confirmation = other.password_confirmation;
    if (l$password_confirmation != lOther$password_confirmation) {
      return false;
    }
    final l$type = type;
    final lOther$type = other.type;
    if (_$data.containsKey('type') != other._$data.containsKey('type')) {
      return false;
    }
    if (l$type != lOther$type) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$mobile = mobile;
    final l$code = code;
    final l$password = password;
    final l$password_confirmation = password_confirmation;
    final l$type = type;
    return Object.hashAll([
      l$mobile,
      l$code,
      l$password,
      l$password_confirmation,
      _$data.containsKey('type') ? l$type : const {},
    ]);
  }
}

abstract class CopyWithInputResetPasswordByCodeInput<TRes> {
  factory CopyWithInputResetPasswordByCodeInput(
    InputResetPasswordByCodeInput instance,
    TRes Function(InputResetPasswordByCodeInput) then,
  ) = _CopyWithImplInputResetPasswordByCodeInput;

  factory CopyWithInputResetPasswordByCodeInput.stub(TRes res) =
      _CopyWithStubImplInputResetPasswordByCodeInput;

  TRes call({
    String? mobile,
    String? code,
    String? password,
    String? password_confirmation,
    EnumVerifyEnum? type,
  });
}

class _CopyWithImplInputResetPasswordByCodeInput<TRes>
    implements CopyWithInputResetPasswordByCodeInput<TRes> {
  _CopyWithImplInputResetPasswordByCodeInput(
    this._instance,
    this._then,
  );

  final InputResetPasswordByCodeInput _instance;

  final TRes Function(InputResetPasswordByCodeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? mobile = _undefined,
    Object? code = _undefined,
    Object? password = _undefined,
    Object? password_confirmation = _undefined,
    Object? type = _undefined,
  }) =>
      _then(InputResetPasswordByCodeInput._({
        ..._instance._$data,
        if (mobile != _undefined && mobile != null)
          'mobile': (mobile as String),
        if (code != _undefined && code != null) 'code': (code as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (password_confirmation != _undefined &&
            password_confirmation != null)
          'password_confirmation': (password_confirmation as String),
        if (type != _undefined) 'type': (type as EnumVerifyEnum?),
      }));
}

class _CopyWithStubImplInputResetPasswordByCodeInput<TRes>
    implements CopyWithInputResetPasswordByCodeInput<TRes> {
  _CopyWithStubImplInputResetPasswordByCodeInput(this._res);

  TRes _res;

  call({
    String? mobile,
    String? code,
    String? password,
    String? password_confirmation,
    EnumVerifyEnum? type,
  }) =>
      _res;
}

class InputUpdatePasswordInput {
  factory InputUpdatePasswordInput({
    required String old_password,
    required String password,
    required String password_confirmation,
  }) =>
      InputUpdatePasswordInput._({
        r'old_password': old_password,
        r'password': password,
        r'password_confirmation': password_confirmation,
      });

  InputUpdatePasswordInput._(this._$data);

  factory InputUpdatePasswordInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$old_password = data['old_password'];
    result$data['old_password'] = (l$old_password as String);
    final l$password = data['password'];
    result$data['password'] = (l$password as String);
    final l$password_confirmation = data['password_confirmation'];
    result$data['password_confirmation'] = (l$password_confirmation as String);
    return InputUpdatePasswordInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String get old_password => (_$data['old_password'] as String);

  String get password => (_$data['password'] as String);

  String get password_confirmation =>
      (_$data['password_confirmation'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$old_password = old_password;
    result$data['old_password'] = l$old_password;
    final l$password = password;
    result$data['password'] = l$password;
    final l$password_confirmation = password_confirmation;
    result$data['password_confirmation'] = l$password_confirmation;
    return result$data;
  }

  CopyWithInputUpdatePasswordInput<InputUpdatePasswordInput> get copyWith =>
      CopyWithInputUpdatePasswordInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputUpdatePasswordInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$old_password = old_password;
    final lOther$old_password = other.old_password;
    if (l$old_password != lOther$old_password) {
      return false;
    }
    final l$password = password;
    final lOther$password = other.password;
    if (l$password != lOther$password) {
      return false;
    }
    final l$password_confirmation = password_confirmation;
    final lOther$password_confirmation = other.password_confirmation;
    if (l$password_confirmation != lOther$password_confirmation) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$old_password = old_password;
    final l$password = password;
    final l$password_confirmation = password_confirmation;
    return Object.hashAll([
      l$old_password,
      l$password,
      l$password_confirmation,
    ]);
  }
}

abstract class CopyWithInputUpdatePasswordInput<TRes> {
  factory CopyWithInputUpdatePasswordInput(
    InputUpdatePasswordInput instance,
    TRes Function(InputUpdatePasswordInput) then,
  ) = _CopyWithImplInputUpdatePasswordInput;

  factory CopyWithInputUpdatePasswordInput.stub(TRes res) =
      _CopyWithStubImplInputUpdatePasswordInput;

  TRes call({
    String? old_password,
    String? password,
    String? password_confirmation,
  });
}

class _CopyWithImplInputUpdatePasswordInput<TRes>
    implements CopyWithInputUpdatePasswordInput<TRes> {
  _CopyWithImplInputUpdatePasswordInput(
    this._instance,
    this._then,
  );

  final InputUpdatePasswordInput _instance;

  final TRes Function(InputUpdatePasswordInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? old_password = _undefined,
    Object? password = _undefined,
    Object? password_confirmation = _undefined,
  }) =>
      _then(InputUpdatePasswordInput._({
        ..._instance._$data,
        if (old_password != _undefined && old_password != null)
          'old_password': (old_password as String),
        if (password != _undefined && password != null)
          'password': (password as String),
        if (password_confirmation != _undefined &&
            password_confirmation != null)
          'password_confirmation': (password_confirmation as String),
      }));
}

class _CopyWithStubImplInputUpdatePasswordInput<TRes>
    implements CopyWithInputUpdatePasswordInput<TRes> {
  _CopyWithStubImplInputUpdatePasswordInput(this._res);

  TRes _res;

  call({
    String? old_password,
    String? password,
    String? password_confirmation,
  }) =>
      _res;
}

class InputsendFeedbackInput {
  factory InputsendFeedbackInput({
    String? name,
    String? email,
    String? mobile,
    String? message,
  }) =>
      InputsendFeedbackInput._({
        if (name != null) r'name': name,
        if (email != null) r'email': email,
        if (mobile != null) r'mobile': mobile,
        if (message != null) r'message': message,
      });

  InputsendFeedbackInput._(this._$data);

  factory InputsendFeedbackInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('mobile')) {
      final l$mobile = data['mobile'];
      result$data['mobile'] = (l$mobile as String?);
    }
    if (data.containsKey('message')) {
      final l$message = data['message'];
      result$data['message'] = (l$message as String?);
    }
    return InputsendFeedbackInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get mobile => (_$data['mobile'] as String?);

  String? get message => (_$data['message'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('mobile')) {
      final l$mobile = mobile;
      result$data['mobile'] = l$mobile;
    }
    if (_$data.containsKey('message')) {
      final l$message = message;
      result$data['message'] = l$message;
    }
    return result$data;
  }

  CopyWithInputsendFeedbackInput<InputsendFeedbackInput> get copyWith =>
      CopyWithInputsendFeedbackInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputsendFeedbackInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (_$data.containsKey('mobile') != other._$data.containsKey('mobile')) {
      return false;
    }
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$message = message;
    final lOther$message = other.message;
    if (_$data.containsKey('message') != other._$data.containsKey('message')) {
      return false;
    }
    if (l$message != lOther$message) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$mobile = mobile;
    final l$message = message;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('mobile') ? l$mobile : const {},
      _$data.containsKey('message') ? l$message : const {},
    ]);
  }
}

abstract class CopyWithInputsendFeedbackInput<TRes> {
  factory CopyWithInputsendFeedbackInput(
    InputsendFeedbackInput instance,
    TRes Function(InputsendFeedbackInput) then,
  ) = _CopyWithImplInputsendFeedbackInput;

  factory CopyWithInputsendFeedbackInput.stub(TRes res) =
      _CopyWithStubImplInputsendFeedbackInput;

  TRes call({
    String? name,
    String? email,
    String? mobile,
    String? message,
  });
}

class _CopyWithImplInputsendFeedbackInput<TRes>
    implements CopyWithInputsendFeedbackInput<TRes> {
  _CopyWithImplInputsendFeedbackInput(
    this._instance,
    this._then,
  );

  final InputsendFeedbackInput _instance;

  final TRes Function(InputsendFeedbackInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? mobile = _undefined,
    Object? message = _undefined,
  }) =>
      _then(InputsendFeedbackInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (email != _undefined) 'email': (email as String?),
        if (mobile != _undefined) 'mobile': (mobile as String?),
        if (message != _undefined) 'message': (message as String?),
      }));
}

class _CopyWithStubImplInputsendFeedbackInput<TRes>
    implements CopyWithInputsendFeedbackInput<TRes> {
  _CopyWithStubImplInputsendFeedbackInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? mobile,
    String? message,
  }) =>
      _res;
}

class InputCreateOrder {
  factory InputCreateOrder({
    required List<InputProductItem> products,
    String? coupon,
    int? branch,
    required int puncher,
  }) =>
      InputCreateOrder._({
        r'products': products,
        if (coupon != null) r'coupon': coupon,
        if (branch != null) r'branch': branch,
        r'puncher': puncher,
      });

  InputCreateOrder._(this._$data);

  factory InputCreateOrder.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$products = data['products'];
    result$data['products'] = (l$products as List<dynamic>)
        .map((e) => InputProductItem.fromJson((e as Map<String, dynamic>)))
        .toList();
    if (data.containsKey('coupon')) {
      final l$coupon = data['coupon'];
      result$data['coupon'] = (l$coupon as String?);
    }
    if (data.containsKey('branch')) {
      final l$branch = data['branch'];
      result$data['branch'] = (l$branch as int?);
    }
    final l$puncher = data['puncher'];
    result$data['puncher'] = (l$puncher as int);
    return InputCreateOrder._(result$data);
  }

  Map<String, dynamic> _$data;

  List<InputProductItem> get products =>
      (_$data['products'] as List<InputProductItem>);

  String? get coupon => (_$data['coupon'] as String?);

  int? get branch => (_$data['branch'] as int?);

  int get puncher => (_$data['puncher'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$products = products;
    result$data['products'] = l$products.map((e) => e.toJson()).toList();
    if (_$data.containsKey('coupon')) {
      final l$coupon = coupon;
      result$data['coupon'] = l$coupon;
    }
    if (_$data.containsKey('branch')) {
      final l$branch = branch;
      result$data['branch'] = l$branch;
    }
    final l$puncher = puncher;
    result$data['puncher'] = l$puncher;
    return result$data;
  }

  CopyWithInputCreateOrder<InputCreateOrder> get copyWith =>
      CopyWithInputCreateOrder(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputCreateOrder) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$products = products;
    final lOther$products = other.products;
    if (l$products.length != lOther$products.length) {
      return false;
    }
    for (int i = 0; i < l$products.length; i++) {
      final l$products$entry = l$products[i];
      final lOther$products$entry = lOther$products[i];
      if (l$products$entry != lOther$products$entry) {
        return false;
      }
    }
    final l$coupon = coupon;
    final lOther$coupon = other.coupon;
    if (_$data.containsKey('coupon') != other._$data.containsKey('coupon')) {
      return false;
    }
    if (l$coupon != lOther$coupon) {
      return false;
    }
    final l$branch = branch;
    final lOther$branch = other.branch;
    if (_$data.containsKey('branch') != other._$data.containsKey('branch')) {
      return false;
    }
    if (l$branch != lOther$branch) {
      return false;
    }
    final l$puncher = puncher;
    final lOther$puncher = other.puncher;
    if (l$puncher != lOther$puncher) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$products = products;
    final l$coupon = coupon;
    final l$branch = branch;
    final l$puncher = puncher;
    return Object.hashAll([
      Object.hashAll(l$products.map((v) => v)),
      _$data.containsKey('coupon') ? l$coupon : const {},
      _$data.containsKey('branch') ? l$branch : const {},
      l$puncher,
    ]);
  }
}

abstract class CopyWithInputCreateOrder<TRes> {
  factory CopyWithInputCreateOrder(
    InputCreateOrder instance,
    TRes Function(InputCreateOrder) then,
  ) = _CopyWithImplInputCreateOrder;

  factory CopyWithInputCreateOrder.stub(TRes res) =
      _CopyWithStubImplInputCreateOrder;

  TRes call({
    List<InputProductItem>? products,
    String? coupon,
    int? branch,
    int? puncher,
  });
  TRes products(
      Iterable<InputProductItem> Function(
              Iterable<CopyWithInputProductItem<InputProductItem>>)
          _fn);
}

class _CopyWithImplInputCreateOrder<TRes>
    implements CopyWithInputCreateOrder<TRes> {
  _CopyWithImplInputCreateOrder(
    this._instance,
    this._then,
  );

  final InputCreateOrder _instance;

  final TRes Function(InputCreateOrder) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? products = _undefined,
    Object? coupon = _undefined,
    Object? branch = _undefined,
    Object? puncher = _undefined,
  }) =>
      _then(InputCreateOrder._({
        ..._instance._$data,
        if (products != _undefined && products != null)
          'products': (products as List<InputProductItem>),
        if (coupon != _undefined) 'coupon': (coupon as String?),
        if (branch != _undefined) 'branch': (branch as int?),
        if (puncher != _undefined && puncher != null)
          'puncher': (puncher as int),
      }));

  TRes products(
          Iterable<InputProductItem> Function(
                  Iterable<CopyWithInputProductItem<InputProductItem>>)
              _fn) =>
      call(
          products: _fn(_instance.products.map((e) => CopyWithInputProductItem(
                e,
                (i) => i,
              ))).toList());
}

class _CopyWithStubImplInputCreateOrder<TRes>
    implements CopyWithInputCreateOrder<TRes> {
  _CopyWithStubImplInputCreateOrder(this._res);

  TRes _res;

  call({
    List<InputProductItem>? products,
    String? coupon,
    int? branch,
    int? puncher,
  }) =>
      _res;

  products(_fn) => _res;
}

class InputProductItem {
  factory InputProductItem({
    required int quantity,
    required int product_id,
  }) =>
      InputProductItem._({
        r'quantity': quantity,
        r'product_id': product_id,
      });

  InputProductItem._(this._$data);

  factory InputProductItem.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$quantity = data['quantity'];
    result$data['quantity'] = (l$quantity as int);
    final l$product_id = data['product_id'];
    result$data['product_id'] = (l$product_id as int);
    return InputProductItem._(result$data);
  }

  Map<String, dynamic> _$data;

  int get quantity => (_$data['quantity'] as int);

  int get product_id => (_$data['product_id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$quantity = quantity;
    result$data['quantity'] = l$quantity;
    final l$product_id = product_id;
    result$data['product_id'] = l$product_id;
    return result$data;
  }

  CopyWithInputProductItem<InputProductItem> get copyWith =>
      CopyWithInputProductItem(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputProductItem) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$quantity = quantity;
    final lOther$quantity = other.quantity;
    if (l$quantity != lOther$quantity) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (l$product_id != lOther$product_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$quantity = quantity;
    final l$product_id = product_id;
    return Object.hashAll([
      l$quantity,
      l$product_id,
    ]);
  }
}

abstract class CopyWithInputProductItem<TRes> {
  factory CopyWithInputProductItem(
    InputProductItem instance,
    TRes Function(InputProductItem) then,
  ) = _CopyWithImplInputProductItem;

  factory CopyWithInputProductItem.stub(TRes res) =
      _CopyWithStubImplInputProductItem;

  TRes call({
    int? quantity,
    int? product_id,
  });
}

class _CopyWithImplInputProductItem<TRes>
    implements CopyWithInputProductItem<TRes> {
  _CopyWithImplInputProductItem(
    this._instance,
    this._then,
  );

  final InputProductItem _instance;

  final TRes Function(InputProductItem) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? quantity = _undefined,
    Object? product_id = _undefined,
  }) =>
      _then(InputProductItem._({
        ..._instance._$data,
        if (quantity != _undefined && quantity != null)
          'quantity': (quantity as int),
        if (product_id != _undefined && product_id != null)
          'product_id': (product_id as int),
      }));
}

class _CopyWithStubImplInputProductItem<TRes>
    implements CopyWithInputProductItem<TRes> {
  _CopyWithStubImplInputProductItem(this._res);

  TRes _res;

  call({
    int? quantity,
    int? product_id,
  }) =>
      _res;
}

class InputOrderValidateByCode {
  factory InputOrderValidateByCode({
    required String code,
    required String reference_number,
  }) =>
      InputOrderValidateByCode._({
        r'code': code,
        r'reference_number': reference_number,
      });

  InputOrderValidateByCode._(this._$data);

  factory InputOrderValidateByCode.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$code = data['code'];
    result$data['code'] = (l$code as String);
    final l$reference_number = data['reference_number'];
    result$data['reference_number'] = (l$reference_number as String);
    return InputOrderValidateByCode._(result$data);
  }

  Map<String, dynamic> _$data;

  String get code => (_$data['code'] as String);

  String get reference_number => (_$data['reference_number'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$code = code;
    result$data['code'] = l$code;
    final l$reference_number = reference_number;
    result$data['reference_number'] = l$reference_number;
    return result$data;
  }

  CopyWithInputOrderValidateByCode<InputOrderValidateByCode> get copyWith =>
      CopyWithInputOrderValidateByCode(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputOrderValidateByCode) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$code = code;
    final lOther$code = other.code;
    if (l$code != lOther$code) {
      return false;
    }
    final l$reference_number = reference_number;
    final lOther$reference_number = other.reference_number;
    if (l$reference_number != lOther$reference_number) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$code = code;
    final l$reference_number = reference_number;
    return Object.hashAll([
      l$code,
      l$reference_number,
    ]);
  }
}

abstract class CopyWithInputOrderValidateByCode<TRes> {
  factory CopyWithInputOrderValidateByCode(
    InputOrderValidateByCode instance,
    TRes Function(InputOrderValidateByCode) then,
  ) = _CopyWithImplInputOrderValidateByCode;

  factory CopyWithInputOrderValidateByCode.stub(TRes res) =
      _CopyWithStubImplInputOrderValidateByCode;

  TRes call({
    String? code,
    String? reference_number,
  });
}

class _CopyWithImplInputOrderValidateByCode<TRes>
    implements CopyWithInputOrderValidateByCode<TRes> {
  _CopyWithImplInputOrderValidateByCode(
    this._instance,
    this._then,
  );

  final InputOrderValidateByCode _instance;

  final TRes Function(InputOrderValidateByCode) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? code = _undefined,
    Object? reference_number = _undefined,
  }) =>
      _then(InputOrderValidateByCode._({
        ..._instance._$data,
        if (code != _undefined && code != null) 'code': (code as String),
        if (reference_number != _undefined && reference_number != null)
          'reference_number': (reference_number as String),
      }));
}

class _CopyWithStubImplInputOrderValidateByCode<TRes>
    implements CopyWithInputOrderValidateByCode<TRes> {
  _CopyWithStubImplInputOrderValidateByCode(this._res);

  TRes _res;

  call({
    String? code,
    String? reference_number,
  }) =>
      _res;
}

class InputOrderReferenceNumber {
  factory InputOrderReferenceNumber({required String reference_number}) =>
      InputOrderReferenceNumber._({
        r'reference_number': reference_number,
      });

  InputOrderReferenceNumber._(this._$data);

  factory InputOrderReferenceNumber.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$reference_number = data['reference_number'];
    result$data['reference_number'] = (l$reference_number as String);
    return InputOrderReferenceNumber._(result$data);
  }

  Map<String, dynamic> _$data;

  String get reference_number => (_$data['reference_number'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$reference_number = reference_number;
    result$data['reference_number'] = l$reference_number;
    return result$data;
  }

  CopyWithInputOrderReferenceNumber<InputOrderReferenceNumber> get copyWith =>
      CopyWithInputOrderReferenceNumber(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputOrderReferenceNumber) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reference_number = reference_number;
    final lOther$reference_number = other.reference_number;
    if (l$reference_number != lOther$reference_number) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reference_number = reference_number;
    return Object.hashAll([l$reference_number]);
  }
}

abstract class CopyWithInputOrderReferenceNumber<TRes> {
  factory CopyWithInputOrderReferenceNumber(
    InputOrderReferenceNumber instance,
    TRes Function(InputOrderReferenceNumber) then,
  ) = _CopyWithImplInputOrderReferenceNumber;

  factory CopyWithInputOrderReferenceNumber.stub(TRes res) =
      _CopyWithStubImplInputOrderReferenceNumber;

  TRes call({String? reference_number});
}

class _CopyWithImplInputOrderReferenceNumber<TRes>
    implements CopyWithInputOrderReferenceNumber<TRes> {
  _CopyWithImplInputOrderReferenceNumber(
    this._instance,
    this._then,
  );

  final InputOrderReferenceNumber _instance;

  final TRes Function(InputOrderReferenceNumber) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? reference_number = _undefined}) =>
      _then(InputOrderReferenceNumber._({
        ..._instance._$data,
        if (reference_number != _undefined && reference_number != null)
          'reference_number': (reference_number as String),
      }));
}

class _CopyWithStubImplInputOrderReferenceNumber<TRes>
    implements CopyWithInputOrderReferenceNumber<TRes> {
  _CopyWithStubImplInputOrderReferenceNumber(this._res);

  TRes _res;

  call({String? reference_number}) => _res;
}

class InputScanQrProductInput {
  factory InputScanQrProductInput({String? reference_number}) =>
      InputScanQrProductInput._({
        if (reference_number != null) r'reference_number': reference_number,
      });

  InputScanQrProductInput._(this._$data);

  factory InputScanQrProductInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('reference_number')) {
      final l$reference_number = data['reference_number'];
      result$data['reference_number'] = (l$reference_number as String?);
    }
    return InputScanQrProductInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get reference_number => (_$data['reference_number'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('reference_number')) {
      final l$reference_number = reference_number;
      result$data['reference_number'] = l$reference_number;
    }
    return result$data;
  }

  CopyWithInputScanQrProductInput<InputScanQrProductInput> get copyWith =>
      CopyWithInputScanQrProductInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputScanQrProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$reference_number = reference_number;
    final lOther$reference_number = other.reference_number;
    if (_$data.containsKey('reference_number') !=
        other._$data.containsKey('reference_number')) {
      return false;
    }
    if (l$reference_number != lOther$reference_number) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$reference_number = reference_number;
    return Object.hashAll([
      _$data.containsKey('reference_number') ? l$reference_number : const {}
    ]);
  }
}

abstract class CopyWithInputScanQrProductInput<TRes> {
  factory CopyWithInputScanQrProductInput(
    InputScanQrProductInput instance,
    TRes Function(InputScanQrProductInput) then,
  ) = _CopyWithImplInputScanQrProductInput;

  factory CopyWithInputScanQrProductInput.stub(TRes res) =
      _CopyWithStubImplInputScanQrProductInput;

  TRes call({String? reference_number});
}

class _CopyWithImplInputScanQrProductInput<TRes>
    implements CopyWithInputScanQrProductInput<TRes> {
  _CopyWithImplInputScanQrProductInput(
    this._instance,
    this._then,
  );

  final InputScanQrProductInput _instance;

  final TRes Function(InputScanQrProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? reference_number = _undefined}) =>
      _then(InputScanQrProductInput._({
        ..._instance._$data,
        if (reference_number != _undefined)
          'reference_number': (reference_number as String?),
      }));
}

class _CopyWithStubImplInputScanQrProductInput<TRes>
    implements CopyWithInputScanQrProductInput<TRes> {
  _CopyWithStubImplInputScanQrProductInput(this._res);

  TRes _res;

  call({String? reference_number}) => _res;
}

class InputCreateEmployeeInput {
  factory InputCreateEmployeeInput({
    String? name,
    String? email,
    String? mobile,
    String? national_id,
    double? wallet_limit,
    String? image,
  }) =>
      InputCreateEmployeeInput._({
        if (name != null) r'name': name,
        if (email != null) r'email': email,
        if (mobile != null) r'mobile': mobile,
        if (national_id != null) r'national_id': national_id,
        if (wallet_limit != null) r'wallet_limit': wallet_limit,
        if (image != null) r'image': image,
      });

  InputCreateEmployeeInput._(this._$data);

  factory InputCreateEmployeeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('mobile')) {
      final l$mobile = data['mobile'];
      result$data['mobile'] = (l$mobile as String?);
    }
    if (data.containsKey('national_id')) {
      final l$national_id = data['national_id'];
      result$data['national_id'] = (l$national_id as String?);
    }
    if (data.containsKey('wallet_limit')) {
      final l$wallet_limit = data['wallet_limit'];
      result$data['wallet_limit'] = (l$wallet_limit as num?)?.toDouble();
    }
    if (data.containsKey('image')) {
      final l$image = data['image'];
      result$data['image'] = (l$image as String?);
    }
    return InputCreateEmployeeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get mobile => (_$data['mobile'] as String?);

  String? get national_id => (_$data['national_id'] as String?);

  double? get wallet_limit => (_$data['wallet_limit'] as double?);

  String? get image => (_$data['image'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('mobile')) {
      final l$mobile = mobile;
      result$data['mobile'] = l$mobile;
    }
    if (_$data.containsKey('national_id')) {
      final l$national_id = national_id;
      result$data['national_id'] = l$national_id;
    }
    if (_$data.containsKey('wallet_limit')) {
      final l$wallet_limit = wallet_limit;
      result$data['wallet_limit'] = l$wallet_limit;
    }
    if (_$data.containsKey('image')) {
      final l$image = image;
      result$data['image'] = l$image;
    }
    return result$data;
  }

  CopyWithInputCreateEmployeeInput<InputCreateEmployeeInput> get copyWith =>
      CopyWithInputCreateEmployeeInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputCreateEmployeeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (_$data.containsKey('mobile') != other._$data.containsKey('mobile')) {
      return false;
    }
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$national_id = national_id;
    final lOther$national_id = other.national_id;
    if (_$data.containsKey('national_id') !=
        other._$data.containsKey('national_id')) {
      return false;
    }
    if (l$national_id != lOther$national_id) {
      return false;
    }
    final l$wallet_limit = wallet_limit;
    final lOther$wallet_limit = other.wallet_limit;
    if (_$data.containsKey('wallet_limit') !=
        other._$data.containsKey('wallet_limit')) {
      return false;
    }
    if (l$wallet_limit != lOther$wallet_limit) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (_$data.containsKey('image') != other._$data.containsKey('image')) {
      return false;
    }
    if (l$image != lOther$image) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$mobile = mobile;
    final l$national_id = national_id;
    final l$wallet_limit = wallet_limit;
    final l$image = image;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('mobile') ? l$mobile : const {},
      _$data.containsKey('national_id') ? l$national_id : const {},
      _$data.containsKey('wallet_limit') ? l$wallet_limit : const {},
      _$data.containsKey('image') ? l$image : const {},
    ]);
  }
}

abstract class CopyWithInputCreateEmployeeInput<TRes> {
  factory CopyWithInputCreateEmployeeInput(
    InputCreateEmployeeInput instance,
    TRes Function(InputCreateEmployeeInput) then,
  ) = _CopyWithImplInputCreateEmployeeInput;

  factory CopyWithInputCreateEmployeeInput.stub(TRes res) =
      _CopyWithStubImplInputCreateEmployeeInput;

  TRes call({
    String? name,
    String? email,
    String? mobile,
    String? national_id,
    double? wallet_limit,
    String? image,
  });
}

class _CopyWithImplInputCreateEmployeeInput<TRes>
    implements CopyWithInputCreateEmployeeInput<TRes> {
  _CopyWithImplInputCreateEmployeeInput(
    this._instance,
    this._then,
  );

  final InputCreateEmployeeInput _instance;

  final TRes Function(InputCreateEmployeeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? mobile = _undefined,
    Object? national_id = _undefined,
    Object? wallet_limit = _undefined,
    Object? image = _undefined,
  }) =>
      _then(InputCreateEmployeeInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (email != _undefined) 'email': (email as String?),
        if (mobile != _undefined) 'mobile': (mobile as String?),
        if (national_id != _undefined) 'national_id': (national_id as String?),
        if (wallet_limit != _undefined)
          'wallet_limit': (wallet_limit as double?),
        if (image != _undefined) 'image': (image as String?),
      }));
}

class _CopyWithStubImplInputCreateEmployeeInput<TRes>
    implements CopyWithInputCreateEmployeeInput<TRes> {
  _CopyWithStubImplInputCreateEmployeeInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? mobile,
    String? national_id,
    double? wallet_limit,
    String? image,
  }) =>
      _res;
}

class InputUpdateEmployeeInput {
  factory InputUpdateEmployeeInput({
    String? name,
    String? email,
    String? mobile,
    String? national_id,
    required int employee_id,
    double? wallet_limit,
    String? image,
  }) =>
      InputUpdateEmployeeInput._({
        if (name != null) r'name': name,
        if (email != null) r'email': email,
        if (mobile != null) r'mobile': mobile,
        if (national_id != null) r'national_id': national_id,
        r'employee_id': employee_id,
        if (wallet_limit != null) r'wallet_limit': wallet_limit,
        if (image != null) r'image': image,
      });

  InputUpdateEmployeeInput._(this._$data);

  factory InputUpdateEmployeeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('mobile')) {
      final l$mobile = data['mobile'];
      result$data['mobile'] = (l$mobile as String?);
    }
    if (data.containsKey('national_id')) {
      final l$national_id = data['national_id'];
      result$data['national_id'] = (l$national_id as String?);
    }
    final l$employee_id = data['employee_id'];
    result$data['employee_id'] = (l$employee_id as int);
    if (data.containsKey('wallet_limit')) {
      final l$wallet_limit = data['wallet_limit'];
      result$data['wallet_limit'] = (l$wallet_limit as num?)?.toDouble();
    }
    if (data.containsKey('image')) {
      final l$image = data['image'];
      result$data['image'] = (l$image as String?);
    }
    return InputUpdateEmployeeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get mobile => (_$data['mobile'] as String?);

  String? get national_id => (_$data['national_id'] as String?);

  int get employee_id => (_$data['employee_id'] as int);

  double? get wallet_limit => (_$data['wallet_limit'] as double?);

  String? get image => (_$data['image'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('mobile')) {
      final l$mobile = mobile;
      result$data['mobile'] = l$mobile;
    }
    if (_$data.containsKey('national_id')) {
      final l$national_id = national_id;
      result$data['national_id'] = l$national_id;
    }
    final l$employee_id = employee_id;
    result$data['employee_id'] = l$employee_id;
    if (_$data.containsKey('wallet_limit')) {
      final l$wallet_limit = wallet_limit;
      result$data['wallet_limit'] = l$wallet_limit;
    }
    if (_$data.containsKey('image')) {
      final l$image = image;
      result$data['image'] = l$image;
    }
    return result$data;
  }

  CopyWithInputUpdateEmployeeInput<InputUpdateEmployeeInput> get copyWith =>
      CopyWithInputUpdateEmployeeInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputUpdateEmployeeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (_$data.containsKey('mobile') != other._$data.containsKey('mobile')) {
      return false;
    }
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$national_id = national_id;
    final lOther$national_id = other.national_id;
    if (_$data.containsKey('national_id') !=
        other._$data.containsKey('national_id')) {
      return false;
    }
    if (l$national_id != lOther$national_id) {
      return false;
    }
    final l$employee_id = employee_id;
    final lOther$employee_id = other.employee_id;
    if (l$employee_id != lOther$employee_id) {
      return false;
    }
    final l$wallet_limit = wallet_limit;
    final lOther$wallet_limit = other.wallet_limit;
    if (_$data.containsKey('wallet_limit') !=
        other._$data.containsKey('wallet_limit')) {
      return false;
    }
    if (l$wallet_limit != lOther$wallet_limit) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (_$data.containsKey('image') != other._$data.containsKey('image')) {
      return false;
    }
    if (l$image != lOther$image) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$mobile = mobile;
    final l$national_id = national_id;
    final l$employee_id = employee_id;
    final l$wallet_limit = wallet_limit;
    final l$image = image;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('mobile') ? l$mobile : const {},
      _$data.containsKey('national_id') ? l$national_id : const {},
      l$employee_id,
      _$data.containsKey('wallet_limit') ? l$wallet_limit : const {},
      _$data.containsKey('image') ? l$image : const {},
    ]);
  }
}

abstract class CopyWithInputUpdateEmployeeInput<TRes> {
  factory CopyWithInputUpdateEmployeeInput(
    InputUpdateEmployeeInput instance,
    TRes Function(InputUpdateEmployeeInput) then,
  ) = _CopyWithImplInputUpdateEmployeeInput;

  factory CopyWithInputUpdateEmployeeInput.stub(TRes res) =
      _CopyWithStubImplInputUpdateEmployeeInput;

  TRes call({
    String? name,
    String? email,
    String? mobile,
    String? national_id,
    int? employee_id,
    double? wallet_limit,
    String? image,
  });
}

class _CopyWithImplInputUpdateEmployeeInput<TRes>
    implements CopyWithInputUpdateEmployeeInput<TRes> {
  _CopyWithImplInputUpdateEmployeeInput(
    this._instance,
    this._then,
  );

  final InputUpdateEmployeeInput _instance;

  final TRes Function(InputUpdateEmployeeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? mobile = _undefined,
    Object? national_id = _undefined,
    Object? employee_id = _undefined,
    Object? wallet_limit = _undefined,
    Object? image = _undefined,
  }) =>
      _then(InputUpdateEmployeeInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (email != _undefined) 'email': (email as String?),
        if (mobile != _undefined) 'mobile': (mobile as String?),
        if (national_id != _undefined) 'national_id': (national_id as String?),
        if (employee_id != _undefined && employee_id != null)
          'employee_id': (employee_id as int),
        if (wallet_limit != _undefined)
          'wallet_limit': (wallet_limit as double?),
        if (image != _undefined) 'image': (image as String?),
      }));
}

class _CopyWithStubImplInputUpdateEmployeeInput<TRes>
    implements CopyWithInputUpdateEmployeeInput<TRes> {
  _CopyWithStubImplInputUpdateEmployeeInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? mobile,
    String? national_id,
    int? employee_id,
    double? wallet_limit,
    String? image,
  }) =>
      _res;
}

class InputSingleEmployeeInput {
  factory InputSingleEmployeeInput({required int employee_id}) =>
      InputSingleEmployeeInput._({
        r'employee_id': employee_id,
      });

  InputSingleEmployeeInput._(this._$data);

  factory InputSingleEmployeeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$employee_id = data['employee_id'];
    result$data['employee_id'] = (l$employee_id as int);
    return InputSingleEmployeeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get employee_id => (_$data['employee_id'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$employee_id = employee_id;
    result$data['employee_id'] = l$employee_id;
    return result$data;
  }

  CopyWithInputSingleEmployeeInput<InputSingleEmployeeInput> get copyWith =>
      CopyWithInputSingleEmployeeInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputSingleEmployeeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$employee_id = employee_id;
    final lOther$employee_id = other.employee_id;
    if (l$employee_id != lOther$employee_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$employee_id = employee_id;
    return Object.hashAll([l$employee_id]);
  }
}

abstract class CopyWithInputSingleEmployeeInput<TRes> {
  factory CopyWithInputSingleEmployeeInput(
    InputSingleEmployeeInput instance,
    TRes Function(InputSingleEmployeeInput) then,
  ) = _CopyWithImplInputSingleEmployeeInput;

  factory CopyWithInputSingleEmployeeInput.stub(TRes res) =
      _CopyWithStubImplInputSingleEmployeeInput;

  TRes call({int? employee_id});
}

class _CopyWithImplInputSingleEmployeeInput<TRes>
    implements CopyWithInputSingleEmployeeInput<TRes> {
  _CopyWithImplInputSingleEmployeeInput(
    this._instance,
    this._then,
  );

  final InputSingleEmployeeInput _instance;

  final TRes Function(InputSingleEmployeeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? employee_id = _undefined}) =>
      _then(InputSingleEmployeeInput._({
        ..._instance._$data,
        if (employee_id != _undefined && employee_id != null)
          'employee_id': (employee_id as int),
      }));
}

class _CopyWithStubImplInputSingleEmployeeInput<TRes>
    implements CopyWithInputSingleEmployeeInput<TRes> {
  _CopyWithStubImplInputSingleEmployeeInput(this._res);

  TRes _res;

  call({int? employee_id}) => _res;
}

class InputUploadEmployeeInput {
  factory InputUploadEmployeeInput({String? file}) =>
      InputUploadEmployeeInput._({
        if (file != null) r'file': file,
      });

  InputUploadEmployeeInput._(this._$data);

  factory InputUploadEmployeeInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('file')) {
      final l$file = data['file'];
      result$data['file'] = (l$file as String?);
    }
    return InputUploadEmployeeInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get file => (_$data['file'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('file')) {
      final l$file = file;
      result$data['file'] = l$file;
    }
    return result$data;
  }

  CopyWithInputUploadEmployeeInput<InputUploadEmployeeInput> get copyWith =>
      CopyWithInputUploadEmployeeInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputUploadEmployeeInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$file = file;
    final lOther$file = other.file;
    if (_$data.containsKey('file') != other._$data.containsKey('file')) {
      return false;
    }
    if (l$file != lOther$file) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$file = file;
    return Object.hashAll([_$data.containsKey('file') ? l$file : const {}]);
  }
}

abstract class CopyWithInputUploadEmployeeInput<TRes> {
  factory CopyWithInputUploadEmployeeInput(
    InputUploadEmployeeInput instance,
    TRes Function(InputUploadEmployeeInput) then,
  ) = _CopyWithImplInputUploadEmployeeInput;

  factory CopyWithInputUploadEmployeeInput.stub(TRes res) =
      _CopyWithStubImplInputUploadEmployeeInput;

  TRes call({String? file});
}

class _CopyWithImplInputUploadEmployeeInput<TRes>
    implements CopyWithInputUploadEmployeeInput<TRes> {
  _CopyWithImplInputUploadEmployeeInput(
    this._instance,
    this._then,
  );

  final InputUploadEmployeeInput _instance;

  final TRes Function(InputUploadEmployeeInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? file = _undefined}) => _then(InputUploadEmployeeInput._({
        ..._instance._$data,
        if (file != _undefined) 'file': (file as String?),
      }));
}

class _CopyWithStubImplInputUploadEmployeeInput<TRes>
    implements CopyWithInputUploadEmployeeInput<TRes> {
  _CopyWithStubImplInputUploadEmployeeInput(this._res);

  TRes _res;

  call({String? file}) => _res;
}

class InputUpdateProductInput {
  factory InputUpdateProductInput({
    double? price,
    String? product_id,
  }) =>
      InputUpdateProductInput._({
        if (price != null) r'price': price,
        if (product_id != null) r'product_id': product_id,
      });

  InputUpdateProductInput._(this._$data);

  factory InputUpdateProductInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('price')) {
      final l$price = data['price'];
      result$data['price'] = (l$price as num?)?.toDouble();
    }
    if (data.containsKey('product_id')) {
      final l$product_id = data['product_id'];
      result$data['product_id'] = (l$product_id as String?);
    }
    return InputUpdateProductInput._(result$data);
  }

  Map<String, dynamic> _$data;

  double? get price => (_$data['price'] as double?);

  String? get product_id => (_$data['product_id'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('price')) {
      final l$price = price;
      result$data['price'] = l$price;
    }
    if (_$data.containsKey('product_id')) {
      final l$product_id = product_id;
      result$data['product_id'] = l$product_id;
    }
    return result$data;
  }

  CopyWithInputUpdateProductInput<InputUpdateProductInput> get copyWith =>
      CopyWithInputUpdateProductInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputUpdateProductInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$price = price;
    final lOther$price = other.price;
    if (_$data.containsKey('price') != other._$data.containsKey('price')) {
      return false;
    }
    if (l$price != lOther$price) {
      return false;
    }
    final l$product_id = product_id;
    final lOther$product_id = other.product_id;
    if (_$data.containsKey('product_id') !=
        other._$data.containsKey('product_id')) {
      return false;
    }
    if (l$product_id != lOther$product_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$price = price;
    final l$product_id = product_id;
    return Object.hashAll([
      _$data.containsKey('price') ? l$price : const {},
      _$data.containsKey('product_id') ? l$product_id : const {},
    ]);
  }
}

abstract class CopyWithInputUpdateProductInput<TRes> {
  factory CopyWithInputUpdateProductInput(
    InputUpdateProductInput instance,
    TRes Function(InputUpdateProductInput) then,
  ) = _CopyWithImplInputUpdateProductInput;

  factory CopyWithInputUpdateProductInput.stub(TRes res) =
      _CopyWithStubImplInputUpdateProductInput;

  TRes call({
    double? price,
    String? product_id,
  });
}

class _CopyWithImplInputUpdateProductInput<TRes>
    implements CopyWithInputUpdateProductInput<TRes> {
  _CopyWithImplInputUpdateProductInput(
    this._instance,
    this._then,
  );

  final InputUpdateProductInput _instance;

  final TRes Function(InputUpdateProductInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? price = _undefined,
    Object? product_id = _undefined,
  }) =>
      _then(InputUpdateProductInput._({
        ..._instance._$data,
        if (price != _undefined) 'price': (price as double?),
        if (product_id != _undefined) 'product_id': (product_id as String?),
      }));
}

class _CopyWithStubImplInputUpdateProductInput<TRes>
    implements CopyWithInputUpdateProductInput<TRes> {
  _CopyWithStubImplInputUpdateProductInput(this._res);

  TRes _res;

  call({
    double? price,
    String? product_id,
  }) =>
      _res;
}

class InputCreateCouponInput {
  factory InputCreateCouponInput({
    String? name,
    String? email,
    String? mobile,
    String? national_id,
  }) =>
      InputCreateCouponInput._({
        if (name != null) r'name': name,
        if (email != null) r'email': email,
        if (mobile != null) r'mobile': mobile,
        if (national_id != null) r'national_id': national_id,
      });

  InputCreateCouponInput._(this._$data);

  factory InputCreateCouponInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('mobile')) {
      final l$mobile = data['mobile'];
      result$data['mobile'] = (l$mobile as String?);
    }
    if (data.containsKey('national_id')) {
      final l$national_id = data['national_id'];
      result$data['national_id'] = (l$national_id as String?);
    }
    return InputCreateCouponInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get mobile => (_$data['mobile'] as String?);

  String? get national_id => (_$data['national_id'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('mobile')) {
      final l$mobile = mobile;
      result$data['mobile'] = l$mobile;
    }
    if (_$data.containsKey('national_id')) {
      final l$national_id = national_id;
      result$data['national_id'] = l$national_id;
    }
    return result$data;
  }

  CopyWithInputCreateCouponInput<InputCreateCouponInput> get copyWith =>
      CopyWithInputCreateCouponInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputCreateCouponInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (_$data.containsKey('mobile') != other._$data.containsKey('mobile')) {
      return false;
    }
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$national_id = national_id;
    final lOther$national_id = other.national_id;
    if (_$data.containsKey('national_id') !=
        other._$data.containsKey('national_id')) {
      return false;
    }
    if (l$national_id != lOther$national_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$mobile = mobile;
    final l$national_id = national_id;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('mobile') ? l$mobile : const {},
      _$data.containsKey('national_id') ? l$national_id : const {},
    ]);
  }
}

abstract class CopyWithInputCreateCouponInput<TRes> {
  factory CopyWithInputCreateCouponInput(
    InputCreateCouponInput instance,
    TRes Function(InputCreateCouponInput) then,
  ) = _CopyWithImplInputCreateCouponInput;

  factory CopyWithInputCreateCouponInput.stub(TRes res) =
      _CopyWithStubImplInputCreateCouponInput;

  TRes call({
    String? name,
    String? email,
    String? mobile,
    String? national_id,
  });
}

class _CopyWithImplInputCreateCouponInput<TRes>
    implements CopyWithInputCreateCouponInput<TRes> {
  _CopyWithImplInputCreateCouponInput(
    this._instance,
    this._then,
  );

  final InputCreateCouponInput _instance;

  final TRes Function(InputCreateCouponInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? mobile = _undefined,
    Object? national_id = _undefined,
  }) =>
      _then(InputCreateCouponInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (email != _undefined) 'email': (email as String?),
        if (mobile != _undefined) 'mobile': (mobile as String?),
        if (national_id != _undefined) 'national_id': (national_id as String?),
      }));
}

class _CopyWithStubImplInputCreateCouponInput<TRes>
    implements CopyWithInputCreateCouponInput<TRes> {
  _CopyWithStubImplInputCreateCouponInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? mobile,
    String? national_id,
  }) =>
      _res;
}

class InputUpdateCouponInput {
  factory InputUpdateCouponInput({
    String? name,
    String? email,
    String? mobile,
    String? national_id,
    int? coupon_id,
  }) =>
      InputUpdateCouponInput._({
        if (name != null) r'name': name,
        if (email != null) r'email': email,
        if (mobile != null) r'mobile': mobile,
        if (national_id != null) r'national_id': national_id,
        if (coupon_id != null) r'coupon_id': coupon_id,
      });

  InputUpdateCouponInput._(this._$data);

  factory InputUpdateCouponInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('name')) {
      final l$name = data['name'];
      result$data['name'] = (l$name as String?);
    }
    if (data.containsKey('email')) {
      final l$email = data['email'];
      result$data['email'] = (l$email as String?);
    }
    if (data.containsKey('mobile')) {
      final l$mobile = data['mobile'];
      result$data['mobile'] = (l$mobile as String?);
    }
    if (data.containsKey('national_id')) {
      final l$national_id = data['national_id'];
      result$data['national_id'] = (l$national_id as String?);
    }
    if (data.containsKey('coupon_id')) {
      final l$coupon_id = data['coupon_id'];
      result$data['coupon_id'] = (l$coupon_id as int?);
    }
    return InputUpdateCouponInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get name => (_$data['name'] as String?);

  String? get email => (_$data['email'] as String?);

  String? get mobile => (_$data['mobile'] as String?);

  String? get national_id => (_$data['national_id'] as String?);

  int? get coupon_id => (_$data['coupon_id'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('name')) {
      final l$name = name;
      result$data['name'] = l$name;
    }
    if (_$data.containsKey('email')) {
      final l$email = email;
      result$data['email'] = l$email;
    }
    if (_$data.containsKey('mobile')) {
      final l$mobile = mobile;
      result$data['mobile'] = l$mobile;
    }
    if (_$data.containsKey('national_id')) {
      final l$national_id = national_id;
      result$data['national_id'] = l$national_id;
    }
    if (_$data.containsKey('coupon_id')) {
      final l$coupon_id = coupon_id;
      result$data['coupon_id'] = l$coupon_id;
    }
    return result$data;
  }

  CopyWithInputUpdateCouponInput<InputUpdateCouponInput> get copyWith =>
      CopyWithInputUpdateCouponInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputUpdateCouponInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (_$data.containsKey('name') != other._$data.containsKey('name')) {
      return false;
    }
    if (l$name != lOther$name) {
      return false;
    }
    final l$email = email;
    final lOther$email = other.email;
    if (_$data.containsKey('email') != other._$data.containsKey('email')) {
      return false;
    }
    if (l$email != lOther$email) {
      return false;
    }
    final l$mobile = mobile;
    final lOther$mobile = other.mobile;
    if (_$data.containsKey('mobile') != other._$data.containsKey('mobile')) {
      return false;
    }
    if (l$mobile != lOther$mobile) {
      return false;
    }
    final l$national_id = national_id;
    final lOther$national_id = other.national_id;
    if (_$data.containsKey('national_id') !=
        other._$data.containsKey('national_id')) {
      return false;
    }
    if (l$national_id != lOther$national_id) {
      return false;
    }
    final l$coupon_id = coupon_id;
    final lOther$coupon_id = other.coupon_id;
    if (_$data.containsKey('coupon_id') !=
        other._$data.containsKey('coupon_id')) {
      return false;
    }
    if (l$coupon_id != lOther$coupon_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$name = name;
    final l$email = email;
    final l$mobile = mobile;
    final l$national_id = national_id;
    final l$coupon_id = coupon_id;
    return Object.hashAll([
      _$data.containsKey('name') ? l$name : const {},
      _$data.containsKey('email') ? l$email : const {},
      _$data.containsKey('mobile') ? l$mobile : const {},
      _$data.containsKey('national_id') ? l$national_id : const {},
      _$data.containsKey('coupon_id') ? l$coupon_id : const {},
    ]);
  }
}

abstract class CopyWithInputUpdateCouponInput<TRes> {
  factory CopyWithInputUpdateCouponInput(
    InputUpdateCouponInput instance,
    TRes Function(InputUpdateCouponInput) then,
  ) = _CopyWithImplInputUpdateCouponInput;

  factory CopyWithInputUpdateCouponInput.stub(TRes res) =
      _CopyWithStubImplInputUpdateCouponInput;

  TRes call({
    String? name,
    String? email,
    String? mobile,
    String? national_id,
    int? coupon_id,
  });
}

class _CopyWithImplInputUpdateCouponInput<TRes>
    implements CopyWithInputUpdateCouponInput<TRes> {
  _CopyWithImplInputUpdateCouponInput(
    this._instance,
    this._then,
  );

  final InputUpdateCouponInput _instance;

  final TRes Function(InputUpdateCouponInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? name = _undefined,
    Object? email = _undefined,
    Object? mobile = _undefined,
    Object? national_id = _undefined,
    Object? coupon_id = _undefined,
  }) =>
      _then(InputUpdateCouponInput._({
        ..._instance._$data,
        if (name != _undefined) 'name': (name as String?),
        if (email != _undefined) 'email': (email as String?),
        if (mobile != _undefined) 'mobile': (mobile as String?),
        if (national_id != _undefined) 'national_id': (national_id as String?),
        if (coupon_id != _undefined) 'coupon_id': (coupon_id as int?),
      }));
}

class _CopyWithStubImplInputUpdateCouponInput<TRes>
    implements CopyWithInputUpdateCouponInput<TRes> {
  _CopyWithStubImplInputUpdateCouponInput(this._res);

  TRes _res;

  call({
    String? name,
    String? email,
    String? mobile,
    String? national_id,
    int? coupon_id,
  }) =>
      _res;
}

class InputSingleCouponInput {
  factory InputSingleCouponInput({int? coupon_id}) => InputSingleCouponInput._({
        if (coupon_id != null) r'coupon_id': coupon_id,
      });

  InputSingleCouponInput._(this._$data);

  factory InputSingleCouponInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('coupon_id')) {
      final l$coupon_id = data['coupon_id'];
      result$data['coupon_id'] = (l$coupon_id as int?);
    }
    return InputSingleCouponInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get coupon_id => (_$data['coupon_id'] as int?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('coupon_id')) {
      final l$coupon_id = coupon_id;
      result$data['coupon_id'] = l$coupon_id;
    }
    return result$data;
  }

  CopyWithInputSingleCouponInput<InputSingleCouponInput> get copyWith =>
      CopyWithInputSingleCouponInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputSingleCouponInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$coupon_id = coupon_id;
    final lOther$coupon_id = other.coupon_id;
    if (_$data.containsKey('coupon_id') !=
        other._$data.containsKey('coupon_id')) {
      return false;
    }
    if (l$coupon_id != lOther$coupon_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$coupon_id = coupon_id;
    return Object.hashAll(
        [_$data.containsKey('coupon_id') ? l$coupon_id : const {}]);
  }
}

abstract class CopyWithInputSingleCouponInput<TRes> {
  factory CopyWithInputSingleCouponInput(
    InputSingleCouponInput instance,
    TRes Function(InputSingleCouponInput) then,
  ) = _CopyWithImplInputSingleCouponInput;

  factory CopyWithInputSingleCouponInput.stub(TRes res) =
      _CopyWithStubImplInputSingleCouponInput;

  TRes call({int? coupon_id});
}

class _CopyWithImplInputSingleCouponInput<TRes>
    implements CopyWithInputSingleCouponInput<TRes> {
  _CopyWithImplInputSingleCouponInput(
    this._instance,
    this._then,
  );

  final InputSingleCouponInput _instance;

  final TRes Function(InputSingleCouponInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? coupon_id = _undefined}) =>
      _then(InputSingleCouponInput._({
        ..._instance._$data,
        if (coupon_id != _undefined) 'coupon_id': (coupon_id as int?),
      }));
}

class _CopyWithStubImplInputSingleCouponInput<TRes>
    implements CopyWithInputSingleCouponInput<TRes> {
  _CopyWithStubImplInputSingleCouponInput(this._res);

  TRes _res;

  call({int? coupon_id}) => _res;
}

class InputCreateWalletInput {
  factory InputCreateWalletInput({
    String? title,
    required double amount,
    EnumPaymentMethod? payment_method,
    String? description,
    String? attachment,
  }) =>
      InputCreateWalletInput._({
        if (title != null) r'title': title,
        r'amount': amount,
        if (payment_method != null) r'payment_method': payment_method,
        if (description != null) r'description': description,
        if (attachment != null) r'attachment': attachment,
      });

  InputCreateWalletInput._(this._$data);

  factory InputCreateWalletInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    final l$amount = data['amount'];
    result$data['amount'] = (l$amount as num).toDouble();
    if (data.containsKey('payment_method')) {
      final l$payment_method = data['payment_method'];
      result$data['payment_method'] = l$payment_method == null
          ? null
          : fromJsonEnumPaymentMethod((l$payment_method as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('attachment')) {
      final l$attachment = data['attachment'];
      result$data['attachment'] = (l$attachment as String?);
    }
    return InputCreateWalletInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get title => (_$data['title'] as String?);

  double get amount => (_$data['amount'] as double);

  EnumPaymentMethod? get payment_method =>
      (_$data['payment_method'] as EnumPaymentMethod?);

  String? get description => (_$data['description'] as String?);

  String? get attachment => (_$data['attachment'] as String?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    final l$amount = amount;
    result$data['amount'] = l$amount;
    if (_$data.containsKey('payment_method')) {
      final l$payment_method = payment_method;
      result$data['payment_method'] = l$payment_method == null
          ? null
          : toJsonEnumPaymentMethod(l$payment_method);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('attachment')) {
      final l$attachment = attachment;
      result$data['attachment'] = l$attachment;
    }
    return result$data;
  }

  CopyWithInputCreateWalletInput<InputCreateWalletInput> get copyWith =>
      CopyWithInputCreateWalletInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputCreateWalletInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$payment_method = payment_method;
    final lOther$payment_method = other.payment_method;
    if (_$data.containsKey('payment_method') !=
        other._$data.containsKey('payment_method')) {
      return false;
    }
    if (l$payment_method != lOther$payment_method) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$attachment = attachment;
    final lOther$attachment = other.attachment;
    if (_$data.containsKey('attachment') !=
        other._$data.containsKey('attachment')) {
      return false;
    }
    if (l$attachment != lOther$attachment) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$amount = amount;
    final l$payment_method = payment_method;
    final l$description = description;
    final l$attachment = attachment;
    return Object.hashAll([
      _$data.containsKey('title') ? l$title : const {},
      l$amount,
      _$data.containsKey('payment_method') ? l$payment_method : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('attachment') ? l$attachment : const {},
    ]);
  }
}

abstract class CopyWithInputCreateWalletInput<TRes> {
  factory CopyWithInputCreateWalletInput(
    InputCreateWalletInput instance,
    TRes Function(InputCreateWalletInput) then,
  ) = _CopyWithImplInputCreateWalletInput;

  factory CopyWithInputCreateWalletInput.stub(TRes res) =
      _CopyWithStubImplInputCreateWalletInput;

  TRes call({
    String? title,
    double? amount,
    EnumPaymentMethod? payment_method,
    String? description,
    String? attachment,
  });
}

class _CopyWithImplInputCreateWalletInput<TRes>
    implements CopyWithInputCreateWalletInput<TRes> {
  _CopyWithImplInputCreateWalletInput(
    this._instance,
    this._then,
  );

  final InputCreateWalletInput _instance;

  final TRes Function(InputCreateWalletInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? amount = _undefined,
    Object? payment_method = _undefined,
    Object? description = _undefined,
    Object? attachment = _undefined,
  }) =>
      _then(InputCreateWalletInput._({
        ..._instance._$data,
        if (title != _undefined) 'title': (title as String?),
        if (amount != _undefined && amount != null)
          'amount': (amount as double),
        if (payment_method != _undefined)
          'payment_method': (payment_method as EnumPaymentMethod?),
        if (description != _undefined) 'description': (description as String?),
        if (attachment != _undefined) 'attachment': (attachment as String?),
      }));
}

class _CopyWithStubImplInputCreateWalletInput<TRes>
    implements CopyWithInputCreateWalletInput<TRes> {
  _CopyWithStubImplInputCreateWalletInput(this._res);

  TRes _res;

  call({
    String? title,
    double? amount,
    EnumPaymentMethod? payment_method,
    String? description,
    String? attachment,
  }) =>
      _res;
}

class InputCreateEmployeeWalletInput {
  factory InputCreateEmployeeWalletInput({
    String? title,
    required double amount,
    EnumPaymentMethod? payment_method,
    String? description,
    String? attachment,
    required String employee_id,
  }) =>
      InputCreateEmployeeWalletInput._({
        if (title != null) r'title': title,
        r'amount': amount,
        if (payment_method != null) r'payment_method': payment_method,
        if (description != null) r'description': description,
        if (attachment != null) r'attachment': attachment,
        r'employee_id': employee_id,
      });

  InputCreateEmployeeWalletInput._(this._$data);

  factory InputCreateEmployeeWalletInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('title')) {
      final l$title = data['title'];
      result$data['title'] = (l$title as String?);
    }
    final l$amount = data['amount'];
    result$data['amount'] = (l$amount as num).toDouble();
    if (data.containsKey('payment_method')) {
      final l$payment_method = data['payment_method'];
      result$data['payment_method'] = l$payment_method == null
          ? null
          : fromJsonEnumPaymentMethod((l$payment_method as String));
    }
    if (data.containsKey('description')) {
      final l$description = data['description'];
      result$data['description'] = (l$description as String?);
    }
    if (data.containsKey('attachment')) {
      final l$attachment = data['attachment'];
      result$data['attachment'] = (l$attachment as String?);
    }
    final l$employee_id = data['employee_id'];
    result$data['employee_id'] = (l$employee_id as String);
    return InputCreateEmployeeWalletInput._(result$data);
  }

  Map<String, dynamic> _$data;

  String? get title => (_$data['title'] as String?);

  double get amount => (_$data['amount'] as double);

  EnumPaymentMethod? get payment_method =>
      (_$data['payment_method'] as EnumPaymentMethod?);

  String? get description => (_$data['description'] as String?);

  String? get attachment => (_$data['attachment'] as String?);

  String get employee_id => (_$data['employee_id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('title')) {
      final l$title = title;
      result$data['title'] = l$title;
    }
    final l$amount = amount;
    result$data['amount'] = l$amount;
    if (_$data.containsKey('payment_method')) {
      final l$payment_method = payment_method;
      result$data['payment_method'] = l$payment_method == null
          ? null
          : toJsonEnumPaymentMethod(l$payment_method);
    }
    if (_$data.containsKey('description')) {
      final l$description = description;
      result$data['description'] = l$description;
    }
    if (_$data.containsKey('attachment')) {
      final l$attachment = attachment;
      result$data['attachment'] = l$attachment;
    }
    final l$employee_id = employee_id;
    result$data['employee_id'] = l$employee_id;
    return result$data;
  }

  CopyWithInputCreateEmployeeWalletInput<InputCreateEmployeeWalletInput>
      get copyWith => CopyWithInputCreateEmployeeWalletInput(
            this,
            (i) => i,
          );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputCreateEmployeeWalletInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (_$data.containsKey('title') != other._$data.containsKey('title')) {
      return false;
    }
    if (l$title != lOther$title) {
      return false;
    }
    final l$amount = amount;
    final lOther$amount = other.amount;
    if (l$amount != lOther$amount) {
      return false;
    }
    final l$payment_method = payment_method;
    final lOther$payment_method = other.payment_method;
    if (_$data.containsKey('payment_method') !=
        other._$data.containsKey('payment_method')) {
      return false;
    }
    if (l$payment_method != lOther$payment_method) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (_$data.containsKey('description') !=
        other._$data.containsKey('description')) {
      return false;
    }
    if (l$description != lOther$description) {
      return false;
    }
    final l$attachment = attachment;
    final lOther$attachment = other.attachment;
    if (_$data.containsKey('attachment') !=
        other._$data.containsKey('attachment')) {
      return false;
    }
    if (l$attachment != lOther$attachment) {
      return false;
    }
    final l$employee_id = employee_id;
    final lOther$employee_id = other.employee_id;
    if (l$employee_id != lOther$employee_id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$title = title;
    final l$amount = amount;
    final l$payment_method = payment_method;
    final l$description = description;
    final l$attachment = attachment;
    final l$employee_id = employee_id;
    return Object.hashAll([
      _$data.containsKey('title') ? l$title : const {},
      l$amount,
      _$data.containsKey('payment_method') ? l$payment_method : const {},
      _$data.containsKey('description') ? l$description : const {},
      _$data.containsKey('attachment') ? l$attachment : const {},
      l$employee_id,
    ]);
  }
}

abstract class CopyWithInputCreateEmployeeWalletInput<TRes> {
  factory CopyWithInputCreateEmployeeWalletInput(
    InputCreateEmployeeWalletInput instance,
    TRes Function(InputCreateEmployeeWalletInput) then,
  ) = _CopyWithImplInputCreateEmployeeWalletInput;

  factory CopyWithInputCreateEmployeeWalletInput.stub(TRes res) =
      _CopyWithStubImplInputCreateEmployeeWalletInput;

  TRes call({
    String? title,
    double? amount,
    EnumPaymentMethod? payment_method,
    String? description,
    String? attachment,
    String? employee_id,
  });
}

class _CopyWithImplInputCreateEmployeeWalletInput<TRes>
    implements CopyWithInputCreateEmployeeWalletInput<TRes> {
  _CopyWithImplInputCreateEmployeeWalletInput(
    this._instance,
    this._then,
  );

  final InputCreateEmployeeWalletInput _instance;

  final TRes Function(InputCreateEmployeeWalletInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? title = _undefined,
    Object? amount = _undefined,
    Object? payment_method = _undefined,
    Object? description = _undefined,
    Object? attachment = _undefined,
    Object? employee_id = _undefined,
  }) =>
      _then(InputCreateEmployeeWalletInput._({
        ..._instance._$data,
        if (title != _undefined) 'title': (title as String?),
        if (amount != _undefined && amount != null)
          'amount': (amount as double),
        if (payment_method != _undefined)
          'payment_method': (payment_method as EnumPaymentMethod?),
        if (description != _undefined) 'description': (description as String?),
        if (attachment != _undefined) 'attachment': (attachment as String?),
        if (employee_id != _undefined && employee_id != null)
          'employee_id': (employee_id as String),
      }));
}

class _CopyWithStubImplInputCreateEmployeeWalletInput<TRes>
    implements CopyWithInputCreateEmployeeWalletInput<TRes> {
  _CopyWithStubImplInputCreateEmployeeWalletInput(this._res);

  TRes _res;

  call({
    String? title,
    double? amount,
    EnumPaymentMethod? payment_method,
    String? description,
    String? attachment,
    String? employee_id,
  }) =>
      _res;
}

class InputCreateUserCouponInput {
  factory InputCreateUserCouponInput({required int points}) =>
      InputCreateUserCouponInput._({
        r'points': points,
      });

  InputCreateUserCouponInput._(this._$data);

  factory InputCreateUserCouponInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$points = data['points'];
    result$data['points'] = (l$points as int);
    return InputCreateUserCouponInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int get points => (_$data['points'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$points = points;
    result$data['points'] = l$points;
    return result$data;
  }

  CopyWithInputCreateUserCouponInput<InputCreateUserCouponInput> get copyWith =>
      CopyWithInputCreateUserCouponInput(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputCreateUserCouponInput) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$points = points;
    final lOther$points = other.points;
    if (l$points != lOther$points) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$points = points;
    return Object.hashAll([l$points]);
  }
}

abstract class CopyWithInputCreateUserCouponInput<TRes> {
  factory CopyWithInputCreateUserCouponInput(
    InputCreateUserCouponInput instance,
    TRes Function(InputCreateUserCouponInput) then,
  ) = _CopyWithImplInputCreateUserCouponInput;

  factory CopyWithInputCreateUserCouponInput.stub(TRes res) =
      _CopyWithStubImplInputCreateUserCouponInput;

  TRes call({int? points});
}

class _CopyWithImplInputCreateUserCouponInput<TRes>
    implements CopyWithInputCreateUserCouponInput<TRes> {
  _CopyWithImplInputCreateUserCouponInput(
    this._instance,
    this._then,
  );

  final InputCreateUserCouponInput _instance;

  final TRes Function(InputCreateUserCouponInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? points = _undefined}) =>
      _then(InputCreateUserCouponInput._({
        ..._instance._$data,
        if (points != _undefined && points != null) 'points': (points as int),
      }));
}

class _CopyWithStubImplInputCreateUserCouponInput<TRes>
    implements CopyWithInputCreateUserCouponInput<TRes> {
  _CopyWithStubImplInputCreateUserCouponInput(this._res);

  TRes _res;

  call({int? points}) => _res;
}

class InputOrderByClause {
  factory InputOrderByClause({
    required String column,
    required EnumSortOrder order,
  }) =>
      InputOrderByClause._({
        r'column': column,
        r'order': order,
      });

  InputOrderByClause._(this._$data);

  factory InputOrderByClause.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$column = data['column'];
    result$data['column'] = (l$column as String);
    final l$order = data['order'];
    result$data['order'] = fromJsonEnumSortOrder((l$order as String));
    return InputOrderByClause._(result$data);
  }

  Map<String, dynamic> _$data;

  String get column => (_$data['column'] as String);

  EnumSortOrder get order => (_$data['order'] as EnumSortOrder);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$column = column;
    result$data['column'] = l$column;
    final l$order = order;
    result$data['order'] = toJsonEnumSortOrder(l$order);
    return result$data;
  }

  CopyWithInputOrderByClause<InputOrderByClause> get copyWith =>
      CopyWithInputOrderByClause(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is InputOrderByClause) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$column = column;
    final lOther$column = other.column;
    if (l$column != lOther$column) {
      return false;
    }
    final l$order = order;
    final lOther$order = other.order;
    if (l$order != lOther$order) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$column = column;
    final l$order = order;
    return Object.hashAll([
      l$column,
      l$order,
    ]);
  }
}

abstract class CopyWithInputOrderByClause<TRes> {
  factory CopyWithInputOrderByClause(
    InputOrderByClause instance,
    TRes Function(InputOrderByClause) then,
  ) = _CopyWithImplInputOrderByClause;

  factory CopyWithInputOrderByClause.stub(TRes res) =
      _CopyWithStubImplInputOrderByClause;

  TRes call({
    String? column,
    EnumSortOrder? order,
  });
}

class _CopyWithImplInputOrderByClause<TRes>
    implements CopyWithInputOrderByClause<TRes> {
  _CopyWithImplInputOrderByClause(
    this._instance,
    this._then,
  );

  final InputOrderByClause _instance;

  final TRes Function(InputOrderByClause) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? column = _undefined,
    Object? order = _undefined,
  }) =>
      _then(InputOrderByClause._({
        ..._instance._$data,
        if (column != _undefined && column != null)
          'column': (column as String),
        if (order != _undefined && order != null)
          'order': (order as EnumSortOrder),
      }));
}

class _CopyWithStubImplInputOrderByClause<TRes>
    implements CopyWithInputOrderByClause<TRes> {
  _CopyWithStubImplInputOrderByClause(this._res);

  TRes _res;

  call({
    String? column,
    EnumSortOrder? order,
  }) =>
      _res;
}

enum EnumVerifyEnum { Verify, Reset, $unknown }

String toJsonEnumVerifyEnum(EnumVerifyEnum e) {
  switch (e) {
    case EnumVerifyEnum.Verify:
      return r'Verify';
    case EnumVerifyEnum.Reset:
      return r'Reset';
    case EnumVerifyEnum.$unknown:
      return r'$unknown';
  }
}

EnumVerifyEnum fromJsonEnumVerifyEnum(String value) {
  switch (value) {
    case r'Verify':
      return EnumVerifyEnum.Verify;
    case r'Reset':
      return EnumVerifyEnum.Reset;
    default:
      return EnumVerifyEnum.$unknown;
  }
}

enum EnumPaymentMethod { ONLINE_METHOD, BANK_TRANSFER, $unknown }

String toJsonEnumPaymentMethod(EnumPaymentMethod e) {
  switch (e) {
    case EnumPaymentMethod.ONLINE_METHOD:
      return r'ONLINE_METHOD';
    case EnumPaymentMethod.BANK_TRANSFER:
      return r'BANK_TRANSFER';
    case EnumPaymentMethod.$unknown:
      return r'$unknown';
  }
}

EnumPaymentMethod fromJsonEnumPaymentMethod(String value) {
  switch (value) {
    case r'ONLINE_METHOD':
      return EnumPaymentMethod.ONLINE_METHOD;
    case r'BANK_TRANSFER':
      return EnumPaymentMethod.BANK_TRANSFER;
    default:
      return EnumPaymentMethod.$unknown;
  }
}

enum EnumUserTypeEnum { Customer, Company, Puncher, $unknown }

String toJsonEnumUserTypeEnum(EnumUserTypeEnum e) {
  switch (e) {
    case EnumUserTypeEnum.Customer:
      return r'Customer';
    case EnumUserTypeEnum.Company:
      return r'Company';
    case EnumUserTypeEnum.Puncher:
      return r'Puncher';
    case EnumUserTypeEnum.$unknown:
      return r'$unknown';
  }
}

EnumUserTypeEnum fromJsonEnumUserTypeEnum(String value) {
  switch (value) {
    case r'Customer':
      return EnumUserTypeEnum.Customer;
    case r'Company':
      return EnumUserTypeEnum.Company;
    case r'Puncher':
      return EnumUserTypeEnum.Puncher;
    default:
      return EnumUserTypeEnum.$unknown;
  }
}

enum EnumSortOrder { ASC, DESC, $unknown }

String toJsonEnumSortOrder(EnumSortOrder e) {
  switch (e) {
    case EnumSortOrder.ASC:
      return r'ASC';
    case EnumSortOrder.DESC:
      return r'DESC';
    case EnumSortOrder.$unknown:
      return r'$unknown';
  }
}

EnumSortOrder fromJsonEnumSortOrder(String value) {
  switch (value) {
    case r'ASC':
      return EnumSortOrder.ASC;
    case r'DESC':
      return EnumSortOrder.DESC;
    default:
      return EnumSortOrder.$unknown;
  }
}

enum EnumOrderByRelationAggregateFunction { COUNT, $unknown }

String toJsonEnumOrderByRelationAggregateFunction(
    EnumOrderByRelationAggregateFunction e) {
  switch (e) {
    case EnumOrderByRelationAggregateFunction.COUNT:
      return r'COUNT';
    case EnumOrderByRelationAggregateFunction.$unknown:
      return r'$unknown';
  }
}

EnumOrderByRelationAggregateFunction
    fromJsonEnumOrderByRelationAggregateFunction(String value) {
  switch (value) {
    case r'COUNT':
      return EnumOrderByRelationAggregateFunction.COUNT;
    default:
      return EnumOrderByRelationAggregateFunction.$unknown;
  }
}

enum EnumOrderByRelationWithColumnAggregateFunction {
  AVG,
  MIN,
  MAX,
  SUM,
  COUNT,
  $unknown
}

String toJsonEnumOrderByRelationWithColumnAggregateFunction(
    EnumOrderByRelationWithColumnAggregateFunction e) {
  switch (e) {
    case EnumOrderByRelationWithColumnAggregateFunction.AVG:
      return r'AVG';
    case EnumOrderByRelationWithColumnAggregateFunction.MIN:
      return r'MIN';
    case EnumOrderByRelationWithColumnAggregateFunction.MAX:
      return r'MAX';
    case EnumOrderByRelationWithColumnAggregateFunction.SUM:
      return r'SUM';
    case EnumOrderByRelationWithColumnAggregateFunction.COUNT:
      return r'COUNT';
    case EnumOrderByRelationWithColumnAggregateFunction.$unknown:
      return r'$unknown';
  }
}

EnumOrderByRelationWithColumnAggregateFunction
    fromJsonEnumOrderByRelationWithColumnAggregateFunction(String value) {
  switch (value) {
    case r'AVG':
      return EnumOrderByRelationWithColumnAggregateFunction.AVG;
    case r'MIN':
      return EnumOrderByRelationWithColumnAggregateFunction.MIN;
    case r'MAX':
      return EnumOrderByRelationWithColumnAggregateFunction.MAX;
    case r'SUM':
      return EnumOrderByRelationWithColumnAggregateFunction.SUM;
    case r'COUNT':
      return EnumOrderByRelationWithColumnAggregateFunction.COUNT;
    default:
      return EnumOrderByRelationWithColumnAggregateFunction.$unknown;
  }
}

enum EnumTrashed { ONLY, WITH, WITHOUT, $unknown }

String toJsonEnumTrashed(EnumTrashed e) {
  switch (e) {
    case EnumTrashed.ONLY:
      return r'ONLY';
    case EnumTrashed.WITH:
      return r'WITH';
    case EnumTrashed.WITHOUT:
      return r'WITHOUT';
    case EnumTrashed.$unknown:
      return r'$unknown';
  }
}

EnumTrashed fromJsonEnumTrashed(String value) {
  switch (value) {
    case r'ONLY':
      return EnumTrashed.ONLY;
    case r'WITH':
      return EnumTrashed.WITH;
    case r'WITHOUT':
      return EnumTrashed.WITHOUT;
    default:
      return EnumTrashed.$unknown;
  }
}

enum Enum__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown
}

String toJsonEnum__TypeKind(Enum__TypeKind e) {
  switch (e) {
    case Enum__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum__TypeKind.UNION:
      return r'UNION';
    case Enum__TypeKind.ENUM:
      return r'ENUM';
    case Enum__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum__TypeKind.LIST:
      return r'LIST';
    case Enum__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum__TypeKind fromJsonEnum__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum__TypeKind.INTERFACE;
    case r'UNION':
      return Enum__TypeKind.UNION;
    case r'ENUM':
      return Enum__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum__TypeKind.LIST;
    case r'NON_NULL':
      return Enum__TypeKind.NON_NULL;
    default:
      return Enum__TypeKind.$unknown;
  }
}

enum Enum__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown
}

String toJsonEnum__DirectiveLocation(Enum__DirectiveLocation e) {
  switch (e) {
    case Enum__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum__DirectiveLocation.UNION:
      return r'UNION';
    case Enum__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum__DirectiveLocation fromJsonEnum__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
