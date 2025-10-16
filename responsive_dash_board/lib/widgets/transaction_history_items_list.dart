import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_model.dart';
import 'package:responsive_dash_board/widgets/transaction_history_item.dart';

class TransactionHistoryItemsList extends StatelessWidget {
  const TransactionHistoryItemsList({super.key});
  static const List<TransactionHistoryModel> transactionList = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: 20000,
      isWithDrawal: true,
    ),
    TransactionHistoryModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: 20000,
      isWithDrawal: false,
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: 20000,
      isWithDrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactionList
          .map(
            (ele) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: TransactionHistoryItem(transactionHistoryModel: ele),
            ),
          )
          .toList(),
    );
  }
}
