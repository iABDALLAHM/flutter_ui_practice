import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';

class TermsAndPolicyText extends StatelessWidget {
  const TermsAndPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'By signing up, you agree to the ',
                style: TextStyle(color: grayText),
              ),
              TextSpan(
                text: 'Terms of Service ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' and',
                style: TextStyle(color: grayText),
              ),
            ],
          ),
        ),
        const SizedBox(height: 5),
        Text(
          "Data Processing Agreement",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
