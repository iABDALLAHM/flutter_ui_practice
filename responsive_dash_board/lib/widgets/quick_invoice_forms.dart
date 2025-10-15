import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/custom_form.dart';

class QuickInvoiceForms extends StatelessWidget {
  const QuickInvoiceForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: CustomForm()),
            const SizedBox(width: 16),

            Expanded(child: CustomForm()),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(child: CustomForm()),
            const SizedBox(width: 16),

            Expanded(child: CustomForm()),
          ],
        ),
        const SizedBox(height: 24),
        Row(
          children: [
            Expanded(child: CustomButton(text: "Add more details")),
            const SizedBox(width: 16),
            Expanded(
              child: CustomButton(
                text: "Send Money",
                backgroundColor: Color(0xff4EB7F2),
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
