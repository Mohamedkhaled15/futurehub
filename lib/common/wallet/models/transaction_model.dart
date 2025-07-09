import 'package:future_hub/common/auth/models/user.dart';
import 'package:future_hub/common/shared/models/order_model.dart';
import 'package:equatable/equatable.dart';

class Transaction extends Equatable {
  final String id;
  final String title;
  final Wallet? wallet;
  final String transactionNumber;
  final String amount;
  final String type;
  final String paymentMethod;
  final Order? order;
  final String description;
  final String createdAt;
  final String attachment;

  const Transaction({
    required this.id,
    required this.title,
    required this.type,
    required this.description,
    this.order,
    this.wallet,
    required this.amount,
    required this.paymentMethod,
    required this.createdAt,
    required this.attachment,
    required this.transactionNumber,
  });

  @override
  List<Object?> get props => [
        id,
        amount,
        createdAt,
        type,
        title,
        type,
        description,
        order,
        wallet,
        amount,
        paymentMethod,
        createdAt,
        attachment,
        transactionNumber
      ];
}

class Wallet extends Equatable {
  final User? customer;

  const Wallet({this.customer});

  @override
  List<Object?> get props => [customer];
}
