import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/popular_view_body.dart';

class PopularView extends StatelessWidget {
  const PopularView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: PopularViewBody());
  }
}
