import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/cons.dart';

class RatingSection extends StatelessWidget {
  const RatingSection({super.key, this.rating = 0});
  final num rating;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star, color: Colors.amber),
        Text(
          " $rating/10 IMDb",
          style: TextStyle(color: Colors.grey, fontFamily: kMulishFontFamily),
        ),
      ],
    );
  }
}
