import 'package:eat_fun/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

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
        CustomButton(text: "Login"),
      ],
    );
  }
}
