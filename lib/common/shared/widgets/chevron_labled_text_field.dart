import 'package:flutter/material.dart';

class ChevronLabeledTextField extends StatelessWidget {
  final String label;
  final String? hintText;
  final String? initialValue;
  final bool password;
  final bool readOnly;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;
  final InputDecoration decoration;
  final Widget? icon;
  final bool enabled;

  const ChevronLabeledTextField({
    super.key,
    required this.label,
    this.hintText,
    this.initialValue,
    this.password = false,
    this.readOnly = false,
    this.keyboardType,
    this.controller,
    this.onChanged,
    this.validator,
    this.decoration = const InputDecoration(),
    this.icon,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: theme.textTheme.labelLarge,
        ),
        const SizedBox(height: 5.0),
        Text(
          hintText ?? '',
          style: theme.textTheme.labelLarge,
        ),
        // ChevronTextField(
        //   enabled: enabled,
        //   hintText: hintText,
        //   password: password,
        //   readOnly: readOnly,
        //   initialValue: initialValue,
        //   keyboardType: keyboardType,
        //   controller: controller,
        //   onChanged: onChanged,
        //   validator: validator,
        //   decoration: decoration,
        //   icon: icon,
        // ),
      ],
    );
  }
}
