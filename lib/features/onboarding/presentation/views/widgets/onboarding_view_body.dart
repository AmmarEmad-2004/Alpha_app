import 'package:alpha_app/core/utils/app_images.dart';

import 'package:alpha_app/core/utils/styles.dart';

import 'package:alpha_app/features/onboarding/presentation/views/widgets/auth_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
      child: Column(
        children: [
          SizedBox(height: 80.h), // استبدال MediaQuery
          Expanded(
            flex: 4, // تعيين flex ليوازن المساحات
            child: SvgPicture.asset(
              fit: BoxFit.contain,
              AppImages.imagesBro,
              height: 300.h,
              width: 300.w,
            ),
          ),
          SizedBox(height: 30.h),
          Text(
            'Welcome',
            style: Styles.textStyle24.copyWith(
              fontSize: 36.sp,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            'Read without limits',
            style: Styles.textStyle18.copyWith(color: Colors.white),
          ),
          SizedBox(height: 20.h),
          Expanded(
            flex: 2, // جعل الأزرار تأخذ جزء مناسب من الشاشة
            child: AuthSection(),
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
