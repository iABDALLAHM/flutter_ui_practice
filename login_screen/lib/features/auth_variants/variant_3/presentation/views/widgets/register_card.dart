import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/app_padding.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/or_divider_section.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/social_button.dart';
import 'package:login_screen/features/auth_variants/variant_3/presentation/views/widgets/variant3_forms.dart';

class RegisterCard extends StatelessWidget {
  const RegisterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.horizontalPadding20,
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Variant3Forms(),
          const SizedBox(height: 24),
          OrDividerSection(),
          const SizedBox(height: 24),
          SizedBox(
            height: 50,
            child: SocialButton(
              text: "google",
              icon: AssetData.googleSocialIcon,
            ),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
