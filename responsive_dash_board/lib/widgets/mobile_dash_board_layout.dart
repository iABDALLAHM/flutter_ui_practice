import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_income_section.dart';

class MobileDashBoardLayout extends StatelessWidget {
  const MobileDashBoardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          const SizedBox(height: 24),
          MyCardAndIncomeSection(),
        ],
      ),
    );
  }
}
