import 'package:flutter/services.dart';

class EnglishDigitsOnlyFormatter extends TextInputFormatter {
  static final RegExp _validPattern = RegExp(r'^[0-9]*\.?[0-9]*$');
  static final RegExp _arabicIndicDigits =
      RegExp(r'[\u0660-\u0669\u06F0-\u06F9]');

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Block Arabic/Indic digits
    if (_arabicIndicDigits.hasMatch(newValue.text)) {
      return oldValue;
    }

    // Block negative numbers and commas
    if (newValue.text.contains('-') || newValue.text.contains(',')) {
      return oldValue;
    }

    // Only allow numbers and optional single decimal point
    if (_validPattern.hasMatch(newValue.text)) {
      return newValue;
    }

    return oldValue;
  }
}
