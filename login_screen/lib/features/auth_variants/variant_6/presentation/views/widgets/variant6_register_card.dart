import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/drop_down_section_button.dart';

class Variant6RegisterCard extends StatelessWidget {
  const Variant6RegisterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              CustomTextField(
                hintText: "Lois Becket",
                preIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person_outline_rounded, color: kPrimaryColor),
                ),
              ),
              CustomTextField(
                hintText: "Loisbecket@gmail.com",
                preIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.mail_outlined, color: kPrimaryColor),
                ),
              ),
              CustomTextField(
                hintText: "18/03/2024",
                preIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(FontAwesomeIcons.calendar, color: kPrimaryColor),
                ),
              ),
              Row(
                children: [
                  Expanded(child: DropDownSectionButton()),
                  Expanded(
                    flex: 3,
                    child: CustomTextField(hintText: "(454) 726-0592"),
                  ),
                ],
              ),
              CustomTextField(
                hintText: "*********",
                preIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.lock_outline, color: kPrimaryColor),
                ),
                isPassword: true,
              ),
            ],
          ),
        ),
                const SizedBox(height: 30),
        SizedBox(
          height: 50,
          width: double.infinity,
          child: CustomButton(text: "Register"),
        ),
      ],
    );
  }
}
