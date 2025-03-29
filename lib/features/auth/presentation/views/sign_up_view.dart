import 'package:alpha_app/core/di/auth_service_locator.dart';
import 'package:alpha_app/features/auth/data/repos/auth_repo_implementation.dart';
import 'package:alpha_app/features/auth/presentation/manager/create_user_cubit/create_user_cubit.dart';
import 'package:alpha_app/features/auth/presentation/views/widgets/sign_up_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateUserCubit(getIt<AuthRepoImplementation>()),
      child: Scaffold(body: SignUpViewBody()),
    );
  }
}
