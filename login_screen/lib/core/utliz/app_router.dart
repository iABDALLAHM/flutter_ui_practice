import 'package:go_router/go_router.dart';
import 'package:login_screen/features/auth_variants/variant_1/presentation/views/variant1_login_view.dart';
import 'package:login_screen/features/auth_variants/variant_1/presentation/views/variant1_register_view.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/variant2_login_view.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/variant2_register_view.dart';

class AppRouter {
  static const kVariant1Login = "/variant1-login";
  static const kVariant1Register = "/variant1-register";
  static const kVariant2Login = "/variant2-login";
  static const kVariant2Register = "/variant2-register";
  static GoRouter routes = GoRouter(
    initialLocation: kVariant2Login,
    routes: [
      GoRoute(
        path: kVariant1Login,
        builder: (context, state) => Variant1LoginView(),
      ),
      GoRoute(
        path: kVariant1Register,
        builder: (context, state) => Variant1RegisterView(),
      ),
      GoRoute(
        path: kVariant2Login,
        builder: (context, state) => Variant2LoginView(),
      ),
      GoRoute(
        path: kVariant2Register,
        builder: (context, state) => Variant2RegisterView(),
      ),
    ],
  );
}
