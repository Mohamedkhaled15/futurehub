import 'package:equatable/equatable.dart';
import 'package:future_hub/common/auth/models/user.dart';

abstract class AuthState extends Equatable {}

class AuthLoading extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthLoadFailed extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthSignedOut extends AuthState {
  final String phone;
  final String otp;

  AuthSignedOut({
    this.phone = '',
    this.otp = '',
  });

  @override
  List<Object?> get props => [phone, otp];
}

class AuthEmployeeSigningIn extends AuthSignedOut {
  final String name;
  final String company;

  AuthEmployeeSigningIn({
    required this.name,
    required super.phone,
    required super.otp,
    required this.company,
  });

  @override
  List<Object?> get props => [name, company, phone, otp];
}

class AuthSignedIn extends AuthState {
  final User user;
  final String token;

  AuthSignedIn({
    required this.user,
    required this.token,
  });

  @override
  List<Object?> get props => [user];
}

class ForceUpdateRequired extends AuthState {
  @override
  List<Object?> get props => [];
}

class SignedOutDueToUpdate extends AuthState {
  @override
  List<Object?> get props => [];
}

// class AppInitialized extends AuthState {
//   @override
//   List<Object?> get props => [];
// }
