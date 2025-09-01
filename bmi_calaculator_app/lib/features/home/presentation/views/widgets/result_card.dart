import 'package:bmi_calaculator_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({super.key, required this.res});
  final double res;
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
            res.round().toString(),
            style: Styles.textStyle50.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 60),
          Text(
            getBMICategory(res),
            style: Styles.textStyle20.copyWith(color: Color(0xff8B8C9E)),
          ),
          const SizedBox(height: 230),
        ],
      ),
    );
  }

  String getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return "Underweight";
    } else if (bmi < 25) {
      return "Normal";
    } else if (bmi < 30) {
      return "Overweight";
    } else {
      return "it's Fat";
    }
  }
}
