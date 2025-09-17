import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/core/constants/cons.dart';
import 'package:movie_app/core/utils/app_router.dart';
import 'package:movie_app/core/utils/styels.dart';
import 'package:movie_app/features/home/data/models/film_model.dart';
import 'package:movie_app/features/home/presentation/views/widgets/rating_section.dart';

class NowShowingCard extends StatelessWidget {
  const NowShowingCard({super.key, required this.film});
  final FilmModel film;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kDetailsView, extra: film);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 170,
            height: 250,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(0, 3),
                  blurRadius: 5,
                ),
              ],
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(film.posterUrl),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 190,
            child: Text(
              film.filmName,
              style: Styels.textStyle18.copyWith(fontFamily: kMulishFontFamily),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 10),
          RatingSection(rating: film.rating),
        ],
      ),
    );
  }
}
