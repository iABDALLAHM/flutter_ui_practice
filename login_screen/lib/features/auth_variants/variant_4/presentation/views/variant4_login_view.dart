import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/widgets/variant4_login_view_body.dart';

class Variant4LoginView extends StatelessWidget {
  const Variant4LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: [0.4, 0.3],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.black, Colors.white],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: Variant4LoginViewBody()),
      ),
    );
  }
}
