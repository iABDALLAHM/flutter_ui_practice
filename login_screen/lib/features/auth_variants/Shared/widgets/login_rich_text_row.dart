import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/core/utliz/app_router.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/auth_rich_text_row.dart';

class LoginRichTextRow extends StatelessWidget {
  const LoginRichTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kVariant2Register);
      },
      child: AuthRichTextRow(
        text1: "Don’t have an account? ",
        text2: "Sign Up",
        route: AppRouter.kVariant2Register,
      ),
    );
  }
}