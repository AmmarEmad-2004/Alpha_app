import 'package:alpha_app/features/auth/presentation/views/login_view.dart';
import 'package:alpha_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const loginView = '/loginView';
  static final goRouter = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const OnboardingView()),

      GoRoute(path: loginView, builder: (context, state) => const LoginView()),
    ],
  );
}
