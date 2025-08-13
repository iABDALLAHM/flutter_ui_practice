import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_9/presentation/views/widgets/variant9_login_view_body.dart';

class Variant9LoginView extends StatelessWidget {
  const Variant9LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue, Colors.white],
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: Variant9LoginViewBody()),
      ),
    );
  }
}
