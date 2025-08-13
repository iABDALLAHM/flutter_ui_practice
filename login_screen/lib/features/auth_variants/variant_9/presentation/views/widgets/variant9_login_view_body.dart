import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_9/presentation/views/widgets/variant9_login_card.dart';

class Variant9LoginViewBody extends StatelessWidget {
  const Variant9LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Variant9LoginCard()],
        ),
      ),
    );
  }
}
