import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/remember_me_section.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/sign_up_redirect_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Text("Login"),
          AuthRichTextRow(
            text1: "text1",
            text2: "text2",
            route: "route",
            isSignUp: true,
          ),
          const SizedBox(height: 10),
          Text("Email", style: Styles.textStyle12.copyWith(color: grayText)),
          CustomTextField(),
          const SizedBox(height: 20),
          Text("Password", style: Styles.textStyle12.copyWith(color: grayText)),
          CustomTextField(isPassword: true),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              RememberMeSection(),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Forgot Password ?",
                  style: Styles.textStyle12.copyWith(color: kPrimaryColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
