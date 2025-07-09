import 'package:future_hub/common/shared/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? control;
  final FocusNode? focusNode;
  final String hintText;
  final TextInputAction textInputAction;
  final TextInputType? inputType;
  final String? Function(String?) validateFunc;
  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final Function(String?)? onSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final String? initialValue;
  final bool readOnly;
  final bool obscureText;
  final int? minLines;
  final bool? saved;
  final bool isPriceField;
  final bool? enabled;
  final String? label;
  final String? prefix;
  final Widget? suffixIcon;
  final bool? isPassword;
  final Widget? prefixIcon;
  final EdgeInsets? scrollPadding;
  final Color? focusedBorderColor;
  final bool error;
  final Iterable<String>? autoFill;
  final double? fontSize;
  final bool isHome;
  final bool haveBorderSide;
  final double radius;
  final Color? fillColor;

  const CustomTextField({
    super.key,
    this.saved,
    this.control,
    this.onSaved,
    this.onSubmitted,
    this.readOnly = false,
    this.inputFormatters,
    this.initialValue,
    required this.hintText,
    this.textInputAction = TextInputAction.done,
    this.inputType = TextInputType.text,
    required this.validateFunc,
    this.onChanged,
    this.obscureText = false,
    this.minLines,
    this.isPriceField = false,
    this.enabled = true,
    this.label,
    this.prefix,
    this.suffixIcon,
    this.isPassword = false,
    this.prefixIcon,
    this.scrollPadding,
    this.focusedBorderColor,
    this.focusNode,
    this.autoFill,
    this.error = false,
    this.fontSize,
    this.isHome = false,
    this.haveBorderSide = false,
    this.radius = 0,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: isHome
          ? AutovalidateMode.disabled
          : AutovalidateMode.onUserInteraction,
      autofillHints: autoFill,
      onFieldSubmitted: onSubmitted,
      style: TextStyle(
        color: Palette.blackColor,
        fontWeight: FontWeight.normal,
        fontSize: fontSize ?? 23,
        letterSpacing: 0,
      ),
      focusNode: focusNode,
      scrollPadding: scrollPadding ?? const EdgeInsets.only(bottom: 0),
      enabled: enabled,
      readOnly: readOnly,
      onSaved: onSaved,
      controller: control,
      onChanged: onChanged,
      validator: validateFunc,
      autocorrect: false,
      keyboardType: inputType,
      obscureText: obscureText,
      obscuringCharacter: '●',
      textInputAction: textInputAction,
      inputFormatters: inputFormatters,
      initialValue: initialValue,
      minLines: minLines,
      maxLines: minLines != null ? (minLines! * 2) : 1,
      decoration: InputDecoration(
        // helperText: " ",
        suffixIcon: isPassword!
            ? GestureDetector(onTap: () {}, child: suffixIcon)
            : Padding(
                padding: const EdgeInsets.only(left: 20),
                child: suffixIcon,
              ),
        suffixIconConstraints: const BoxConstraints(maxHeight: 20),
        prefixText: prefix,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          borderSide: !haveBorderSide
              ? BorderSide.none
              : BorderSide(
                  width: 1,
                  color: focusedBorderColor ?? Palette.textFeildBorder),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: !haveBorderSide
              ? BorderSide.none
              : BorderSide(
                  width: 1,
                  color: focusedBorderColor ?? Palette.textFeildBorder),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: !haveBorderSide
              ? BorderSide.none
              : BorderSide(
                  width: 1,
                  color: focusedBorderColor ?? Palette.textFeildBorder),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: !haveBorderSide
              ? BorderSide.none
              : const BorderSide(
                  width: 1,
                  color: Palette.dangerColor,
                ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(radius),
          borderSide: !haveBorderSide
              ? BorderSide.none
              : const BorderSide(
                  width: 1,
                  color: Palette.dangerColor,
                ),
        ),
        errorStyle: const TextStyle(color: Colors.red),
        hintStyle: TextStyle(
          color: Palette.blackColor,
          fontWeight: FontWeight.w900,
          fontSize: fontSize ?? 20,
        ),
        labelStyle: WidgetStateTextStyle.resolveWith(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.focused)) {
              return const TextStyle(
                color: Palette.dangerColor,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                letterSpacing: 0,
              );
            } else if (states.contains(WidgetState.error)) {
              return const TextStyle(
                color: Colors.red,
                letterSpacing: 0,
              );
            } else {
              return const TextStyle(
                color: Palette.textGreyColor,
                fontSize: 21,
                fontWeight: FontWeight.normal,
                letterSpacing: 0,
              );
            }
          },
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        prefixIcon: prefixIcon,
        prefixIconConstraints: const BoxConstraints(maxHeight: 100),
        hintText: enabled != null ? hintText : "",
        labelText: label,
        suffixStyle: WidgetStateTextStyle.resolveWith(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.focused)) {
              return const TextStyle(
                  color: Palette.primaryColor, fontWeight: FontWeight.w700);
            } else if (states.contains(WidgetState.error)) {
              return const TextStyle(color: Colors.red);
            } else {
              return const TextStyle(
                color: Color.fromRGBO(189, 189, 189, 1),
              );
            }
          },
        ),
      ),
    );
  }
}
