import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_card.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    // return AspectRatio(
    //   aspectRatio: 420 / 215,
    //   child: PageView.builder(
    //     controller: pageController,
    //     scrollDirection: Axis.horizontal,
    //     itemCount: 3,
    //     itemBuilder: (context, index) => CustomCard(),
    //   ),
    // );
    return ExpandablePageView.builder(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      itemBuilder: (context, index) => CustomCard(),
    );
  }
}
