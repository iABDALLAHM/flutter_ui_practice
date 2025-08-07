import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';

class Variant2RegisterRichText extends StatelessWidget {
  const Variant2RegisterRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Already have an account?", style: Styles.textStyle12),
        TextButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          child: Text("Login", style: TextStyle(color: kPrimaryColor)),
        ),
      ],
    );
  }
}