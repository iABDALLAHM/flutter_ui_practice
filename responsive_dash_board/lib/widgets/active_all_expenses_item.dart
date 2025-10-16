import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item_header.dart';

class ActiveAllExpesnsesItem extends StatelessWidget {
  const ActiveAllExpesnsesItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xff4EB7F2),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageColor: Colors.white,
            backgroundColor: Color.fromARGB(255, 107, 201, 255),
            image: allExpensesItemModel.image,
            iconColor: Colors.white,
          ),
          const SizedBox(height: 34),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.title,
              style: AppStyles.styleSemiBold16.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.date,
              style: AppStyles.styleRegular14.copyWith(color: Colors.white),
            ),
          ),
          const SizedBox(height: 8 * 2),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              r"$"
              "${allExpensesItemModel.amount}",
              style: AppStyles.styleSemiBold24.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
