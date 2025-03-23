import 'package:alpha_app/core/utils/app_routers.dart';
import 'package:alpha_app/core/utils/constants.dart';
import 'package:alpha_app/core/widgets/custom_text_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class AuthSection extends StatelessWidget {
  const AuthSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomTextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouters.signupView);
          },
          color: Colors.white,
          textColor: kPrimaryColor,
          text: 'Create Account',
        ),
        SizedBox(height: 10.h),
        CustomTextButton(
          onPressed: () {
            debugPrint("Navigating to loginView");
            GoRouter.of(context).push(AppRouters.loginView);
          },
          color: kPrimaryColor,
          textColor: Colors.white,
          sideColor: Colors.white,
          text: 'Log In as Guest',
        ),
      ],
    );
  }
}
