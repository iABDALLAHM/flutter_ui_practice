import 'package:eat_fun/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ORSocialAuth extends StatelessWidget {
  const ORSocialAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "OR",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color.fromARGB(255, 123, 123, 123),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(AssetData.googleIcon),
              width: 40,
              height: 40,
            ),
            Image(
              image: AssetImage(AssetData.facebookIcon),
              width: 40,
              height: 40,
            ),
          ],
        ),
      ],
    );
  }
}
