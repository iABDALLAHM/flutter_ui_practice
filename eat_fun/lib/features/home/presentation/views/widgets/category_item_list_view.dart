import 'package:eat_fun/features/home/data/models/food_model.dart';
import 'package:eat_fun/features/home/presentation/views/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoryItemListView extends StatelessWidget {
  const CategoryItemListView({
    super.key,
    required this.categories,
    required this.onTap,
    required this.isSelected,
  });
  final List<FoodModel> categories;
  final Function(String) onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(right: 10),
          child: CategoryItem(categoryModel: categories[index], onTap: onTap(categories[index].categoryName),isSelected: isSelected,),
        );
      },
    );
  }
}
