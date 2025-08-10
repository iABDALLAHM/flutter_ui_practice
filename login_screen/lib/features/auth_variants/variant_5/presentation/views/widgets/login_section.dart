import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/widgets/remember_and_forget_section.dart';
import 'package:login_screen/features/auth_variants/variant_5/presentation/views/widgets/or_divider_variant5.dart';
import 'package:login_screen/features/auth_variants/variant_5/presentation/views/widgets/social_login_buttons.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email", style: Styles.textStyle12.copyWith(color: grayText)),
        const SizedBox(height: 4),
        CustomTextField(hintText: "Loisbecket@gmail.com"),
        const SizedBox(height: 17),
        Text("Password", style: Styles.textStyle12.copyWith(color: grayText)),
        const SizedBox(height: 4),
        CustomTextField(isPassword: true, hintText: "*******"),
        const SizedBox(height: 17),
        RememberAndForgetSection(),
        const SizedBox(height: 24),
        SizedBox(height: 50, width: double.infinity, child: CustomButton()),
        const SizedBox(height: 24),
        OrDividerVariant5(),
        const SizedBox(height: 24),
        SocialLoginButtons(),
      ],
    );
  }
}
