
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFF1F1F1)),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Text("Monthly", style: AppStyles.styleMedium16),
          const SizedBox(width: 18),
          Transform.rotate(angle: -1.6, child: Icon(Icons.arrow_back_ios_new)),
        ],
      ),
    );
  }
}
