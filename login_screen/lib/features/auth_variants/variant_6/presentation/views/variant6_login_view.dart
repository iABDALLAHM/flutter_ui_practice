import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_6/presentation/views/widgets/variant6_login_view_body.dart';

class Variant6LoginView extends StatelessWidget {
  const Variant6LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 110, 125, 151),
      body: SafeArea(child: Variant6LoginViewBody()),
    );
  }
}
