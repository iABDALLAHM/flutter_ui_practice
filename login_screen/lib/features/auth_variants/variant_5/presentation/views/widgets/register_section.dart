import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/drop_down_section_button.dart';

class RegisterSection extends StatelessWidget {
  const RegisterSection({super.key});

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
                  Text(
                    "First Name",
                    style: Styles.textStyle12.copyWith(color: grayText),
                  ),
                  CustomTextField(hintText: "Lois"),
                ],
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Last Name",
                    style: Styles.textStyle12.copyWith(color: grayText),
                  ),
                  CustomTextField(hintText: "Becket"),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 17),
        Text("Email", style: Styles.textStyle12.copyWith(color: grayText)),
        const SizedBox(height: 2),
        CustomTextField(hintText: "Loisbecket@gmail.com"),
        const SizedBox(height: 17),
        Text(
          "Birth of date",
          style: Styles.textStyle12.copyWith(color: grayText),
        ),
        const SizedBox(height: 2),
        CustomTextField(
          hintText: "18/03/2024",
          icon: IconButton(onPressed: () {}, icon: Icon(Icons.calendar_month)),
        ),
        const SizedBox(height: 17),
        Text(
          "Phone Number",
          style: Styles.textStyle12.copyWith(color: grayText),
        ),
        const SizedBox(height: 2),
        Row(
          children: [
            Expanded(child: DropDownSectionButton()),
            Expanded(
              flex: 3,
              child: CustomTextField(hintText: "(454) 726-0592"),
            ),
          ],
        ),
        const SizedBox(height: 17),
        Text(
          "Set Password",
          style: Styles.textStyle12.copyWith(color: grayText),
        ),
        const SizedBox(height: 2),
        CustomTextField(isPassword: true, hintText: "*******"),
        const SizedBox(height: 24),
        const SizedBox(
          height: 40,
          width: double.infinity,
          child: CustomButton(),
        ),
      ],
    );
  }
}
