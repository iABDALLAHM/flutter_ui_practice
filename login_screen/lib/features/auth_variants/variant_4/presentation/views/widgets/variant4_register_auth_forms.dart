import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';

class Variant4RegisterAuthForms extends StatelessWidget {
  const Variant4RegisterAuthForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(children: [Text("First Name"), CustomTextField()]),
            Column(children: [Text("Last Name"), CustomTextField()]),
          ],
        ),
        Text("Email"),
        CustomTextField(),
        Text("Birth of date"),
        CustomTextField(),
        Text("Phone Number"),
        CustomTextField(),
        Text("Set Password"),
        CustomTextField(),
        SizedBox(height: 50, width: double.infinity, child: CustomButton()),
      ],
    );
  }
}
