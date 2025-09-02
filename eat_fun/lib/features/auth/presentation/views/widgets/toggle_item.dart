import 'package:flutter/material.dart';

class ToggleItem extends StatelessWidget {
  const ToggleItem({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onTap,
  });
  final String text;
  final bool isSelected;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        height: 40,
        curve: Curves.linear,
        duration: Duration(milliseconds: 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isSelected ? Color(0xffBE0127) : Color(0xffF8E0A0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: isSelected ? Colors.white : Color(0xffBE0127),
            ),
          ),
        ),
      ),
    );
  }
}
