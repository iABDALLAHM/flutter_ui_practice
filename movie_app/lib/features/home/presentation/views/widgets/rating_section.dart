import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/cons.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.amber),
        Text(
          " 9.1/10 IMDb",
          style: TextStyle(color: Colors.grey, fontFamily: kMulishFontFamily),
        ),
      ],
    );
  }
}
