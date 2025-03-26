import 'package:alpha_app/core/utils/app_routers.dart';
import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/core/widgets/custom_text_buttom.dart';
import 'package:alpha_app/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(hintText: 'Name', icon: Icons.cancel),
        SizedBox(height: 25.h),
        CustomTextField(hintText: 'UserName', icon: Icons.cancel),
        SizedBox(height: 25.h),
        CustomTextField(hintText: 'Email', icon: Icons.cancel),
        SizedBox(height: 25.h),
        CustomTextField(hintText: 'Pasword', icon: Icons.visibility),
        SizedBox(height: 41.h),
        CustomTextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouters.homeView);
          },
          style: Styles.textStyle18,
          text: 'Create Account',
        ),
      ],
    );
  }
}
