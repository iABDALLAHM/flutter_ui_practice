import 'package:eat_fun/core/utils/styels.dart';
import 'package:eat_fun/features/home/data/models/food_model.dart';
import 'package:eat_fun/features/home/presentation/views/widgets/category_card_item_list_view.dart';
import 'package:eat_fun/features/home/presentation/views/widgets/category_item_list_view.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  bool isSelected = false;
  String selected = "Burgers";

  final List<FoodModel> categoryList = [];
  final List<FoodModel> foodList = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: Styels.textStyle25.copyWith(color: Colors.black),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 140,
          child: CategoryItemListView(
            isSelected: isSelected,
            categories: categoryList,
            onTap: (categoryName) {
              setState(() {
                selected = categoryName;
              });
            },
          ),
        ),

        Text(selected, style: Styels.textStyle25.copyWith(color: Colors.black)),

        if (selected == "Burgers")
          SizedBox(
            height: 250,
            child: CategoryCardItemListView(foodmodel: foodList),
          )
        else if (selected == "Pizza")
          SizedBox(
            height: 250,
            child: CategoryCardItemListView(foodmodel: foodList),
          )
        else if (selected == "Drinks")
          SizedBox(
            height: 250,
            child: CategoryCardItemListView(foodmodel: foodList),
          ),
        const SizedBox(height: 10),
      ],
    );
  }
}
