import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_1/presentation/views/widgets/variant1_login_view_body.dart';

class Variant1LoginView extends StatelessWidget {
  const Variant1LoginView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: Variant1LoginViewBody()),
    );
  }
}
