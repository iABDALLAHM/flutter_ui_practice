import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_section.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_section.dart';

class AllExpensesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AllExpensesSection(),
        const SizedBox(height: 24),
        QuickInvoiceSection(),
      ],
    );
  }
}
