import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/app_router.dart';
import 'package:login_screen/core/utliz/styles.dart';

class Variant4AuthRichText extends StatelessWidget {
  const Variant4AuthRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Don’t have an account?",
          style: Styles.textStyle12.copyWith(color: Colors.white),
        ),
        TextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kVariant4Register);
          },
          child: Text(
            "Sign Up",
            style: TextStyle(
              color: kPrimaryColor,
              decoration: TextDecoration.underline,
              decorationColor: kPrimaryColor,
              decorationThickness: 1.5,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
        ),
      ],
    );
  }
}