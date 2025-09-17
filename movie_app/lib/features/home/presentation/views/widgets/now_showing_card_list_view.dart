import 'package:flutter/material.dart';
import 'package:movie_app/features/home/data/models/film_model.dart';
import 'package:movie_app/features/home/presentation/views/widgets/now_showing_card.dart';

class NowShowingCardListView extends StatelessWidget {
  const NowShowingCardListView({super.key, required this.filmsList});
  final List<FilmModel> filmsList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: filmsList.length,
      itemBuilder: (context, index) {
        return NowShowingCard(film: filmsList[index]);
      },
    );
  }
}
