import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/widgets/variant2_register_auth.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/widgets/variant2_register_rich_text.dart';

class RegisterCard extends StatelessWidget {
  const RegisterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 24),
            Icon(Icons.arrow_back),
            const SizedBox(height: 24),
            Text("Sign up", style: Styles.textStyle34),
            Variant2RegisterRichText(),
            const SizedBox(height: 24),
            Variant2RegisterAuth(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
