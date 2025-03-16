import 'package:alpha_app/core/utils/constants.dart';
import 'package:alpha_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    this.color = kPrimaryColor,
    required this.textColor,
    this.sideColor = kPrimaryColor,
  });

  final String text;
  final Color color, textColor, sideColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity, // جعل الزر يمتد بكامل العرض
      height: 50.h,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          foregroundColor: textColor,
          padding: EdgeInsets.symmetric(vertical: 12.h),
          shape: RoundedRectangleBorder(
            side: BorderSide(color: sideColor, width: 1.5),
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        onPressed: () {},
        child: Text(text, style: Styles.textStyle18),
      ),
    );
  }
}