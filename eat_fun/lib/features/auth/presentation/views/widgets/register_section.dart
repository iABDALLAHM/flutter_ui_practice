import 'package:eat_fun/core/widgets/custom_button.dart';
import 'package:eat_fun/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class RegisterSection extends StatelessWidget {
  const RegisterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18),
        CustomTextField(hintText: "Confirm Password"),
        const SizedBox(height: 33),
        CustomButton(text: "Sign Up"),
      ],
    );
  }
}