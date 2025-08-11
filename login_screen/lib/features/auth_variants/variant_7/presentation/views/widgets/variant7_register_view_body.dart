import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/drop_down_section_button.dart';
import 'package:login_screen/features/auth_variants/variant_7/presentation/views/widgets/variant7_register_rich_text.dart';

class Variant7RegisterViewBody extends StatelessWidget {
  const Variant7RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Register", style: Styles.textStyle34),
            const SizedBox(height: 12),
            Text(
              "Create an account to continue!",
              style: Styles.textStyle12.copyWith(color: grayText),
            ),
            const SizedBox(height: 24),
            CustomTextField(hintText: "Lois"),
            const SizedBox(height: 16),
            CustomTextField(hintText: "Becket"),
            const SizedBox(height: 16),
            CustomTextField(hintText: "Loisbecket@gmail.com"),
            const SizedBox(height: 16),
            CustomTextField(
              hintText: "18/03/2024",
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.calendar_month),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(child: DropDownSectionButton()),
                Expanded(
                  flex: 3,
                  child: CustomTextField(hintText: "(454) 726-0592"),
                ),
              ],
            ),
            const SizedBox(height: 16),
            CustomTextField(hintText: "*******", isPassword: true),
            const SizedBox(height: 24),
            const SizedBox(
              width: double.infinity,
              height: 50,
              child: CustomButton(),
            ),
            const SizedBox(height: 60),
            Variant7RegisterRichText(),
          ],
        ),
      ),
    );
  }
}
