import 'package:eat_fun/core/utils/styels.dart';
import 'package:eat_fun/features/home/presentation/views/widgets/category_card_item_list_view.dart';
import 'package:eat_fun/features/home/presentation/views/widgets/category_item_list_view.dart';
import 'package:flutter/material.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
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
          child: CategoryItemListView(isSelected: true, onTap: (p0) {}),
        ),

        Text(
          "Categories",
          style: Styels.textStyle25.copyWith(color: Colors.black),
        ),

        SizedBox(height: 250, child: CategoryCardItemListView()),
      ],
    );
  }
}
