import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_7/presentation/views/widgets/variant7_register_view_body.dart';

class Variant7RegisterView extends StatelessWidget {
  const Variant7RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 0.19],
          colors: [
            const Color.fromARGB(255, 112, 191, 255),
            const Color.fromARGB(255, 227, 227, 227),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: Variant7RegisterViewBody()),
      ),
    );
  }
}
