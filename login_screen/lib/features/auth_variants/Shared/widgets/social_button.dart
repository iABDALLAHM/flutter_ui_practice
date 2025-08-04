import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.text, required this.icon});
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: greyBorder),
          borderRadius: BorderRadius.circular(10),
        ),
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(icon),
          const SizedBox(width: 5),
          Text(text, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
