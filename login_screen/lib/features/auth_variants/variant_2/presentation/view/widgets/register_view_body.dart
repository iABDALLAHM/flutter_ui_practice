import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/app_router.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/auth_rich_text_row.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/widgets/variant2_register_auth.dart';

class Variant2RegisterViewBody extends StatelessWidget {
  const Variant2RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sign up", style: Styles.textStyle34),
                AuthRichTextRow(
                  text1: "Already have an account?",
                  text2: "Login",
                  route: AppRouter.kVariant2Login,
                  isSignUp: false,
                ),
                const SizedBox(height: 24),
                Variant2RegisterAuth(),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
