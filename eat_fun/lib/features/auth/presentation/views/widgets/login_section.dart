import 'package:eat_fun/core/utils/app_router.dart';
import 'package:eat_fun/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginSection extends StatelessWidget {
  const LoginSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Text("Forgot Password?"),
        ),
        const SizedBox(height: 33),
        CustomButton(
          text: "Login",
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kHomeView);
          },
        ),
      ],
    );
  }
}
