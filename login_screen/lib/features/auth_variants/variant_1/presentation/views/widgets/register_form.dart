import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/drop_down_section_button.dart';

class Variant1RegisterForm extends StatelessWidget {
  const Variant1RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Full Name", style: Styles.textStyle12.copyWith(color: grayText)),
        const SizedBox(height: 6),
        CustomTextField(hintText: "Lois Becket"),
        const SizedBox(height: 16),
        Text("Email", style: Styles.textStyle12.copyWith(color: grayText)),
        const SizedBox(height: 6),
        CustomTextField(hintText: "Loisbecket@gmail.com"),
        const SizedBox(height: 16),
        Text(
          "Birth of date",
          style: Styles.textStyle12.copyWith(color: grayText),
        ),
        const SizedBox(height: 6),
        CustomTextField(
          hintText: "18/03/2024",
          textInputType: TextInputType.datetime,
          icon: IconButton(
            onPressed: () {},
            icon: Icon(FontAwesomeIcons.calendar),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "Phone Number",
          style: Styles.textStyle12.copyWith(color: grayText),
        ),
        const SizedBox(height: 6),
        Row(
          children: [
            Expanded(
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(color: greyBorder),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: DropDownSectionButton()),
              ),
            ),
            Expanded(
              flex: 3,
              child: CustomTextField(
                textInputType: TextInputType.number,
                hintText: "(454) 726-0592",
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Text(
          "Set Password",
          style: Styles.textStyle12.copyWith(color: grayText),
        ),
        const SizedBox(height: 6),
        CustomTextField(isPassword: true, hintText: "***********"),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: CustomButton(text: "Register"),
        ),
      ],
    );
  }
}
