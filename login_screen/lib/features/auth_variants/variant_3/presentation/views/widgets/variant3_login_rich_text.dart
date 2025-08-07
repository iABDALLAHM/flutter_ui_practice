import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/app_router.dart';
import 'package:login_screen/core/utliz/styles.dart';

class Variant3LoginRichText extends StatelessWidget {
  const Variant3LoginRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Don’t have an account?", style: Styles.textStyle12),
        TextButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kVariant3Register);
          },
          child: Text("Sign Up", style: TextStyle(color: kPrimaryColor)),
        ),
      ],
    );
  }
}
