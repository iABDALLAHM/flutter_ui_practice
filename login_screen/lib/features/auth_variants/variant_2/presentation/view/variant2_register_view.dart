import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/widgets/variant2_register_view_body.dart';

class Variant2RegisterView extends StatelessWidget {
  const Variant2RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: [0.2, 0.9],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [
            Color.fromARGB(255, 0, 225, 255),
            Color.fromARGB(255, 0, 140, 255),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: Variant2RegisterViewBody()),
      ),
    );
  }
}
