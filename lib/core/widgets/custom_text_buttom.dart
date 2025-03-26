import 'package:alpha_app/core/utils/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.color = Colors.red,
    this.textColor = Colors.white,
    this.sideColor = kPrimaryColor,
    this.onPressed,
    this.height = 50,required this.style,
  });

  final String text;
  final void Function()? onPressed;
  final Color color, textColor, sideColor;
  final double height;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height.h,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textColor,
          padding: EdgeInsets.symmetric(vertical: 12.h),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: sideColor, width: 1.5),
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
        onPressed: onPressed,
        child: Text(text, style: style.copyWith(color: textColor)),
      ),
    );
  }
}
