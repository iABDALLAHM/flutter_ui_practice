import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/my_card_section.dart';

class MyCardAndIncomeSection extends StatelessWidget {
  const MyCardAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [MyCardSection(), const SizedBox(height: 24), IncomeSection()],
    );
  }
}
