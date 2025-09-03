import 'package:flutter/material.dart';

class CustomFoodSearch extends StatelessWidget {
  const CustomFoodSearch({super.key, required this.hintText, this.onSubmit});
  final String hintText;
  final Function(String)? onSubmit;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: onSubmit,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 15),
        fillColor: Color(0xffF8E0A0),
        filled: true,
        border: _buildOutlineInputBorder(),
        enabledBorder: _buildOutlineInputBorder(),
        focusedBorder: _buildOutlineInputBorder(),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: BorderSide(color: Colors.white, width: 2),
    );
  }
}
