import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/remember_me_section.dart';

class RememberAndForgetSection extends StatelessWidget {
  const RememberAndForgetSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        RememberMeSection(),
        Text(
          "Forget Password?",
          style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
