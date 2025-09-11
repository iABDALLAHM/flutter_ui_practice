import 'package:go_router/go_router.dart';
import 'package:movie_app/features/details/presentation/views/details_view.dart';
import 'package:movie_app/features/home/presentation/views/home_view.dart';

class AppRouter {
  static String kHomeView = "/";
  static String kDetailsView = "/details-view";
  static GoRouter routes = GoRouter(
    routes: [
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(path: kDetailsView, builder: (context, state) => DetailsView()),
    ],
  );
}
