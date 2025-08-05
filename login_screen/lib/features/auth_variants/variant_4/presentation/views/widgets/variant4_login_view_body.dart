import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';

class Variant4LoginViewBody extends StatelessWidget {
  const Variant4LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(image: AssetImage(AssetData.whiteEditionLogo)),
        Text(
          "Sign in to your \nAccount",
          style: Styles.textStyle34.copyWith(color: Colors.white),
        ),
      ],
    );
  }
}
