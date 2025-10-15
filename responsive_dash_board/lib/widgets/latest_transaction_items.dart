import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_tile.dart';

class LatestTransactionItems extends StatefulWidget {
  const LatestTransactionItems({super.key});

  @override
  State<LatestTransactionItems> createState() => _LatestTransactionItemsState();
}

class _LatestTransactionItemsState extends State<LatestTransactionItems> {
  static List<UserInfoModel> items = [
    UserInfoModel(
      name: "Madrani Andi",
      image: Assets.imagesAvatar4,
      subtitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      name: "Josua Nunito",
      image: Assets.imagesAvatar1,
      subtitle: "Josh Nunito@gmail.com",
    ),
    UserInfoModel(
      name: "Madrani Andi",
      image: Assets.imagesAvatar4,
      subtitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      name: "Madrani Andi",
      image: Assets.imagesAvatar4,
      subtitle: "Madraniadi20@gmail",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map(
              (element) =>
                  IntrinsicWidth(child: UserInfoTile(userInfoModel: element)),
            )
            .toList(),
      ),
    );
  }
}
