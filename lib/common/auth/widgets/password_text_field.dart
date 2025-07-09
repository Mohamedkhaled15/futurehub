import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final String? hintText;
  final String? labelText;
  final String? initialValue;
  final bool readOnly;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final InputDecoration decoration;

  const PasswordTextField({
    super.key,
    this.hintText,
    this.labelText,
    this.initialValue,
    this.readOnly = false,
    this.controller,
    this.onChanged,
    this.validator,
    this.decoration = const InputDecoration(),
  });

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  // final bool _show = false;

  // void _toggle() {
  //   setState(() {
  //     _show = !_show;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container();
    // return ChevronTextField(
    //   password: !_show,
    //   labelText: widget.labelText,
    //   hintText: widget.hintText,
    //   icon: SvgPicture.asset('assets/icons/password.svg'),
    //   keyboardType: _show ? TextInputType.visiblePassword : null,
    //   decoration: widget.decoration.copyWith(
    //     suffixIcon: IconButton(
    //       onPressed: _toggle,
    //       icon: Icon(
    //         _show ? Icons.visibility : Icons.visibility_off,
    //         color: Palette.greyColor.shade500,
    //       ),
    //     ),
    //   ),
    //   initialValue: widget.initialValue,
    //   readOnly: widget.readOnly,
    //   controller: widget.controller,
    //   onChanged: widget.onChanged,
    //   validator: widget.validator,
    // );
  }
}
