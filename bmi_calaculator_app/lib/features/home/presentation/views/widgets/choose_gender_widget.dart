import 'package:bmi_calaculator_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ChooseGenderWidget extends StatelessWidget {
  const ChooseGenderWidget({
    super.key,
    required this.icon,
    required this.text,
    this.color = const Color(0xff333244),
    required this.onTap,
  });
  final IconData icon;
  final String text;
  final Color color;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Icon(icon, size: 160, color: Colors.white),
            Text(
              textAlign: TextAlign.center,
              text,
              style: Styles.textStyle25.copyWith(
                color: Color(0xff8B8C9E),
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
