import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/drop_down_section_button.dart';

class Variant2RegisterAuth extends StatelessWidget {
  const Variant2RegisterAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Full Name", style: Styles.textStyle12.copyWith(color: grayText)),
        const SizedBox(height: 4),
        CustomTextField(hintText: "Lois Becket"),
        const SizedBox(height: 17),
        Text("Email", style: Styles.textStyle12.copyWith(color: grayText)),
        const SizedBox(height: 4),
        CustomTextField(hintText: "Loisbecket@gmail.com"),
        const SizedBox(height: 17),
        Text(
          "Birth of date",
          style: Styles.textStyle12.copyWith(color: grayText),
        ),
        const SizedBox(height: 4),
        CustomTextField(
          hintText: "18/03/2024",
          textInputType: TextInputType.datetime,
          icon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.calendar_month_outlined),
          ),
        ),
        const SizedBox(height: 17),
        Text(
          "Phone Number",
          style: Styles.textStyle12.copyWith(color: grayText),
        ),
        const SizedBox(height: 4),
        Row(
          children: [
            Expanded(child: DropDownSectionButton()),
            Expanded(
              flex: 3,
              child: CustomTextField(
                textInputType: TextInputType.number,
                hintText: "(454) 726-0592",
              ),
            ),
          ],
        ),
        const SizedBox(height: 17),
        Text(
          "Set Password",
          style: Styles.textStyle12.copyWith(color: grayText),
        ),
        const SizedBox(height: 4),
        CustomTextField(isPassword: true, hintText: "**********"),
        const SizedBox(height: 17),
        SizedBox(width: double.infinity, height: 50, child: CustomButton()),
      ],
    );
  }
}
