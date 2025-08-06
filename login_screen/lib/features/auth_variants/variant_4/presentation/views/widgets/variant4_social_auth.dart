
import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/social_button.dart';

class Variant4SocialAuth extends StatelessWidget {
  const Variant4SocialAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SocialButton(
            text: "Facebook",
            icon: AssetData.googleSocialIcon,
          ),
        ),

        const SizedBox(width: 20),
        Expanded(
          child: SocialButton(
            text: "Google",
            icon: AssetData.facebookSocialIcon,
          ),
        ),
      ],
    );
  }
}