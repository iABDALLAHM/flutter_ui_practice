import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';

class Variant6LoginCard extends StatelessWidget {
  const Variant6LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              CustomTextField(
                hintText: "Loisbecket@gmail.com",
                preIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.mail_outline, color: kPrimaryColor),
                ),
              ),
              CustomTextField(
                hintText: "*******",
                isPassword: true,
                preIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.lock_outline, color: kPrimaryColor),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        TextButton(
          onPressed: () {},
          child: Text(
            "Forgot Your Password ?",
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              color: Colors.white,
              decorationColor: const Color.fromARGB(123, 255, 255, 255),
              decorationThickness: 1.5,
            ),
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(width: double.infinity, height: 50, child: CustomButton()),
      ],
    );
  }
}
