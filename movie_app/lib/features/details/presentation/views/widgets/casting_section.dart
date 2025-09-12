import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_color.dart';
import 'package:movie_app/core/utils/styels.dart';
import 'package:movie_app/features/details/presentation/views/widgets/cast_character.dart';
import 'package:movie_app/core/widgets/see_more_button.dart';

class CastingSection extends StatelessWidget {
  const CastingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cast",
                style: Styels.textStyle18.copyWith(
                  color: AppColor.kPrimaryColor,
                ),
              ),
              SeeMoreButton(onTap: () {}),
            ],
          ),
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
