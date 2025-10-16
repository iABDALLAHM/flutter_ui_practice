import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/custom_page_view.dart';
import 'package:responsive_dash_board/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/widgets/transaction_history_section.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    updateIndex();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("My card", style: AppStyles.styleSemiBold20),
          const SizedBox(height: 20),
          CustomPageView(pageController: pageController),
          const SizedBox(height: 20),
          DotsIndicator(currentIndex: currentIndex),
          Divider(height: 40),
          TransactionHistorySection(),
        ],
      ),
    );
  }

  void updateIndex() {
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });
  }
}
