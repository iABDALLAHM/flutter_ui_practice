import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';

class OrDividerSection extends StatelessWidget {
  const OrDividerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: greyDivider)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "Or",
            style: Styles.textStyle12.copyWith(color: grayText, fontSize: 17),
          ),
        ),
        Expanded(child: Divider(color: greyDivider)),
      ],
    );
  }
}
