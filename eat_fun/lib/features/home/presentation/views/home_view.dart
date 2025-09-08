import 'package:eat_fun/core/utils/assets.dart';
import 'package:eat_fun/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomwView extends StatelessWidget {
  const HomwView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(200, 194, 194, 194),
      appBar: _buildAppBar(),
      body: SafeArea(child: HomeViewBody()),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetData.profilePicture),
            ),
          ),
        ),
      ],
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu_rounded)),
    );
  }
}
