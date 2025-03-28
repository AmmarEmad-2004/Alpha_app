import 'package:alpha_app/core/di/auth_service_locator.dart';
import 'package:alpha_app/features/auth/data/repos/auth_repo_implementation.dart';
import 'package:alpha_app/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:alpha_app/features/auth/presentation/views/widgets/login_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        getIt<AuthRepoImplementation>(),
      ),
      child: Scaffold(body: LoginViewBody()),
    );
  }
}
