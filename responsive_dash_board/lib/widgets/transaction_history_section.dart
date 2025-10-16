import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transaaction_history_header.dart';
import 'package:responsive_dash_board/widgets/transaction_history_items_list.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TransactionHistoryHeader(),
        const SizedBox(height: 20),
        Text(
          "13 April 2022",
          style: AppStyles.styleMedium16.copyWith(color: Color(0xffAAAAAA)),
        ),
        const SizedBox(height: 16),
        TransactionHistoryItemsList(),
      ],
    );
  }
}

