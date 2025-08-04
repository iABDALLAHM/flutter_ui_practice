import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';

class Variant2RegisterAuth extends StatelessWidget {
  const Variant2RegisterAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Full Name"),
        const SizedBox(height: 4),
        CustomTextField(),
        const SizedBox(height: 17),
        Text("Email"),
        const SizedBox(height: 4),
        CustomTextField(),
        const SizedBox(height: 17),
        Text("Birth of date"),
        const SizedBox(height: 4),
        CustomTextField(textInputType: TextInputType.datetime),
        const SizedBox(height: 17),
        Text("Phone Number"),
        const SizedBox(height: 4),
        CustomTextField(textInputType: TextInputType.number),
        const SizedBox(height: 17),
        Text("Set Password"),
        const SizedBox(height: 4),
        CustomTextField(isPassword: true),
        const SizedBox(height: 17),
        SizedBox(width: double.infinity, height: 50, child: CustomButton()),
      ],
    );
  }
}
