import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {
  const SocialIconButton({
    super.key,
    required this.image,
    required this.onPressed,
  });
  final Widget image;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: const Color.fromARGB(74, 158, 158, 158)),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: image,
    );
  }
}
