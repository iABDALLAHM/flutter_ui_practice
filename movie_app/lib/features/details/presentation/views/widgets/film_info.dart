import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/cons.dart';
import 'package:movie_app/core/utils/styels.dart';

class FilmInfo extends StatelessWidget {
  const FilmInfo({
    super.key,
    required this.lenght,
    required this.lang,
    required this.rating,
  });
  final int lenght;
  final String lang;
  final num rating;
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
              "$lenght min",
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
              lang.toUpperCase(),
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
              "PG-$rating",
              style: Styels.textStyle16.copyWith(fontFamily: kMulishFontFamily),
            ),
          ],
        ),
      ],
    );
  }
}
