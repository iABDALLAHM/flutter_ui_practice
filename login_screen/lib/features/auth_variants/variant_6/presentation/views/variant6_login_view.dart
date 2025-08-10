import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_6/presentation/views/widgets/variant6_login_view_body.dart';

class Variant6LoginView extends StatelessWidget {
  const Variant6LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: [0.0, 0.1],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            const Color.fromARGB(255, 109, 107, 107),
            const Color.fromARGB(255, 21, 21, 21),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: Variant6LoginViewBody()),
      ),
    );
  }
}
