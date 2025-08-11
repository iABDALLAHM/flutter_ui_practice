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
import 'package:login_screen/features/auth_variants/variant_6/presentation/views/variant6_login_view.dart';
import 'package:login_screen/features/auth_variants/variant_6/presentation/views/variant6_register_view.dart';
import 'package:login_screen/features/auth_variants/variant_7/presentation/views/variant7_login_view.dart';
import 'package:login_screen/features/auth_variants/variant_7/presentation/views/variant7_register_view.dart';

class AppRouter {
  static const kVariant1Login = "/variant1-login";
  static const kVariant1Register = "/variant1-register";
  static const kVariant2Login = "/variant2-login";
  static const kVariant2Register = "/variant2-register";
  static const kVariant3Login = "/variant3-login";
  static const kVariant3Register = "/variant3-register";
  static const kVariant4Login = "/variant4-login";
  static const kVariant4Register = "/variant4-register";
  static const kVariant5AuthView = "/kVariant5AuthView";
  static const kVariant6LoginView = "/variant6-login";
  static const kVariant6RegisterView = "/variant6-register";
  static const kVariant7LoginView = "/variant7-login";
  static const kVariant7RegisterView = "/variant7-register";

  static GoRouter routes = GoRouter(
    initialLocation: kVariant7LoginView,
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
      GoRoute(
        path: kVariant6LoginView,
        builder: (context, state) => Variant6LoginView(),
      ),
      GoRoute(
        path: kVariant6RegisterView,
        builder: (context, state) => Variant6RegisterView(),
      ),
      GoRoute(
        path: kVariant7LoginView,
        builder: (context, state) => Variant7LoginView(),
      ),
      GoRoute(
        path: kVariant7RegisterView,
        builder: (context, state) => Variant7RegisterView(),
      ),
    ],
  );
}
