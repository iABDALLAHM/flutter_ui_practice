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
        margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 3),
        duration: Duration(milliseconds: 1),
        curve: Curves.linear,
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(8),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            color: isSelected ? Colors.black : Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
