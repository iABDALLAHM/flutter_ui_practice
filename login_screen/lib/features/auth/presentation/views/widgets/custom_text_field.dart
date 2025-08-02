import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: _buildBorder(),
        enabledBorder: _buildBorder(),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: greyBorder),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
