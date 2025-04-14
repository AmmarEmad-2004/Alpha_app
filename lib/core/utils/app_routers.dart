import 'package:alpha_app/features/auth/presentation/views/login_view.dart';
import 'package:alpha_app/features/auth/presentation/views/sign_up_view.dart';
import 'package:alpha_app/features/home/presentation/views/home_view.dart';

import 'package:alpha_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const loginView = '/loginView';
  static const signupView = '/signupView';
  static const homeView = '/homeView';

  static final goRouter = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const OnboardingView()),

      GoRoute(path: loginView, builder: (context, state) => const LoginView()),
      GoRoute(
        path: signupView,
        builder: (context, state) => const SignUpView(),
      ),
      GoRoute(path: homeView, builder: (context, state) => const HomeView()),
    ]   
  );
}
