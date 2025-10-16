import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.transactionHistoryModel,
  });
  final TransactionHistoryModel transactionHistoryModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        title: Text(
          transactionHistoryModel.title,
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          transactionHistoryModel.date,
          style: AppStyles.styleRegular16.copyWith(color: Color(0xffAAAAAA)),
        ),
        trailing: Text(
          r"$"
          "${transactionHistoryModel.amount}",
          style: AppStyles.styleSemiBold20.copyWith(
            color: transactionHistoryModel.isWithDrawal
                ? Color(0xffF3735E)
                : Color(0xff7DD97B),
          ),
        ),
      ),
    );
  }
}

