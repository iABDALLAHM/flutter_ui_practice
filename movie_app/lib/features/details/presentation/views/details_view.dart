import 'package:flutter/material.dart';
import 'package:movie_app/features/details/presentation/views/widgets/details_view_body.dart';
import 'package:movie_app/features/home/data/models/film_model.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.film});
  final FilmModel film;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(child: DetailsViewBody(filmModel: film,)),
    );
  }
}
