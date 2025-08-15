import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/styles.dart';

class Variant8GradiantText extends StatelessWidget {
  const Variant8GradiantText({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: Styles.textStyle34.copyWith(
        
        foreground: Paint()
          ..shader = LinearGradient(
            colors: [
              const Color(0xff4983F6),
              const Color(0xffC175F5),
              const Color(0xffFBACB7),
            ],
          ).createShader(Rect.fromLTWH(0, 0, 300, 70)),
      ),
    );
  }
}
