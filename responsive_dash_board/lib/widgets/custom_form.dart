import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Customer name", style: AppStyles.styleMedium16),
        const SizedBox(height: 12),
        CutomTextField(hintText: "Type customer name"),
      ],
    );
  }
}
