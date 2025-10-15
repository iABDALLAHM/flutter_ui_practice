import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/my_card_and_income_section.dart';

class DesktopDashBoardLayout extends StatelessWidget {
  const DesktopDashBoardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        const SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: AllExpensesAndQuickInvoiceSection(),
          ),
        ),
        const SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: MyCardAndIncomeSection(),
          ),
        ),
      ],
    );
  }
}
