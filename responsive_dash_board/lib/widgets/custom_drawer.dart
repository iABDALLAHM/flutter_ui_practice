import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_items_list.dart';
import 'package:responsive_dash_board/widgets/in_active_drawer_item.dart';
import 'package:responsive_dash_board/widgets/user_info_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: CustomScrollView(
          shrinkWrap: true,
          slivers: [
            SliverToBoxAdapter(
              child: UserInfoTile(
                userInfoModel: UserInfoModel(
                  name: "Lekan Okeowo",
                  image: Assets.imagesAvatar4,
                  subtitle: "demo@gmail.com",
                ),
              ),
            ),
            DrawerItemsList(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: "Setting system",
                      image: Assets.imagesSetting,
                    ),
                  ),
                  const SizedBox(height: 20),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: "Logout account",
                      image: Assets.imagesLogOut,
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 24)),
          ],
        ),
      ),
    );
  }
}
