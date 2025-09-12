import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/cons.dart';
import 'package:movie_app/core/utils/styels.dart';

class FilmInfo extends StatelessWidget {
  const FilmInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Text(
              "Length",
              style: Styels.textStyle16.copyWith(
                color: Colors.grey,
                fontFamily: kMulishFontFamily,
              ),
            ),
            Text(
              "2h 28min",
              style: Styels.textStyle16.copyWith(fontFamily: kMulishFontFamily),
            ),
          ],
        ),
        const SizedBox(width: 20),
        Column(
          children: [
            Text(
              "Language",
              style: Styels.textStyle16.copyWith(
                color: Colors.grey,
                fontFamily: kMulishFontFamily,
              ),
            ),
            Text(
              "English",
              style: Styels.textStyle16.copyWith(fontFamily: kMulishFontFamily),
            ),
          ],
        ),
        const SizedBox(width: 20),
        Column(
          children: [
            Text(
              "Rating",
              style: Styels.textStyle16.copyWith(
                color: Colors.grey,
                fontFamily: kMulishFontFamily,
              ),
            ),
            Text(
              "PG-13",
              style: Styels.textStyle16.copyWith(fontFamily: kMulishFontFamily),
            ),
          ],
        ),
      ],
    );
  }
}
