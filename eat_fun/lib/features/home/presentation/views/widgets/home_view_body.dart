import 'package:eat_fun/core/utils/styels.dart';
import 'package:eat_fun/features/home/presentation/views/widgets/category_section.dart';
import 'package:eat_fun/features/home/presentation/views/widgets/custom_food_search.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Choose the", style: Styels.textStyle25),
        Text("FOOD you LOVE", style: Styels.textStyle25),
        const SizedBox(height: 20),
        CustomFoodSearch(hintText: "Search for a food item"),
        const SizedBox(height: 10),
        Expanded(child: CategorySection()),
      ],
    );
  }
}
