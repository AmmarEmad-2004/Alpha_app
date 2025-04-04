import 'package:alpha_app/core/utils/app_images.dart';
import 'package:alpha_app/core/utils/app_routers.dart';
import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/features/auth/presentation/views/widgets/sign_up_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 36.h),
            Image.asset(
              AppImages.imagesLogo,
              height: 139,
              width: 139,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 41.h),
            SignUpForm(),
            SizedBox(height: 27.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account? ", style: Styles.textStyle14),
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(AppRouters.loginView);
                  },
                  child: Text(
                    "Log in here",
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
