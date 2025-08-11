import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/or_divider_section.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/remember_me_section.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/social_button.dart';
import 'package:login_screen/features/auth_variants/variant_7/presentation/views/widgets/variant7_login_rich_text.dart';

class Variant7LoginViewBody extends StatelessWidget {
  const Variant7LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: AssetImage(AssetData.blueAppIcon)),
            const SizedBox(height: 32),
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sign in to your", style: Styles.textStyle34),
                  Text("Account", style: Styles.textStyle34),
                  const SizedBox(height: 12),
                  Text(
                    "Enter your email and password to log in",
                    style: Styles.textStyle12.copyWith(color: grayText),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            CustomTextField(hintText: "Loisbecket@gmail.com"),
            const SizedBox(height: 8),
            CustomTextField(hintText: "********", isPassword: true),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RememberMeSection(),
                Text(
                  "Forgot Password ?",
                  style: Styles.textStyle12.copyWith(color: kPrimaryColor),
                ),
              ],
            ),
            SizedBox(width: double.infinity, height: 50, child: CustomButton()),
            const SizedBox(height: 16),
            OrDividerSection(),
            const SizedBox(height: 16),
            SocialButton(
              text: "Continue with Google",
              icon: AssetData.googleSocialIcon,
            ),
            const SizedBox(height: 8),
            SocialButton(
              text: "Continue with Facebook",
              icon: AssetData.facebookSocialIcon,
            ),
            const SizedBox(height: 50),
            Variant7LoginRichText(),
          ],
        ),
      ),
    );
  }
}
