import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dash_board/widgets/my_card_and_income_section.dart';

class ScrollableDesktopLayout extends StatelessWidget {
  const ScrollableDesktopLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: [
        SliverToBoxAdapter(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: AllExpensesAndQuickInvoiceSection(),
                ),
              ),
              const SizedBox(width: 24),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: MyCardAndIncomeSection(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
