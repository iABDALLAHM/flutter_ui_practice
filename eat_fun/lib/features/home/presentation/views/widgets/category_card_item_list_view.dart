import 'package:eat_fun/features/home/presentation/views/widgets/category_card_item.dart';
import 'package:flutter/material.dart';

class CategoryCardItemListView extends StatelessWidget {
  const CategoryCardItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 10),
          child: CategoryCardItem(),
        );
      },
    );
  }
}
