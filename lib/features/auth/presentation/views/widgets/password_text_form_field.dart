import 'package:alpha_app/core/utils/constants.dart';
import 'package:alpha_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class PasswordTextFormField extends StatelessWidget {
  const PasswordTextFormField({
    super.key,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
    this.onChanged, this.onPressed,
  });
  final String hintText;
  final IconData icon;
  final bool obscureText;
  final Function(String)? onChanged;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'this field is required';
        } else {
          return null;
        }
      },
      onChanged: onChanged,
      obscureText: obscureText,
      showCursor: true,
      cursorColor: formColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Styles.textStyle16.copyWith(
          color: formColor.withValues(alpha: 0.5),
        ),
        suffixIcon: IconButton(onPressed: onPressed, icon: Icon(icon, color: iColor),),
        fillColor: Colors.grey.shade400,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: formColor.withValues(alpha: 0.5)),
          borderRadius: BorderRadius.circular(5),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: formColor.withValues(alpha: 0.5)),
          borderRadius: BorderRadius.circular(5),
        ),
      ),
    );
  }
}
