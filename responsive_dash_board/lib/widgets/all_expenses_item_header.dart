import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.image,
    this.iconColor,
    this.backgroundColor,
    required this.imageColor,
  });
  final String image;
  final Color? iconColor, backgroundColor;
  final Color imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: backgroundColor ?? Color(0xffFAFAFA),
                  shape: OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(
                    image,
                    colorFilter: ColorFilter.mode(imageColor, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ),
        ),
   
   
        Transform.rotate(
          angle: -180 * (pi / 180),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: iconColor ?? Color(0xff064061),
          ),
        ),
      ],
    );
  }
}
