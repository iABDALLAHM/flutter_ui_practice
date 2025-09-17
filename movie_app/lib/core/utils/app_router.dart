import 'package:go_router/go_router.dart';
import 'package:movie_app/features/details/presentation/views/casting_view.dart';
import 'package:movie_app/features/details/presentation/views/details_view.dart';
import 'package:movie_app/features/home/data/models/film_model.dart';
import 'package:movie_app/features/home/presentation/views/home_view.dart';
import 'package:movie_app/features/home/presentation/views/now_showing_view.dart';
import 'package:movie_app/features/home/presentation/views/popular_view.dart';

class AppRouter {
  static String kHomeView = "/";
  static String kDetailsView = "/details-view";
  static String kNowShowingView = "/now-showing-view";
  static String kPopularView = "/popular-view";
  static String kCastingView = "/casting-view";

  static GoRouter routes = GoRouter(
    routes: [
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) {
          FilmModel film = state.extra as FilmModel;
          return DetailsView(film: film);
        },
      ),
      GoRoute(
        path: kNowShowingView,
        builder: (context, state) => NowShowingView(),
      ),
      GoRoute(path: kPopularView, builder: (context, state) => PopularView()),
      GoRoute(path: kCastingView, builder: (context, state) => CastingView()),
    ],
  );
}
