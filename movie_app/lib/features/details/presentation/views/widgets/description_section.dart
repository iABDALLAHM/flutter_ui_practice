import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/cons.dart';
import 'package:movie_app/core/utils/app_color.dart';
import 'package:movie_app/core/utils/styels.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

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
          """With Spider-Man's identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.""",
          style: TextStyle(fontFamily: kMulishFontFamily, color: Colors.grey),
        ),
      ],
    );
  }
}