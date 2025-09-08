import 'package:eat_fun/features/home/data/models/food_model.dart';
import 'package:eat_fun/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryItemListView extends StatelessWidget {
  const CategoryItemListView({
    super.key,
    required this.onTap,
    required this.selectedCategory,
    required this.categoryList,
  });
  final Function(FoodCategory) onTap;
  final FoodCategory selectedCategory;
  final List<FoodCategory> categoryList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categoryList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 10),
          child: CategoryItem(
            onTap: () => onTap(categoryList[index]),
            category: categoryList[index],
            isSelected: categoryList[index] == selectedCategory,
          ),
        );
      },
    );
  }
}
