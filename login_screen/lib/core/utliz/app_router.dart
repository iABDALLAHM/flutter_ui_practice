import 'package:go_router/go_router.dart';
import 'package:login_screen/features/auth_variants/variant_1/presentation/views/login_view.dart';
import 'package:login_screen/features/auth_variants/variant_1/presentation/views/register_view.dart';

class AppRouter {
  static const kRegisterView = "/Register";
  static const kLoginView = "/";
  static GoRouter routes = GoRouter(
    routes: [
      GoRoute(path:kLoginView, builder: (context, state) => LoginView()),
      GoRoute(path: kRegisterView, builder: (context, state) => RegisterView()),
    ],
  );
}
