import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xffBE0127),
          foregroundColor: Colors.white,
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
