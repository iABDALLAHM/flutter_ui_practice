import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/app_padding.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/remember_me_section.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/social_button.dart';
import 'package:login_screen/features/auth_variants/variant_3/presentation/views/widgets/or_divider_variant3.dart';
import 'package:login_screen/features/auth_variants/variant_3/presentation/views/widgets/variant3_login_rich_text.dart';

class Variant3LoginCard extends StatelessWidget {
  const Variant3LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: AppPadding.horizontalPadding20,
      padding: AppPadding.horizontalPadding20,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),
          SocialButton(
            text: "Continue with google",
            icon: AssetData.googleSocialIcon,
          ),
          const SizedBox(height: 24),
          OrDividerVariant3(),
          const SizedBox(height: 24),
          CustomTextField(hintText: "Loisbecket@gmail.com"),
          const SizedBox(height: 16),
          CustomTextField(isPassword: true, hintText: "*********"),
          const SizedBox(height: 17),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RememberMeSection(),
              Text(
                "Forgot Password ?",
                style: Styles.textStyle12.copyWith(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          SizedBox(width: double.infinity, height: 50, child: CustomButton()),
          const SizedBox(height: 14),
          Variant3LoginRichText(),
          const SizedBox(height: 14),
        ],
      ),
    );
  }
}
