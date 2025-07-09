import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';

InputBorder _border(final Color color) {
  return UnderlineInputBorder(
    borderSide: BorderSide(
      width: 3,
      color: color,
    ),
  );
}

InputDecoration createChevronInputDecoration({
  required InputDecoration decoration,
  String? hintText,
  String? labelText,
  String? initialValue,
  Widget? icon,
  bool password = false,
}) {
  return decoration.copyWith(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    labelText: labelText,
    hintText: hintText,
    labelStyle: TextStyle(color: Palette.greyColor.shade500),
    prefixIconConstraints: const BoxConstraints(
      minHeight: 20.0,
      minWidth: 20.0,
    ),
    prefixIcon: icon != null
        ? SizedBox(
            width: 30.0,
            child: ColorFiltered(
              colorFilter: const ColorFilter.mode(
                Color(0xFFC1C1C1),
                BlendMode.srcIn,
              ),
              child: icon,
            ),
          )
        : null,
    contentPadding: const EdgeInsets.symmetric(
      horizontal: 15,
      vertical: 20,
    ),
    enabledBorder: _border(Palette.greyColor.shade200),
    focusedBorder: _border(Palette.primaryColor),
    errorBorder: _border(Palette.dangerColor.withOpacity(0.5)),
    focusedErrorBorder: _border(Palette.dangerColor),
  );
}
