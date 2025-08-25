import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/remember_me_section.dart';
import 'package:login_screen/features/auth_variants/variant_9/presentation/views/widgets/or_divider_variant9.dart';
import 'package:login_screen/features/auth_variants/variant_9/presentation/views/widgets/social_login_section.dart';
import 'package:login_screen/features/auth_variants/variant_9/presentation/views/widgets/variant9_login_rich_text.dart';

class Variant9LoginCard extends StatelessWidget {
  const Variant9LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(126, 255, 255, 255),
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Image.asset(AssetData.blueAppIcon),
          const SizedBox(height: 24),
          Text("Login", style: Styles.textStyle34),
          const SizedBox(height: 12),
          Text(
            "Enter your email and password to log in ",
            style: Styles.textStyle12.copyWith(color: grayText),
          ),
          const SizedBox(height: 24),
          CustomTextField(hintText: "Loisbecket@gmail.com", isFilled: true),
          const SizedBox(height: 6),
          CustomTextField(
            isPassword: true,
            hintText: "*******",
            isFilled: true,
          ),
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
          const SizedBox(height: 24),
          SizedBox(width: double.infinity, height: 50, child: CustomButton()),
          const SizedBox(height: 24),
          OrDividerVariant9(),
          const SizedBox(height: 24),
          SocialLoginSection(),
          Variant9LoginRichText(),
        ],
      ),
    );
  }
}
