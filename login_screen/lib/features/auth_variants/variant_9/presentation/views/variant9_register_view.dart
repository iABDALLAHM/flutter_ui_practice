import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_9/presentation/views/widgets/variant9_register_view_body.dart';

class Variant9RegisterView extends StatelessWidget {
  const Variant9RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            const Color.fromARGB(255, 255, 248, 168),
            const Color.fromARGB(255, 242, 167, 255),
          ],
        ),
      ),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Variant9RegisterViewBody(),
      ),
    );
  }
}
