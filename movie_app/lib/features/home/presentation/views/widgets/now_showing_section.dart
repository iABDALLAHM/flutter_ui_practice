import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_color.dart';
import 'package:movie_app/core/utils/styels.dart';
import 'package:movie_app/features/home/presentation/views/widgets/now_showing_card_list_view.dart';
import 'package:movie_app/features/home/presentation/views/widgets/see_more_button.dart';

class NowShowingSection extends StatelessWidget {
  const NowShowingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Now Showing",
                style: Styels.textStyle18.copyWith(
                  color: AppColor.kPrimaryColor,
                ),
              ),
              SeeMoreButton(),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(height: 350, child: NowShowingCardListView()),
        ],
      ),
    );
  }
}
