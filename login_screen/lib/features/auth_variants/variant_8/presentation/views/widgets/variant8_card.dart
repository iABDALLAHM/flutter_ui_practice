import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/or_divider_section.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/social_button.dart';
import 'package:login_screen/features/auth_variants/variant_8/presentation/views/widgets/gradiant_text.dart';
import 'package:login_screen/features/auth_variants/variant_8/presentation/views/widgets/login_auth_forms.dart';
import 'package:login_screen/features/auth_variants/variant_8/presentation/views/widgets/variant8_login_rich_text.dart';

class Variant8Card extends StatelessWidget {
  const Variant8Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            Variant8GradiantText(text: "Get Started now"),
            const SizedBox(height: 12),
            Text(
              "Create an account or log in to explore our app",
              style: Styles.textStyle12.copyWith(color: grayText, fontSize: 13),
            ),
            const SizedBox(height: 24),
            SizedBox(
              height: 50,
              child: SocialButton(
                text: "Sign in with Google",
                icon: AssetData.googleSocialIcon,
              ),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 50,
              child: SocialButton(
                text: "Sign in with Facebook",
                icon: AssetData.facebookSocialIcon,
              ),
            ),
            const SizedBox(height: 24),
            OrDividerSection(),
            const SizedBox(height: 25),
            LoginAuthForms(),
            Variant8LoginRichText(),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
