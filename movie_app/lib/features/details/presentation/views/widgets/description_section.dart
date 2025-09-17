import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/cons.dart';
import 'package:movie_app/core/utils/app_color.dart';
import 'package:movie_app/core/utils/styels.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key, required this.filmDes});
  final String filmDes;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: Styels.textStyle18.copyWith(color: AppColor.kPrimaryColor),
        ),
        const SizedBox(height: 10),
        Text(
          """$filmDes""",
          style: TextStyle(fontFamily: kMulishFontFamily, color: Colors.grey),
        ),
      ],
    );
  }
}