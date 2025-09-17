import 'package:flutter/material.dart';
import 'package:movie_app/features/details/presentation/views/widgets/film_details.dart';
import 'package:movie_app/features/home/data/models/film_model.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.filmModel});
  final FilmModel filmModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        buildSliverAppBar(),
        SliverList(
          delegate: SliverChildListDelegate([FilmDetails(film: filmModel)]),
        ),
      ],
    );
  }

  Widget buildSliverAppBar() {
    return SliverAppBar(
      iconTheme: IconThemeData(color: Colors.white, size: 30),
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image(
          fit: BoxFit.fill,
          image: AssetImage(filmModel.posterUrl),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz, color: Colors.white, size: 30),
        ),
      ],
      expandedHeight: 600,
      backgroundColor: Colors.grey,
    );
  }
}
