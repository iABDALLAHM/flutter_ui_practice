import 'package:bmi_calaculator_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class SliderSection extends StatefulWidget {
  const SliderSection({super.key, required this.onChange, required this.value});
  final Function(double)? onChange;
  final double value;
  @override
  State<SliderSection> createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
        color: Color(0xff333244),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            "Height",
            style: Styles.textStyle25.copyWith(
              color: Color(0xff8B8C9E),
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(height: 15),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${widget.value.round()}",
                  style: Styles.textStyle25.copyWith(fontSize: 30),
                ),
                TextSpan(text: "cm", style: Styles.textStyle20),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Slider(
            min: 0,
            max: 200,
            activeColor: Color(0xffE83D67),
            inactiveColor: Colors.white,
            value: widget.value,
            onChanged: widget.onChange,
          ),
        ],
      ),
    );
  }
}