import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_adaptive_layout.dart';
import 'package:responsive_dash_board/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/desktop_dash_board_layout.dart';
import 'package:responsive_dash_board/widgets/mobile_dash_board_layout.dart';
import 'package:responsive_dash_board/widgets/table_dash_board_layout.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      key: scaffoldkey,
      backgroundColor: Color(0XFFF7F9FA),
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                onPressed: () {
                  scaffoldkey.currentState!.openDrawer();
                },
                icon: Icon(Icons.menu),
              ),
            )
          : null,
      body: CustomAdaptiveLayout(
        mobileLayout: (context) => MobileDashBoardLayout(),
        desktopLayout: (context) => DesktopDashBoardLayout(),
        tabletLayout: (context) => TableDashBoardLayout(),
      ),
    );
  }
}
