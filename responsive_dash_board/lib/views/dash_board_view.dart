import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/desktop_dash_board_layout.dart';
import 'package:responsive_dash_board/widgets/mobile_dash_board_layout.dart';
import 'package:responsive_dash_board/widgets/table_dash_board_layout.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: CustomAdaptiveLayout(
        mobileLayout: (context) => MobileDashBoardLayout(),
        desktopLayout: (context) => DesktopDashBoardLayout(),
        tabletLayout: (context) => TableDashBoardLayout(),
      ),
    );
  }
}
