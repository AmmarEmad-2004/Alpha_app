import 'package:alpha_app/core/utils/app_routers.dart';
import 'package:alpha_app/core/utils/styles.dart';
import 'package:alpha_app/core/widgets/custom_text_buttom.dart';
import 'package:alpha_app/core/widgets/loading_widget.dart';
import 'package:alpha_app/core/widgets/snack_bar.dart';
import 'package:alpha_app/features/auth/presentation/manager/create_user_cubit/create_user_cubit.dart';
import 'package:alpha_app/features/auth/presentation/views/widgets/custom_form_text_field.dart';
import 'package:alpha_app/features/auth/presentation/views/widgets/password_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  String? email, password;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  bool isEmailEntered = false;
  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateUserCubit, CreateUserState>(
      listener: (context, state) {
        if (state is CreateUserSuccess) {
          ShowSnackBar.show(context, 'sucessfully created account');
          GoRouter.of(context).push(AppRouters.homeView);
        } else if (state is CreateUserFailuer) {
          ShowSnackBar.show(context, state.message);
        }
      },
      child: Form(
        key: formKey,

        child: Column(
          children: [
            CustomTextFormField(hintText: 'Name', icon: Icons.cancel),
            SizedBox(height: 25.h),
            CustomTextFormField(hintText: 'UserName', icon: Icons.cancel),
            SizedBox(height: 25.h),
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
            SizedBox(height: 25.h),
            PasswordTextFormField(
              hintText: 'Pasword',
              icon: Icons.visibility,
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
            SizedBox(height: 41.h),
            BlocBuilder<CreateUserCubit, CreateUserState>(
              builder: (context, state) {
                if (state is CreateUserloading) {
                  return const LoadingWidget();
                } else {
                  return CustomTextButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        BlocProvider.of<CreateUserCubit>(
                          context,
                        ).createUser(email!, password!);
                        GoRouter.of(context).push(AppRouters.homeView);
                      }
                    },
                    style: Styles.textStyle18,
                    text: 'Create Account',
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
