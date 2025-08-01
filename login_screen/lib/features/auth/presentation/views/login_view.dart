import 'package:flutter/material.dart';
import 'package:login_screen/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(appBar: _buildAppBar(), body: LoginViewBody());
  }

  AppBar _buildAppBar() {
    return AppBar();
  }
}
