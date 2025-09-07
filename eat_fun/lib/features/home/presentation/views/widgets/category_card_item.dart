import 'package:eat_fun/core/utils/styels.dart';
import 'package:eat_fun/features/home/data/models/food_model.dart';
import 'package:flutter/material.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({super.key, required this.item});
  final FoodItem item;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(item.foodImage!)),
            Expanded(
              child: Text(
                item.foodName!,
                style: Styels.textStyle25,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              children: [
                Icon(Icons.star_outline),
                Icon(Icons.star_outline),
                Icon(Icons.star_outline),
                Icon(Icons.star_outline),
                Icon(Icons.star_outline),
              ],
            ),
            Text(
              "${item.foodPrice!.toString()}"
              r"$",
              style: Styels.textStyle25,
            ),
          ],
        ),
      ),
    );
  }
}
