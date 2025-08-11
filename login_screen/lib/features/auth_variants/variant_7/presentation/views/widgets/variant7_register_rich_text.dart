import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';

class Variant7RegisterRichText extends StatelessWidget {
  const Variant7RegisterRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Already have an account?",
          style: Styles.textStyle12.copyWith(color: grayText),
        ),
        TextButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          child: Text("Log in", style: TextStyle(color: kPrimaryColor)),
        ),
      ],
    );
  }
}