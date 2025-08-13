import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_8/presentation/views/widgets/variant8_login_view_body.dart';

class Variant8LoginView extends StatelessWidget {
  const Variant8LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
          stops: [0.0, 0.2, 0.3],
          colors: [
            Colors.blueAccent,
            Colors.blue,
            const Color.fromARGB(255, 187, 0, 255),
          ],
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: Variant8LoginViewBody()),
      ),
    );
  }
}
