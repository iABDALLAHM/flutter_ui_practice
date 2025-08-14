import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({this.text = "Log In", super.key});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      onPressed: () {},
      child: Text(text),
    );
  }
}
