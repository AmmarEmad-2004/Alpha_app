import 'package:alpha_app/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static var textStyleReqular = TextStyle(
    fontSize: 10.sp,
    color: Color(0xff9D9D9D),
    fontFamily: kHelveticaFont,
    fontWeight: FontWeight.w400,
  );
  static var textStyle14 = TextStyle(
    fontSize: 14.sp,
    color: iColor,
    fontFamily: kHelveticaFont,
    fontWeight: FontWeight.w400,
  );

  static var textStyle16 = TextStyle(
    fontSize: 16.sp,
    fontFamily: kHelveticaFont,
    fontWeight: FontWeight.w400,
  );
  static var textStyle18 = TextStyle(
    fontSize: 18.sp,
    fontFamily: kHelveticaFont,
    fontWeight: FontWeight.w400,
  );
  static var textStyle20 = TextStyle(
    fontSize: 20.sp,
    fontFamily: GoogleFonts.poppins().fontFamily,
    fontWeight: FontWeight.bold,
  );

  static var textStyle24 = TextStyle(
    fontSize: 24.sp,
    color: Color(0xff19191B),
    fontFamily: kHelveticaFont,
    fontWeight: FontWeight.bold,
  );
}
