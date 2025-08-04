import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';

class AuthRichTextRow extends StatelessWidget {
  const AuthRichTextRow({
    super.key,
    required this.text1,
    required this.text2,
    required this.route,
  });
  final String text1, text2;
  final String route;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text1, style: Styles.textStyle12.copyWith(color: grayText)),
        const SizedBox(width: 5),
        Text(
          text2,
          style: Styles.textStyle12.copyWith(color: kPrimaryColor),
        ),
      ],
    );
  }
}
