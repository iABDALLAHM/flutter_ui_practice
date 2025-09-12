import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/cons.dart';
import 'package:movie_app/core/utils/app_color.dart';
import 'package:movie_app/core/utils/assets.dart';
import 'package:movie_app/core/utils/styels.dart';

class CastCharacter extends StatelessWidget {
  const CastCharacter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.kCastCharacter),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(
          "Tom Holland",
          style: Styels.textStyle14.copyWith(
            fontFamily: kMulishFontFamily,
            color: AppColor.kPrimaryColor,
          ),
        ),
      ],
    );
  }
}