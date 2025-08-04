import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/app_router.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/or_divider_section.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/sign_up_redirect_text.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/social_login_section.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/widgets/variant2_login_auth.dart';

class Variant2LoginViewBody extends StatelessWidget {
  const Variant2LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    Text("Login", style: Styles.textStyle34),
                    const SizedBox(height: 12),
                    AuthRichTextRow(
                      text1: "Don’t have an account? ",
                      text2: "Sign Up",
                      route: AppRouter.kVariant2Register,
                      isSignUp: true,
                    ),
                    const SizedBox(height: 24),
                    const SizedBox(height: 10),
                    Variant2LoginAuth(),
                    const SizedBox(height: 30),
                    OrDividerSection(),
                    const SizedBox(height: 24),
                    SocialLoginSection(),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
