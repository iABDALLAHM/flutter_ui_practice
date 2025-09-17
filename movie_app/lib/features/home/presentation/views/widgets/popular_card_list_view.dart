import 'package:flutter/material.dart';
import 'package:movie_app/features/home/data/models/film_model.dart';
import 'package:movie_app/features/home/presentation/views/widgets/popular_card.dart';

class PopularCardListView extends StatelessWidget {
  const PopularCardListView({super.key, required this.filmList});
  final List<FilmModel> filmList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: filmList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 10, top: 5),
          child: PopularCard(filmModel: filmList[index]),
        );
      },
    );
  }
}
