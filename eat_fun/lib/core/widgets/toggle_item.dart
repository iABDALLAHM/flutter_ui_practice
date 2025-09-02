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
        curve: Curves.linear,
        duration: Duration(milliseconds: 2),
        decoration: BoxDecoration(
          color: isSelected ? Colors.red : Colors.amber,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: isSelected ? Colors.white : Colors.red,
          ),
        ),
      ),
    );
  }
}
