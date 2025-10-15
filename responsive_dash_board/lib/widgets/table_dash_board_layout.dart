import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/mobile_dash_board_layout.dart';

class TableDashBoardLayout extends StatelessWidget {
  const TableDashBoardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        const SizedBox(width: 24),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(child: MobileDashBoardLayout()),
        ),
      ],
    );
  }
}
