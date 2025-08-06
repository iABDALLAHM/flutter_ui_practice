import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';

class OrDividerVariant4 extends StatelessWidget {
  const OrDividerVariant4({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: greyDivider)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Or Login With",
            style: Styles.textStyle12.copyWith(color: grayText),
          ),
        ),
        Expanded(child: Divider(color: greyDivider)),
      ],
    );
  }
}