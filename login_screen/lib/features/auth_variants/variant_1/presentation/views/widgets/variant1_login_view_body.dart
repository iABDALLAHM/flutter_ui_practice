import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/or_divider_section.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/social_login_section.dart';
import 'package:login_screen/features/auth_variants/variant_1/presentation/views/widgets/forget_password_section.dart';
import 'package:login_screen/features/auth_variants/variant_1/presentation/views/widgets/variant1_login_rich_text.dart';

class Variant1LoginViewBody extends StatelessWidget {
  const Variant1LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Image(image: AssetImage(AssetData.appLogo)),
            const SizedBox(height: 32),
            Text("Sign in to your", style: Styles.textStyle34),
            Text("Account", style: Styles.textStyle34),
            const SizedBox(height: 12),
            Text(
              "Enter your email and password to log in",
              style: Styles.textStyle12.copyWith(color: grayText),
            ),
            const SizedBox(height: 33),
            Text("Email", style: Styles.textStyle12.copyWith(color: grayText)),
            const SizedBox(height: 4),
            CustomTextField(hintText: "Loisbecket@gmail.com"),
            const SizedBox(height: 17),
            Text(
              "Password",
              style: Styles.textStyle12.copyWith(color: grayText),
            ),
            const SizedBox(height: 4),
            CustomTextField(isPassword: true, hintText: "**********"),
            const SizedBox(height: 16),
            ForgetPasswordSection(),
            const SizedBox(height: 24),
            SizedBox(width: double.infinity, height: 60, child: CustomButton()),
            const SizedBox(height: 24),
            OrDividerSection(),
            const SizedBox(height: 15),
            SocialLoginSection(),
            const SizedBox(height: 30),
            Variant1LoginRichText(),
          ],
        ),
      ),
    );
  }
}
