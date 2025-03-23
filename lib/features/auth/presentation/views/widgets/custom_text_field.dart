import 'package:alpha_app/core/utils/constants.dart';
import 'package:alpha_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.icon,
    this.obscureText = false,
  });
  final String hintText;
  final IconData icon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      showCursor: true,
      cursorColor: formColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Styles.textStyle16.copyWith(
          color: formColor.withValues(alpha: 0.5),
        ),
        suffixIcon: Icon(icon, color: iColor),
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