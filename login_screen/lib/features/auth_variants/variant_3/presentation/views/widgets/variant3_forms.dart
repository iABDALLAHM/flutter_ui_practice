import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/drop_down_section_button.dart';

class Variant3Forms extends StatelessWidget {
  const Variant3Forms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: CustomTextField(hintText: "Lois")),
            const SizedBox(width: 15),
            Expanded(child: CustomTextField(hintText: "Becket")),
          ],
        ),
        const SizedBox(height: 16),
        CustomTextField(hintText: "Loisbecket@gmail.com"),
        const SizedBox(height: 16),
        CustomTextField(
          hintText: "18/03/2024",
          icon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.calendar_month_outlined),
          ),
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: DropDownSectionButton()),
            Expanded(
              flex: 2,
              child: CustomTextField(hintText: "(454) 726-0592"),
            ),
          ],
        ),
        const SizedBox(height: 16),
        CustomTextField(isPassword: true, hintText: "*******"),
        const SizedBox(height: 24),
        const SizedBox(
          width: double.infinity,
          height: 50,
          child: CustomButton(),
        ),
      ],
    );
  }
}
