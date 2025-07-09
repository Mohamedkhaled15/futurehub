import 'package:equatable/equatable.dart';

class UserGift extends Equatable {
  final String id;
  final int youGotAGift;
  final int youGotAGiftStatus;
  final String referenceNumber;
  final String barcode;
  final String giftVoucherLabel;
  final String giftVoucherValue;
  final String expiryDate;
  final String redemptionInstructions;
  final String giftCardPin;
  final double amount;
  final int points;

  const UserGift(
      {required this.id,
      required this.youGotAGift,
      required this.youGotAGiftStatus,
      required this.barcode,
      required this.referenceNumber,
      required this.expiryDate,
      required this.giftVoucherLabel,
      required this.giftVoucherValue,
      required this.redemptionInstructions,
      required this.giftCardPin,
      required this.points,
      required this.amount});

  @override
  List<Object?> get props => [
        id,
        youGotAGift,
        youGotAGiftStatus,
        barcode,
        referenceNumber,
        expiryDate,
        giftVoucherLabel,
        giftVoucherValue,
        redemptionInstructions,
        giftCardPin,
        amount,
        points
      ];
}
