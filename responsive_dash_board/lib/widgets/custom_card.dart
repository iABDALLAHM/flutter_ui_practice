import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 420 / 215,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Color(0xff4EB7F2),
              image: DecorationImage(image: AssetImage(Assets.imagesMaskgroup)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  contentPadding: EdgeInsets.only(left: 31, right: 47, top: 20),
                  title: FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: AlignmentDirectional.centerStart,
                    child: Text(
                      "Name card",
                      style: AppStyles.styleRegular16.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  subtitle: FittedBox(
                    alignment: AlignmentDirectional.centerStart,

                    fit: BoxFit.scaleDown,
                    child: Text(
                      "Syah Bandi",
                      style: AppStyles.styleMedium20.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  trailing: SvgPicture.asset(Assets.imagesGallery),
                ),
                Expanded(child: SizedBox()),
                Padding(
                  padding: const EdgeInsets.only(right: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      FittedBox(
                        alignment: AlignmentDirectional.centerEnd,
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "0918 8124 0042 8129",
                          style: AppStyles.styleSemiBold24.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      FittedBox(
                        alignment: AlignmentDirectional.centerEnd,

                        fit: BoxFit.scaleDown,
                        child: Text(
                          "12/20-124",
                          style: AppStyles.styleRegular16.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(child: SizedBox(height: 24)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
