import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/assets.dart';
import 'package:movie_app/features/details/presentation/views/widgets/film_details.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        buildSliverAppBar(),
        SliverList(delegate: SliverChildListDelegate([FilmDetails()])),
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
          image: AssetImage(AssetsData.kNowShowingCard),
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
