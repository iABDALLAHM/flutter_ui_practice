import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/widgets/or_divider_variant4.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/widgets/terms_and_policy_text.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/widgets/variant4_login_rich_text.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/widgets/variant4_remeber_me_section.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/widgets/variant4_social_auth.dart';

class Variant4LoginViewBody extends StatelessWidget {
  const Variant4LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Image(image: AssetImage(AssetData.blueLightLogo)),
            const SizedBox(height: 32),
            Text(
              "Sign in to your \nAccount",
              style: Styles.textStyle34.copyWith(color: Colors.white),
            ),
            Variant4LoginRichText(),
            const SizedBox(height: 20),
            Text("Email", style: Styles.textStyle12.copyWith(color: grayText)),
            const SizedBox(height: 3),
            CustomTextField(hintText: "Loisbecket@gmail.com"),
            const SizedBox(height: 17),
            Text(
              "Password",
              style: Styles.textStyle12.copyWith(color: grayText),
            ),
            const SizedBox(height: 3),
            CustomTextField(isPassword: true, hintText: "*******"),
            const SizedBox(height: 17),
            Variant4RemeberMeSection(),
            const SizedBox(height: 30),
            SizedBox(height: 50, width: double.infinity, child: CustomButton()),
            const SizedBox(height: 24),
            OrDividerVariant4(),
            const SizedBox(height: 16),
            Variant4SocialAuth(),
            const SizedBox(height: 64),
            Align(child: TermsAndPolicyText()),
          ],
        ),
      ),
    );
  }
}
