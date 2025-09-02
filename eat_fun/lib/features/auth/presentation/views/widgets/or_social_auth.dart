import 'package:eat_fun/core/utils/assets.dart';
import 'package:flutter/material.dart';

class ORSocialAuth extends StatelessWidget {
  const ORSocialAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("OR"),
        Row(
          children: [
            Image(image: AssetImage(AssetData.facebookIcon)),
            Image(image: AssetImage(AssetData.googleIcon)),
          ],
        ),
      ],
    );
  }
}
