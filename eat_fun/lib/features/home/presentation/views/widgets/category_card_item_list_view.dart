import 'package:eat_fun/features/home/data/models/food_model.dart';
import 'package:eat_fun/features/home/presentation/views/widgets/category_card_item.dart';
import 'package:flutter/material.dart';

class CategoryCardItemListView extends StatelessWidget {
  const CategoryCardItemListView({super.key, required this.foodsList});
  final List<FoodModel> foodsList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: foodsList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CategoryCardItem(foodModel: foodsList[index]),
        );
      },
    );
  }
}
