import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/features/auth_variants/variant_5/presentation/views/widgets/social_icon_button.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialIconButton(
          image: Image(image: AssetImage(AssetData.googleSocialIcon)),
          onPressed: () {},
        ),
        const SizedBox(width: 15),
        SocialIconButton(
          image: Image(image: AssetImage(AssetData.googleSocialIcon)),
          onPressed: () {},
        ),
        const SizedBox(width: 15),
        SocialIconButton(
          image: Image(image: AssetImage(AssetData.googleSocialIcon)),
          onPressed: () {},
        ),
        const SizedBox(width: 15),
        SocialIconButton(
          image: Image(image: AssetImage(AssetData.googleSocialIcon)),
          onPressed: () {},
        ),
      ],
    );
  }
}
