import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.textInputType = TextInputType.text,
    this.icon,
  });
  final TextInputType textInputType;
  final IconButton? icon;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      decoration: InputDecoration(
        suffixIcon: icon,
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
