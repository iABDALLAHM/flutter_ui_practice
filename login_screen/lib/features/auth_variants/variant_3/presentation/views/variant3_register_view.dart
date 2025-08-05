import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_3/presentation/views/widgets/variant3_register_view_body.dart';

class Variant3RegisterView extends StatelessWidget {
  const Variant3RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: [0.5, 0.5],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.blue, const Color.fromARGB(213, 255, 255, 255)],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: Variant3RegisterViewBody()),
      ),
    );
  }
}
