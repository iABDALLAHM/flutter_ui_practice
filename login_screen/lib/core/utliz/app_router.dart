import 'package:go_router/go_router.dart';
import 'package:login_screen/features/auth_variants/variant_1/presentation/views/variant1_login_view.dart';
import 'package:login_screen/features/auth_variants/variant_1/presentation/views/variant1_register_view.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/variant2_login_view.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/variant2_register_view.dart';
import 'package:login_screen/features/auth_variants/variant_3/presentation/views/variant3_login_view.dart';
import 'package:login_screen/features/auth_variants/variant_3/presentation/views/variant3_register_view.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/variant4_login_view.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/variant4_register_view.dart';
import 'package:login_screen/features/auth_variants/variant_5/presentation/views/variant5_auth_view.dart';

class AppRouter {
  static const kVariant1Login = "/variant1-login";
  static const kVariant1Register = "/variant1-register";
  static const kVariant2Login = "/variant2-login";
  static const kVariant2Register = "/variant2-register";
  static const kVariant3Login = "/variant3-login";
  static const kVariant3Register = "/variant3-register";
  static const kVariant4Login = "/variant4-login";
  static const kVariant4Register = "/variant4-register";
  static const kVariant5AuthView = "/variant5-login";
  static GoRouter routes = GoRouter(
    initialLocation: kVariant5AuthView,
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
      GoRoute(
        path: kVariant3Login,
        builder: (context, state) => Variant3LoginView(),
      ),
      GoRoute(
        path: kVariant3Register,
        builder: (context, state) => Variant3RegisterView(),
      ),
      GoRoute(
        path: kVariant4Login,
        builder: (context, state) => Variant4LoginView(),
      ),
      GoRoute(
        path: kVariant4Register,
        builder: (context, state) => Variant4RegisterView(),
      ),
      GoRoute(
        path: kVariant5AuthView,
        builder: (context, state) => Variant5AuthView(),
      ),
    ],
  );
}
