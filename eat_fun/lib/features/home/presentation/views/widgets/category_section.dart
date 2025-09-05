import 'package:eat_fun/core/utils/styels.dart';
import 'package:eat_fun/features/home/data/models/food_model.dart';
import 'package:eat_fun/features/home/data/services/get_food_services.dart';
import 'package:eat_fun/features/home/presentation/views/widgets/category_card_item_list_view.dart';
import 'package:eat_fun/features/home/presentation/views/widgets/category_item_list_view.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  List<FoodModel> category = [];
  List<FoodModel> foods = [];
  FoodModel? whatIsSelected;

  @override
  void initState() {
    loadingCategorise();
    loadingFoods();
    super.initState();
  }

  Future<void> loadingCategorise() async {
    category = await GetFoodServices().getCategories();
    if (category.isNotEmpty) {
      whatIsSelected = category.first;
    }
    setState(() {});
  }

  Future<void> loadingFoods() async {
    foods = await GetFoodServices().getFood(
      categoryName: " whatIsSelected!.categoryName",
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (category.isEmpty || whatIsSelected == null) {
      return const Center(child: CircularProgressIndicator());
    }
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
            isSelected: false,
            onTap: (p0) {},
            categoryList: category,
          ),
        ),

        Text(
          whatIsSelected!.categoryName,
          style: Styels.textStyle25.copyWith(color: Colors.black),
        ),
        const SizedBox(height: 20),
        SizedBox(
          height: 250,
          child: CategoryCardItemListView(foodsList: foods),
        ),
      ],
    );
  }
}
