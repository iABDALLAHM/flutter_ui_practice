import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/widgets/variant4_register_rich_text.dart';

class Variant4RegisterViewBody extends StatelessWidget {
  const Variant4RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                GoRouter.of(context).pop();
              },
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
            const SizedBox(height: 24),
            Text(
              "Register",
              style: Styles.textStyle34.copyWith(color: Colors.white),
            ),
            const SizedBox(height: 12),
            Variant4RegisterRichText(),
            const SizedBox(height: 50),
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
                      const SizedBox(height: 4),
                      CustomTextField(hintText: "Lois"),
                    ],
                  ),
                ),
                const SizedBox(width: 17),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Last Name",
                        style: Styles.textStyle12.copyWith(color: grayText),
                      ),
                      const SizedBox(height: 4),
                      CustomTextField(hintText: "Becket"),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text("Email", style: Styles.textStyle12.copyWith(color: grayText)),
            const SizedBox(height: 4),
            CustomTextField(hintText: "Loisbecket@gmail.com"),
            const SizedBox(height: 20),
            Text(
              "Birth of date",
              style: Styles.textStyle12.copyWith(color: grayText),
            ),
            const SizedBox(height: 4),
            CustomTextField(
              hintText: "18/03/2024",
              icon: IconButton(
                icon: Icon(Icons.calendar_month_outlined),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Phone Number",
              style: Styles.textStyle12.copyWith(color: grayText),
            ),
            const SizedBox(height: 4),
            CustomTextField(hintText: "(454) 726-0592"),
            const SizedBox(height: 20),
            Text(
              "Set Password",
              style: Styles.textStyle12.copyWith(color: grayText),
            ),
            const SizedBox(height: 4),
            CustomTextField(isPassword: true, hintText: "*******"),
            const SizedBox(height: 32),
            SizedBox(height: 50, width: double.infinity, child: CustomButton()),
          ],
        ),
      ),
    );
  }
}
