import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';

class SignUpRedirectText extends StatelessWidget {
  const SignUpRedirectText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don’t have an account ?",
          style: Styles.textStyle12.copyWith(color: grayText),
        ),
        const SizedBox(width: 5),
        Text(
          "Sign Up",
          style: Styles.textStyle12.copyWith(color: kPrimaryColor),
        ),
      ],
    );
  }
}
