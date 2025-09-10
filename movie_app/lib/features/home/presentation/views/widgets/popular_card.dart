import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/cons.dart';
import 'package:movie_app/core/utils/assets.dart';
import 'package:movie_app/core/utils/styels.dart';
import 'package:movie_app/features/home/presentation/views/widgets/film_time.dart';
import 'package:movie_app/features/home/presentation/views/widgets/rating_section.dart';
import 'package:movie_app/features/home/presentation/views/widgets/tags.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0, 3),
                blurRadius: 5,
              ),
            ],
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(AssetsData.kNowShowingCard),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Venom Let There Be Carnage",
                style: Styels.textStyle18.copyWith(
                  fontFamily: kMulishFontFamily,
                ),
              ),
              const SizedBox(height: 8),
              RatingSection(),
              const SizedBox(height: 8),
              Row(
                children: [
                  Tags(text: "HORROR"),
                  Tags(text: "MYSTERY"),
                  Tags(text: "THRILLER"),
                ],
              ),
              const SizedBox(height: 8),
              FilmTime(),
            ],
          ),
        ),
      ],
    );
  }
}
