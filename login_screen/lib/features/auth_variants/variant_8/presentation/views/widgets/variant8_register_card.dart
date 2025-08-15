import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/features/auth_variants/variant_8/presentation/views/widgets/gradiant_text.dart';
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
          const SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).pop();
            },
            child: Icon(FontAwesomeIcons.arrowLeftLong),
          ),
          const SizedBox(height: 4),
          Align(child: Variant8GradiantText(text: "Sign Up")),
          const SizedBox(height: 5),
          Variant8RegisterRichText(),
          const SizedBox(height: 10),
          RegisterAuthForms(),
        ],
      ),
    );
  }
}
