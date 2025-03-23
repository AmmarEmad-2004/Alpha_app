import 'package:alpha_app/core/utils/app_images.dart';
import 'package:alpha_app/core/utils/app_routers.dart';
import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/features/auth/presentation/views/widgets/login_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:go_router/go_router.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),

            Image.asset(
              AppImages.imagesLogo,
              height: 175.h,
              width: 175.w,
              fit: BoxFit.contain,
            ),

            // SvgPicture.asset('assets/images/logo.svg').
            SizedBox(height: 55),
            LoginForm(),

            SizedBox(height: 27),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don’t have an account yet? ", style: Styles.textStyle14),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouters.signupView);
                  },
                  child: Text(
                    "Sign up here",
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
