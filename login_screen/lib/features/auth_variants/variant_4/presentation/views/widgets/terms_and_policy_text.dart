
import 'package:flutter/material.dart';

class TermsAndPolicyText extends StatelessWidget {
  const TermsAndPolicyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("By signing up, you agree to the Terms of Service and"),
        Text("Data Processing Agreement"),
      ],
    );
  }
}
