import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expenses_item.dart';

class AllExpensesItemList extends StatefulWidget {
  const AllExpensesItemList({super.key});

  @override
  State<AllExpensesItemList> createState() => _AllExpensesItemListState();
}

class _AllExpensesItemListState extends State<AllExpensesItemList> {
  int isSelected = 0;
  static List<AllExpensesItemModel> allExpensesItemsList = [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      amount: 20000,
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      amount: 20000,
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      amount: 20000,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              isSelected = 0;
              setState(() {});
            },
            child: AllExpensesItem(
              allExpensesItemModel: allExpensesItemsList[0],
              isActive: isSelected == 0 ? true : false,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              isSelected = 1;
              setState(() {});
            },
            child: AllExpensesItem(
              allExpensesItemModel: allExpensesItemsList[1],
              isActive: isSelected == 1 ? true : false,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: GestureDetector(
            onTap: () {
              isSelected = 2;
              setState(() {});
            },
            child: AllExpensesItem(
              allExpensesItemModel: allExpensesItemsList[2],
              isActive: isSelected == 2 ? true : false,
            ),
          ),
        ),
      ],
    );
  }
}
