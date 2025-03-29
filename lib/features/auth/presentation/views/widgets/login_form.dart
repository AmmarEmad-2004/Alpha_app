import 'package:alpha_app/core/utils/app_routers.dart';
import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/core/widgets/custom_text_buttom.dart';
import 'package:alpha_app/core/widgets/loading_widget.dart';
import 'package:alpha_app/core/widgets/snack_bar.dart';
import 'package:alpha_app/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:alpha_app/features/auth/presentation/views/widgets/custom_form_text_field.dart';
import 'package:alpha_app/features/auth/presentation/views/widgets/password_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  String? email, password;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  bool isEmailEntered = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          ShowSnackBar.show(context, 'Successfully Logged In');
          GoRouter.of(context).push(AppRouters.homeView);
        } else if (state is LoginFailuer) {
          // ShowSnackBar(text: state.message);
          ShowSnackBar.show(context, state.message);
        }
      },
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextFormField(
              hintText: 'Email',
              icon: isEmailEntered ? Icons.check_circle_sharp : Icons.cancel,
              onChanged: (value) {
                setState(() {
                  email = value;
                  isEmailEntered = value.isNotEmpty;
                });
              },
            ),
            const SizedBox(height: 25),
            PasswordTextFormField(
              hintText: 'Password',
              icon: isPasswordVisible ? Icons.visibility_off : Icons.visibility,
              obscureText: !isPasswordVisible,
              onPressed: () {
                setState(() {
                  isPasswordVisible = !isPasswordVisible;
                });
              },
              onChanged: (value) {
                password = value;
              },
            ),
            const SizedBox(height: 55),
            BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                if (state is LoginLoading) {
                  return const LoadingWidget();
                } else {
                  return CustomTextButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<LoginCubit>(
                          context,
                        ).login(email!, password!);
                      }
                    },
                    style: Styles.textStyle18,
                    text: 'Log In',
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
