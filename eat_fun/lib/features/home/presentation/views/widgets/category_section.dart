import 'package:eat_fun/core/utils/styels.dart';
import 'package:eat_fun/features/home/presentation/views/widgets/category_card_item_list_view.dart';
import 'package:eat_fun/features/home/presentation/views/widgets/category_item_list_view.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> categoryList = [
      "Burgers",
      "Pizza",
      "Drinks",
      "Burgers",
      "Pizza",
      "Drinks",
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: Styels.textStyle25.copyWith(color: Colors.black),
        ),
        const SizedBox(height: 10),
        SizedBox(height: 140, child: CategoryItemListView(names: categoryList)),
        Text(
          "Categories",
          style: Styels.textStyle25.copyWith(color: Colors.black),
        ),
        const SizedBox(height: 10),
        SizedBox(height: 250, child: CategoryCardItemListView()),
      ],
    );
  }
}




