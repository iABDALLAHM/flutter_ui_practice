import 'package:eat_fun/core/utils/assets.dart';
import 'package:eat_fun/core/utils/styels.dart';
import 'package:flutter/material.dart';

class CategoryCardItem extends StatelessWidget {
  const CategoryCardItem({super.key});
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
          Image(image: AssetImage(AssetData.homeBurger)),
          Text("foodModel.foodName", style: Styels.textStyle25),
          Row(
            children: [
              Icon(Icons.star_outline),
              Icon(Icons.star_outline),
              Icon(Icons.star_outline),
              Icon(Icons.star_outline),
              Icon(Icons.star_outline),
            ],
          ),
          Text("foodModel.foodPrice.toString()", style: Styels.textStyle25),
        ],
      ),
    );
  }
}
