import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_section.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_forms.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoiceSection extends StatelessWidget {
  const QuickInvoiceSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          const SizedBox(height: 24),
          LatestTransactionSection(),
          Divider(height: 48),
          QuickInvoiceForms(),
        ],
      ),
    );
  }
}
