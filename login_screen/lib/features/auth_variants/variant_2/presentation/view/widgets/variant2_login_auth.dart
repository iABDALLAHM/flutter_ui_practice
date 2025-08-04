import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/remember_me_section.dart';

class Variant2LoginAuth extends StatelessWidget {
  const Variant2LoginAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email", style: Styles.textStyle12.copyWith(color: grayText)),
        const SizedBox(height: 4),
        CustomTextField(),
        const SizedBox(height: 17),
        Text("Password", style: Styles.textStyle12.copyWith(color: grayText)),
        const SizedBox(height: 4),
        CustomTextField(isPassword: true),
        const SizedBox(height: 17),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RememberMeSection(),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Forgot Password ?",
                style: Styles.textStyle12.copyWith(color: kPrimaryColor),
              ),
            ),
          ],
        ),
        const SizedBox(height: 17),
        SizedBox(height: 50, width: double.infinity, child: CustomButton()),
      ],
    );
  }
}
