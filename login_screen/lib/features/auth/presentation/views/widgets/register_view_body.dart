import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:login_screen/features/auth/presentation/views/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth/presentation/views/widgets/drop_down_section_button.dart';
import 'package:login_screen/features/auth/presentation/views/widgets/sign_up_redirect_text.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
            Text("Sign up", style: Styles.textStyle34),
            const SizedBox(height: 12),
            Text(
              "Create an account to continue!",
              style: Styles.textStyle12.copyWith(color: grayText),
            ),
            const SizedBox(height: 33),
            Text(
              "Full Name",
              style: Styles.textStyle12.copyWith(color: grayText),
            ),
            const SizedBox(height: 6),
            CustomTextField(),
            const SizedBox(height: 16),
            Text("Email", style: Styles.textStyle12.copyWith(color: grayText)),
            const SizedBox(height: 6),
            CustomTextField(),
            const SizedBox(height: 16),
            Text(
              "Birth of date",
              style: Styles.textStyle12.copyWith(color: grayText),
            ),
            const SizedBox(height: 6),
            CustomTextField(
              textInputType: TextInputType.datetime,
              icon: IconButton(
                onPressed: () {},
                icon: Icon(Icons.calendar_month_outlined),
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
                  child: CustomTextField(textInputType: TextInputType.number),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              "Set Password",
              style: Styles.textStyle12.copyWith(color: grayText),
            ),
            const SizedBox(height: 6),
            CustomTextField(isPassword: true),
            const SizedBox(height: 16),
            SizedBox(width: double.infinity, height: 50, child: CustomButton()),
            const SizedBox(height: 40),
            AuthRichTextRow(text1: "Already have an account?", text2: "Login"),
          ],
        ),
      ),
    );
  }
}
