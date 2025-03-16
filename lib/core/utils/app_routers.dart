import 'package:alpha_app/features/onboarding/presentation/views/onboarding_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static final goRouter = GoRouter(
    routes: [GoRoute(path: '/', builder: (context, state) => OnboardingView())],
  );
}
