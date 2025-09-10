import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/cons.dart';
import 'package:movie_app/core/utils/app_router.dart';

void main() {
  runApp(const MovieApp());
}

class MovieApp extends StatelessWidget {
  const MovieApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(fontFamily: kMerriweatherFontFamily),
      routerConfig: AppRouter.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
