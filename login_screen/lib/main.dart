import 'package:flutter/material.dart';
import 'package:login_screen/features/auth/presentation/views/login_view.dart';

void main() {
  runApp(const Login());
}

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Screen',
      home: LoginView(),
    );
  }
}
