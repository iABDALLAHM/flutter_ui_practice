import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/core/constants/constants.dart';

class Variant3RegisterRichText extends StatelessWidget {
  const Variant3RegisterRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Already have an account?"),
        TextButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          child: Text(
            "Log In",
            style: TextStyle(
              color: kPrimaryColor,
              decoration: TextDecoration.underline,
              decorationThickness: 1,
              decorationColor: kPrimaryColor,
              decorationStyle: TextDecorationStyle.solid,
            ),
          ),
        ),
      ],
    );
  }
}
