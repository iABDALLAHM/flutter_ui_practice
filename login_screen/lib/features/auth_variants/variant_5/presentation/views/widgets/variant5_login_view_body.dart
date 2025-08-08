import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/features/auth_variants/variant_5/presentation/views/widgets/auth_toggle_switch.dart';

class Variant5LoginViewBody extends StatefulWidget {
  const Variant5LoginViewBody({super.key});

  @override
  State<Variant5LoginViewBody> createState() => _Variant5LoginViewBodyState();
}

class _Variant5LoginViewBodyState extends State<Variant5LoginViewBody> {
  bool isLoginSelected = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(AssetData.appLogo)),
        Text("Get Started now"),
        Column(
          children: [
            Text("Create an account or log in to explore"),
            Text("about our app"),
          ],
        ),
        AuthToggleSwitch(
          isLoginSelected: isLoginSelected,
          onToggle: (value) {
            setState(() {
              isLoginSelected = value;
              log(isLoginSelected.toString());
            });
          },
        ),
      ],
    );
  }
}
