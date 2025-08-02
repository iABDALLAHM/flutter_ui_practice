import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/styles.dart';

class AuthRichTextRow extends StatelessWidget {
  const AuthRichTextRow({super.key, required this.text1, required this.text2});
  final String text1, text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1, style: Styles.textStyle12.copyWith(color: grayText)),
        const SizedBox(width: 5),
        GestureDetector(
          onTap: () {},
          child: Text(
            text2,
            style: Styles.textStyle12.copyWith(color: kPrimaryColor),
          ),
        ),
      ],
    );
  }
}
