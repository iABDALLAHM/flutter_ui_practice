import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.backgroundColor,
    this.foregroundColor,
  });
  final String text;
  final Color? backgroundColor, foregroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          backgroundColor: backgroundColor ?? Colors.white,
          foregroundColor: foregroundColor ?? Color(0xff4EB7F2),
        ),
        child: Text(
          text,
          style: AppStyles.styleSemiBold18.copyWith(
            color: foregroundColor ?? Color(0xff4EB7F2),
          ),
        ),
      ),
    );
  }
}
