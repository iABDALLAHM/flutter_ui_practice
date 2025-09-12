import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/cons.dart';

class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({super.key, required this.onTap});
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
        ),
        child: Text(
          "See more",
          style: TextStyle(color: Colors.grey, fontFamily: kMulishFontFamily),
        ),
      ),
    );
  }
}
