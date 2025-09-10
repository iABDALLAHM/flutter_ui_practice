import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_color.dart';
import 'package:movie_app/core/utils/styels.dart';
import 'package:movie_app/features/home/presentation/views/widgets/popular_card_list_view.dart';
import 'package:movie_app/features/home/presentation/views/widgets/see_more_button.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Popular",
              style: Styels.textStyle18.copyWith(color: AppColor.kPrimaryColor),
            ),
            SeeMoreButton(),
          ],
        ),
        const SizedBox(height: 10),
        PopularCardListView(),
      ],
    );
  }
}
