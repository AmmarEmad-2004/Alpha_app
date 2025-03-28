import 'package:alpha_app/core/utils/app_routers.dart';
import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/core/widgets/custom_text_buttom.dart';
import 'package:alpha_app/features/auth/presentation/views/widgets/custom_form_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
    GlobalKey<FormState> formKey = GlobalKey();
  
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(hintText: 'Username', icon: Icons.cancel),
          SizedBox(height: 25),
          CustomTextFormField(hintText: 'Password', icon: Icons.visibility),
          SizedBox(height: 55),
          CustomTextButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouters.homeView);
            },
            style: Styles.textStyle18,
            text: 'Log In',
          ),
        ],
      ),
    );
  }
}
