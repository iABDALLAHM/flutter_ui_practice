import 'package:flutter/material.dart';
import 'package:movie_app/core/utils/app_color.dart';
import 'package:movie_app/core/utils/styels.dart';
import 'package:movie_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SafeArea(child: HomeViewBody()),
      bottomNavigationBar: _buildBottomAppBar(),
    );
  }

  BottomAppBar _buildBottomAppBar() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      clipBehavior: Clip.antiAlias,
      notchMargin: 5,
      elevation: 5,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const Icon(Icons.movie_creation_outlined),
            color: AppColor.kPrimaryColor,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.confirmation_number_outlined),
            color: AppColor.kPrimaryColor,
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.bookmark_outline),
            color: AppColor.kPrimaryColor,
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        "FilmKu",
        style: Styels.textStyle20.copyWith(color: AppColor.kPrimaryColor),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.menu, color: AppColor.kPrimaryColor),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_on, color: AppColor.kPrimaryColor),
        ),
      ],
    );
  }
}
