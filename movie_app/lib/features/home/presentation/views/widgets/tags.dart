import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/cons.dart';

class Tags extends StatelessWidget {
  const Tags({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
      decoration: BoxDecoration(
        color: Color(0xffDBE3FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xff88A4E8),
          fontWeight: FontWeight.bold,
          fontFamily: kMulishFontFamily,
        ),
      ),
    );
  }
}
