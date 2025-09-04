import 'package:eat_fun/core/utils/styels.dart';
import 'package:eat_fun/features/home/data/models/food_model.dart';
import 'package:flutter/material.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({super.key, required this.foodModel});
  final FoodModel foodModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(foodModel.foodImage)),
          Text(foodModel.foodName, style: Styels.textStyle25),
          Row(
            children: [
              Icon(Icons.star_outline),
              Icon(Icons.star_outline),
              Icon(Icons.star_outline),
              Icon(Icons.star_outline),
              Icon(Icons.star_outline),
            ],
          ),
          Text(foodModel.foodPrice, style: Styels.textStyle25),
        ],
      ),
    );
  }
}
