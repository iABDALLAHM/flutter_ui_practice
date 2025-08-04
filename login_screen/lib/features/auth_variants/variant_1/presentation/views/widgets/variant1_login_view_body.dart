import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/app_router.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/or_divider_section.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/auth_rich_text_row.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/social_login_section.dart';

class Variant1LoginViewBody extends StatelessWidget {
  const Variant1LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(AssetData.appLogo)),
            const SizedBox(height: 32),
            Text("Sign in to your\n Account", style: Styles.textStyle34),
            const SizedBox(height: 12),
            Text(
              "Enter your email and password to log in",
              style: Styles.textStyle12.copyWith(color: grayText),
            ),
            const SizedBox(height: 32),
            Text("Email", style: Styles.textStyle12.copyWith(color: grayText)),
            const SizedBox(height: 4),
            CustomTextField(),
            const SizedBox(height: 16),
            Text(
              "Password",
              style: Styles.textStyle12.copyWith(color: grayText),
            ),
            const SizedBox(height: 4),
            CustomTextField(),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Forgot Password ?",
                    style: Styles.textStyle12.copyWith(color: kPrimaryColor),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            SizedBox(width: double.infinity, height: 50, child: CustomButton()),
            const SizedBox(height: 24),
            OrDividerSection(),
            const SizedBox(height: 15),
            SocialLoginSection(),
            const SizedBox(height: 50),
            AuthRichTextRow(
              text1: "Don’t have an account?",
              text2: "Sign Up",
              route: AppRouter.kVariant1Register,
            ),
          ],
        ),
      ),
    );
  }
}
