import 'package:bmi_calaculator_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff333244),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 50),
          Text(
            "Normal",
            style: Styles.textStyle30.copyWith(color: Color(0xff21BF73)),
          ),
          const SizedBox(height: 33),
          Text(
            "19.2",
            style: Styles.textStyle50.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 60),
          Text(
            "You Have a Normal Body Weight,\nGood Job.",
            style: Styles.textStyle20.copyWith(color: Color(0xff8B8C9E)),
          ),
          const SizedBox(height: 230),
        ],
      ),
    );
  }
}
