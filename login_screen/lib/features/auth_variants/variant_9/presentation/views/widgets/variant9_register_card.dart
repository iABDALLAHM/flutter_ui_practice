import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/drop_down_section_button.dart';
import 'package:login_screen/features/auth_variants/variant_9/presentation/views/widgets/variant9_register_rich_text.dart';

class Variant9RegisterCard extends StatelessWidget {
  const Variant9RegisterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(126, 255, 255, 255),
      ),
      child: Column(
        children: [
          const SizedBox(height: 24),
          Image.asset(AssetData.blueAppIcon),
          const SizedBox(height: 24),
          Hero(
            tag: "Sign Up",
            child: Text("Sign Up", style: Styles.textStyle34),
          ),
          const SizedBox(height: 12),
          Text(
            "Create an account to continue!",
            style: Styles.textStyle12.copyWith(color: grayText),
          ),
          const SizedBox(height: 24),
          CustomTextField(hintText: "Lois", isFilled: true),
          const SizedBox(height: 6),
          CustomTextField(hintText: "Becket", isFilled: true),
          const SizedBox(height: 6),
          CustomTextField(hintText: "Loisbecket@gmail.com", isFilled: true),
          const SizedBox(height: 6),
          CustomTextField(
            hintText: "18/03/2024",
            isFilled: true,
            icon: IconButton(
              onPressed: () {},
              icon: Icon(Icons.calendar_month),
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Expanded(child: DropDownSectionButton()),
              Expanded(
                flex: 3,
                child: CustomTextField(
                  hintText: "(454) 726-0592",
                  isFilled: true,
                ),
              ),
            ],
          ),
          const SizedBox(height: 6),
          CustomTextField(
            isPassword: true,
            hintText: "*******",
            isFilled: true,
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: CustomButton(text: "Register"),
          ),
          const SizedBox(height: 24),
          Variant9RegisterRichText(),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
