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
import 'package:login_screen/features/auth_variants/variant_8/presentation/views/variant8_login_view.dart';
import 'package:login_screen/features/auth_variants/variant_8/presentation/views/variant8_register_view.dart';
import 'package:login_screen/features/auth_variants/variant_9/presentation/views/variant9_login_view.dart';
import 'package:login_screen/features/auth_variants/variant_9/presentation/views/variant9_register_view.dart';

class AppRouter {
  static const kVariant1LoginView = "/variant1-login";
  static const kVariant1RegisterView = "/variant1-register";
  static const kVariant2LoginView = "/variant2-login";
  static const kVariant2RegisterView = "/variant2-register";
  static const kVariant3LoginView = "/variant3-login";
  static const kVariant3RegisterView = "/variant3-register";
  static const kVariant4LoginView = "/variant4-login";
  static const kVariant4RegisterView = "/variant4-register";
  static const kVariant5AuthView = "/kVariant5AuthView";
  static const kVariant6LoginView = "/variant6-login";
  static const kVariant6RegisterView = "/variant6-register";
  static const kVariant7LoginView = "/variant7-login";
  static const kVariant7RegisterView = "/variant7-register";
  static const kVariant8LoginView = "/variant8-login";
  static const kVariant8RegisterView = "/variant8-register";
  static const kVariant9LoginView = "/variant9-login";
  static const kVariant9RegisterView = "/variant9-register";

  static GoRouter routes = GoRouter(
    initialLocation: kVariant8LoginView,
    routes: [
      GoRoute(
        path: kVariant1LoginView,
        builder: (context, state) => Variant1LoginView(),
      ),
      GoRoute(
        path: kVariant1RegisterView,
        builder: (context, state) => Variant1RegisterView(),
      ),
      GoRoute(
        path: kVariant2LoginView,
        builder: (context, state) => Variant2LoginView(),
      ),
      GoRoute(
        path: kVariant2RegisterView,
        builder: (context, state) => Variant2RegisterView(),
      ),
      GoRoute(
        path: kVariant3LoginView,
        builder: (context, state) => Variant3LoginView(),
      ),
      GoRoute(
        path: kVariant3RegisterView,
        builder: (context, state) => Variant3RegisterView(),
      ),
      GoRoute(
        path: kVariant4LoginView,
        builder: (context, state) => Variant4LoginView(),
      ),
      GoRoute(
        path: kVariant4RegisterView,
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
      GoRoute(
        path: kVariant8LoginView,
        builder: (context, state) => Variant8LoginView(),
      ),
      GoRoute(
        path: kVariant8RegisterView,
        builder: (context, state) => Variant8RegisterView(),
      ),
      GoRoute(
        path: kVariant9LoginView,
        builder: (context, state) => Variant9LoginView(),
      ),
      GoRoute(
        path: kVariant9RegisterView,
        builder: (context, state) => Variant9RegisterView(),
      ),
    ],
  );
}
