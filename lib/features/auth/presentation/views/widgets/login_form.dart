import 'package:alpha_app/core/utils/app_routers.dart';
import 'package:alpha_app/core/widgets/custom_text_buttom.dart';
import 'package:alpha_app/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(hintText: 'Username', icon: Icons.cancel),
        SizedBox(height: 25),
        CustomTextField(hintText: 'Password', icon: Icons.visibility),
        SizedBox(height: 55),
        CustomTextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouters.homeView);
          },
          text: 'Log In',
        ),
      ],
    );
  }
}
