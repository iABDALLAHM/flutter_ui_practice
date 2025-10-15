import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class InActiveAllExpesnsesItem extends StatelessWidget {
  const InActiveAllExpesnsesItem({
    super.key,
    required this.allExpensesItemModel,
  });
  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xffF1F1F1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: allExpensesItemModel.image,
            imageColor: Color(0xff4EB7F2),
          ),
          const SizedBox(height: 34),
          Text(allExpensesItemModel.title, style: AppStyles.styleSemiBold16),
          const SizedBox(height: 8),

          Text(allExpensesItemModel.date, style: AppStyles.styleRegular14),
          const SizedBox(height: 8 * 2),

          Text(
            r"$"
            "${allExpensesItemModel.amount}",
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
