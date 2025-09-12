import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/cons.dart';
import 'package:movie_app/core/utils/styels.dart';
import 'package:movie_app/features/details/presentation/views/widgets/casting_section.dart';
import 'package:movie_app/features/details/presentation/views/widgets/description_section.dart';
import 'package:movie_app/features/details/presentation/views/widgets/film_info.dart';
import 'package:movie_app/features/home/presentation/views/widgets/rating_section.dart';
import 'package:movie_app/features/home/presentation/views/widgets/tags.dart';

class FilmDetails extends StatelessWidget {
  const FilmDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Spiderman: No Way Home",
                style: Styels.textStyle20.copyWith(
                  fontFamily: kMulishFontFamily,
                ),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.bookmark_outline)),
            ],
          ),
          const SizedBox(height: 10),
          RatingSection(),
          const SizedBox(height: 16),
          Row(
            children: [
              Tags(text: "ACTION"),
              Tags(text: "ADVENTURE"),
              Tags(text: "FANTASY"),
            ],
          ),
          const SizedBox(height: 16),
          FilmInfo(),
          const SizedBox(height: 16),
          DescriptionSection(),
          const SizedBox(height: 24),
          CastingSection(),
        ],
      ),
    );
  }
}
