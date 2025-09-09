import 'package:flutter/material.dart';
import 'package:movie_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SafeArea(child: HomeViewBody()),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text("FilmKu"),
      centerTitle: true,
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.notifications_on)),
      ],
    );
  }
}
