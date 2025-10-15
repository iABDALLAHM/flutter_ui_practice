import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';

class DesktopDashBoardLayout extends StatelessWidget {
  const DesktopDashBoardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Expanded(flex: 1, child: CustomDrawer())]);
  }
}
