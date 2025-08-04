import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/app_router.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Colors.white),
        // scaffoldBackgroundColor: Colors.white,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Auth Screens',
      routerConfig: AppRouter.routes,
    );
  }
}
