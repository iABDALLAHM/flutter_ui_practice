import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });
  final VoidCallback onPressed;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.grey,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(112, 0, 0, 0),
            offset: Offset(5, 3),
            spreadRadius: 0,
            blurRadius: 5,
          ),
        ],
      ),
      child: IconButton(
        color: Colors.white,
        iconSize: 20,
        style: IconButton.styleFrom(foregroundColor: Colors.white),
        onPressed: onPressed,
        icon: icon,
      ),
    );
  }
}
