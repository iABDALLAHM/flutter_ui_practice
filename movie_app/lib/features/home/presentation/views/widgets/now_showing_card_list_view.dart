import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/now_showing_card.dart';

class NowShowingCardListView extends StatelessWidget {
  const NowShowingCardListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return NowShowingCard();
      },
    );
  }
}


