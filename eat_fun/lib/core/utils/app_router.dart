import 'package:eat_fun/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static String kSplashView = "/";
  static String kLoginView = "/login-view";
  static String kRegisterView = "/register-view";
  static String kHomeView = "/home-view";
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(path: kSplashView, builder: (context, state) => SplashView()),
      // GoRoute(path: kLoginView,builder: (context, state) => ),
      // GoRoute(path: kRegisterView,builder: (context, state) => ),
      // GoRoute(path: kHomeView,builder: (context, state) => ),
    ],
  );
}
