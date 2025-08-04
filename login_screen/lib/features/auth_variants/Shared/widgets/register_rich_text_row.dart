import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/app_router.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/auth_rich_text_row.dart';

class RegisterRichTextRow extends StatelessWidget {
  const RegisterRichTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: AuthRichTextRow(
        text1: "Already have an account?",
        text2: "Login",
        route: AppRouter.kVariant2Login,
      ),
    );
  }
}