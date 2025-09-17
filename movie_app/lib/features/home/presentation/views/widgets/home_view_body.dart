import 'package:flutter/material.dart';
import 'package:movie_app/features/home/data/models/film_model.dart';
import 'package:movie_app/features/home/data/services/get_film_service.dart';
import 'package:movie_app/features/home/presentation/views/widgets/now_showing_section.dart';
import 'package:movie_app/features/home/presentation/views/widgets/popular_section.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  List<FilmModel> nowShowing = [];
  List<FilmModel> popular = [];
  @override
  void initState() {
    getNowShowingFilms();
    getPopularFilms();
    super.initState();
  }

  Future<void> getNowShowingFilms() async {
    nowShowing = await GetFilmService().getFilms(category: "nowShowing");
    setState(() {});
    print(nowShowing.length);
  }

  Future<void> getPopularFilms() async {
    popular = await GetFilmService().getFilms(category: "popular");
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(height: 10),
                NowShowingSection(filmsList: nowShowing),
                const SizedBox(height: 24),
              ],
            ),
          ),
          SliverToBoxAdapter(child: PopularSection(filmList: popular)),
        ],
      ),
    );
  }
}
