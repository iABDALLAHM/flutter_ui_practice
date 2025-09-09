import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/now_showing_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(child: NowShowingSection()),
        ],
      ),
    );
  }
}
