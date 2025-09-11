import 'package:flutter/material.dart';
import 'package:movie_app/core/constants/cons.dart';
import 'package:movie_app/core/utils/app_color.dart';
import 'package:movie_app/core/utils/assets.dart';
import 'package:movie_app/core/utils/styels.dart';
import 'package:movie_app/features/home/presentation/views/widgets/rating_section.dart';
import 'package:movie_app/features/home/presentation/views/widgets/see_more_button.dart';
import 'package:movie_app/features/home/presentation/views/widgets/tags.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        buildSliverAppBar(),
        SliverList(
          delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Spiderman: No Way Home",
                        style: Styels.textStyle20.copyWith(
                          fontFamily: kMulishFontFamily,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.bookmark_outline),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  RatingSection(),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Tags(text: "ACTION"),
                      Tags(text: "ADVENTURE"),
                      Tags(text: "FANTASY"),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Length",
                            style: Styels.textStyle16.copyWith(
                              color: Colors.grey,
                              fontFamily: kMulishFontFamily,
                            ),
                          ),
                          Text(
                            "2h 28min",
                            style: Styels.textStyle16.copyWith(
                              fontFamily: kMulishFontFamily,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            "Language",
                            style: Styels.textStyle16.copyWith(
                              color: Colors.grey,
                              fontFamily: kMulishFontFamily,
                            ),
                          ),
                          Text(
                            "English",
                            style: Styels.textStyle16.copyWith(
                              fontFamily: kMulishFontFamily,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 20),
                      Column(
                        children: [
                          Text(
                            "Rating",
                            style: Styels.textStyle16.copyWith(
                              color: Colors.grey,
                              fontFamily: kMulishFontFamily,
                            ),
                          ),
                          Text(
                            "PG-13",
                            style: Styels.textStyle16.copyWith(
                              fontFamily: kMulishFontFamily,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  DescriptionSection(),
                  const SizedBox(height: 24),
                  CastingSection(),
                ],
              ),
            ),
          ]),
        ),
      ],
    );
  }

  Widget buildSliverAppBar() {
    return SliverAppBar(
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image(
          fit: BoxFit.fill,
          image: AssetImage(AssetsData.kNowShowingCard),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_horiz, color: Colors.white, size: 30),
        ),
      ],
      expandedHeight: 350,
      backgroundColor: Colors.grey,
    );
  }
}

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Description",
          style: Styels.textStyle18.copyWith(color: AppColor.kPrimaryColor),
        ),
        const SizedBox(height: 10),
        Text(
          """With Spider-Man's identity now revealed, Peter asks Doctor Strange for help. When a spell goes wrong, dangerous foes from other worlds start to appear, forcing Peter to discover what it truly means to be Spider-Man.""",
          style: TextStyle(fontFamily: kMulishFontFamily, color: Colors.grey),
        ),
      ],
    );
  }
}

class CastingSection extends StatelessWidget {
  const CastingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Cast",
              style: Styels.textStyle18.copyWith(color: AppColor.kPrimaryColor),
            ),
            SeeMoreButton(),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            CastCharacter(),
            const SizedBox(width: 5),
            CastCharacter(),
            const SizedBox(width: 5),
            CastCharacter(),
            const SizedBox(width: 5),
            CastCharacter(),
          ],
        ),
      ],
    );
  }
}

class CastCharacter extends StatelessWidget {
  const CastCharacter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.kCastCharacter),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Tom Holland",
          style: Styels.textStyle16.copyWith(fontFamily: kMulishFontFamily),
        ),
      ],
    );
  }
}
