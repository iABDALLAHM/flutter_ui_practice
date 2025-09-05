import 'package:eat_fun/core/utils/styels.dart';
import 'package:eat_fun/features/home/data/models/food_model.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    this.isSelected = false,
    required this.categoryModel,
    required this.onTap,
  });
  final bool isSelected;
  final FoodModel categoryModel;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 5,
                  color: isSelected ? Color(0xffEA3322) : Colors.grey,
                ),
              ],
              border: Border.all(
                width: 2,
                color: isSelected ? Color(0xffEA3322) : Colors.transparent,
              ),
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            width: 120,
            height: 80,
            child: Center(
              child: Icon(
                // categoryModel.icon,
                Icons.search,
                size: 35,
                color: isSelected ? Colors.black87 : Colors.grey,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            categoryModel.categoryName,
            style: Styels.textStyle20.copyWith(
              fontWeight: FontWeight.bold,
              color: isSelected ? Color(0xffEA3322) : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
