import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/drop_down_section_button.dart';

class RegisterAuthForms extends StatelessWidget {
  const RegisterAuthForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("First Name"),
                  const SizedBox(height: 2),
                  CustomTextField(hintText: "Lois"),
                ],
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Last Name"),
                  const SizedBox(height: 2),
                  CustomTextField(hintText: "Becket"),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 17),
        Text("Email"),
        const SizedBox(height: 2),
        CustomTextField(hintText: "Loisbecket@gmail.com"),
        const SizedBox(height: 17),
        Text("Birth of date"),
        const SizedBox(height: 2),
        CustomTextField(
          hintText: "18/03/2024",
          icon: IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.calendar),
          ),
        ),
        const SizedBox(height: 17),
        Text("Phone Number"),
        const SizedBox(height: 2),
        Row(
          children: [
            Expanded(child: DropDownSectionButton()),
            Expanded(
              flex: 2,
              child: CustomTextField(hintText: "(454) 726-0592"),
            ),
          ],
        ),
        const SizedBox(height: 17),
        Text("Set Password"),
        const SizedBox(height: 2),
        CustomTextField(isPassword: true, hintText: "*******"),
        const SizedBox(height: 17),
        SizedBox(width: double.infinity, height: 50, child: CustomButton()),
        const SizedBox(height: 24),
      ],
    );
  }
}
