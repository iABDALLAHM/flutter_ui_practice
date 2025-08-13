import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/variant_8/presentation/views/widgets/register_auth_forms.dart';
import 'package:login_screen/features/auth_variants/variant_8/presentation/views/widgets/variant8_register_rich_text.dart';

class Variant8RegisterCard extends StatelessWidget {
  const Variant8RegisterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25),
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 255, 255, 255),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 24),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: Icon(Icons.arrow_back),
          ),
          const SizedBox(height: 6),
          Align(child: Text("Sign Up", style: Styles.textStyle34)),
          const SizedBox(height: 12),
          Variant8RegisterRichText(),
          const SizedBox(height: 25),
          RegisterAuthForms(),
        ],
      ),
    );
  }
}
