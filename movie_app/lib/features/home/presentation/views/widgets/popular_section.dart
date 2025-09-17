import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/utils/app_color.dart';
import 'package:movie_app/core/utils/app_router.dart';
import 'package:movie_app/core/utils/styels.dart';
import 'package:movie_app/features/home/data/models/film_model.dart';
import 'package:movie_app/features/home/presentation/views/widgets/popular_card_list_view.dart';
import 'package:movie_app/core/widgets/see_more_button.dart';

class PopularSection extends StatelessWidget {
  const PopularSection({super.key, required this.filmList});
  final List<FilmModel> filmList;
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
            SeeMoreButton(
              onTap: () {
                GoRouter.of(context).push(AppRouter.kPopularView);
              },
            ),
          ],
        ),
        const SizedBox(height: 10),
        PopularCardListView(filmList: filmList,),
      ],
    );
  }
}
