import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/user_info_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            UserInfoTile(
              userInfoModel: UserInfoModel(
                name: "Lekan Okeowo",
                image: Assets.imagesAvatar4,
                subtitle: "demo@gmail.com",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
