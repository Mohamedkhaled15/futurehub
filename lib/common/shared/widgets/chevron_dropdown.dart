import 'package:future_hub/common/shared/utils/chevron_input_decoration.dart';
import 'package:flutter/material.dart';

class ChevronDropdown<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> items;
  final String? hintText;
  final String? labelText;
  final ValueChanged<T?>? onChanged;
  final FormFieldValidator<T>? validator;
  final InputDecoration decoration;
  final Widget? icon;

  const ChevronDropdown({
    super.key,
    required this.items,
    this.hintText,
    this.labelText,
    this.onChanged,
    this.validator,
    this.decoration = const InputDecoration(),
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      onChanged: onChanged,
      validator: validator,
      items: items,
      decoration: createChevronInputDecoration(
        decoration: decoration,
        hintText: hintText,
        labelText: labelText,
        icon: icon,
      ),
    );
  }
}
