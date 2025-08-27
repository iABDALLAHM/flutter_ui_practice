import 'package:bmi_calaculator_app/features/home/presentation/views/home_view.dart';
import 'package:bmi_calaculator_app/features/home/presentation/views/result_view.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const kHomeView = "/";
  static const kResultView = "calc_view";
  static GoRouter router = GoRouter(
    initialLocation: kHomeView,
    routes: [
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(path: kResultView, builder: (context, state) => ResultView()),
    ],
  );
}
