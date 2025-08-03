import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/features/auth_variants/variant_1/presentation/views/widgets/social_button.dart';

class SocialLoginSection extends StatelessWidget {
  const SocialLoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: SocialButton(
            icon: AssetData.facebookSocialIcon,
            text: "Continue with Facebook",
          ),
        ),
        const SizedBox(height: 15),
        SizedBox(
          height: 50,
          child: SocialButton(
            icon: AssetData.googleSocialIcon,
            text: "Continue with Google",
          ),
        ),
      ],
    );
  }
}
