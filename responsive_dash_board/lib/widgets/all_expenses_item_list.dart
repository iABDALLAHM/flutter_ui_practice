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
      children: allExpensesItemsList.asMap().entries.map((element) {
        var value = element.value;
        var index = element.key;
        return Expanded(
          child: GestureDetector(
            onTap: () {
              if (isSelected != index) {
                isSelected = index;
                setState(() {});
              }
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
              child: AllExpensesItem(
                allExpensesItemModel: value,
                isActive: isSelected == index ? true : false,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}