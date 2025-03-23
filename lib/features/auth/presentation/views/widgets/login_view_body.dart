import 'package:alpha_app/core/utils/app_images.dart';

import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/core/widgets/custom_text_buttom.dart';
import 'package:alpha_app/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: Column(
        children: [
          SizedBox(height: 100),

          Image.asset(
            AppImages.imagesLogo,
            height: 175.h,
            width: 175.w,
            fit: BoxFit.contain,
          ),

          SizedBox(height: 55),

          CustomTextField(hintText: 'Username', icon: Icons.cancel),
          SizedBox(height: 25),
          CustomTextField(hintText: 'Password', icon: Icons.visibility),
          SizedBox(height: 55),
          CustomTextButton(text: 'Log In'),
          SizedBox(height: 27),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don’t have an account yet? ", style: Styles.textStyle14),
              Text(
                "Sign up here",
                style: Styles.textStyle14.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
