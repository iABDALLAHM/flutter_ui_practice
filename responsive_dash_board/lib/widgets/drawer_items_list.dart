import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/drawer_item.dart';

class DrawerItemsList extends StatefulWidget {
  const DrawerItemsList({super.key});

  @override
  State<DrawerItemsList> createState() => _DrawerItemsListState();
}

class _DrawerItemsListState extends State<DrawerItemsList> {
  static List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: "Dashboard", image: Assets.imagesDashboard),
    DrawerItemModel(title: "My Transaction", image: Assets.imagesMyTransaction),
    DrawerItemModel(title: "Statistics", image: Assets.imagesStatistics),
    DrawerItemModel(title: "Wallet Account", image: Assets.imagesWallet22),
    DrawerItemModel(title: "My Investments", image: Assets.imagesMyInvestments),
  ];
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: drawerItems.length,
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (isSelected != index) {
            updateIndex(index);
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: DrawerItem(
            drawerItemModel: drawerItems[index],
            isActive: isSelected == index ? true : false,
          ),
        ),
      ),
    );
  }

  void updateIndex(int index) {
    isSelected = index;
    setState(() {});
  }
}
