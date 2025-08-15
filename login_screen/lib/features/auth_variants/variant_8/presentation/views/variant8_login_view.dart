import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_8/presentation/views/widgets/variant8_login_view_body.dart';

class Variant8LoginView extends StatelessWidget {
  const Variant8LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: SweepGradient(
          center: Alignment.center,
          colors: [
            const Color(0xff4983F6),
            const Color(0xffC175F5),
            const Color(0xffFBACB7),
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
