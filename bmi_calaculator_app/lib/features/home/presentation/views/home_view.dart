import 'package:bmi_calaculator_app/core/constants/constants.dart';
import 'package:bmi_calaculator_app/core/utils/app_router.dart';
import 'package:bmi_calaculator_app/core/utils/app_styles.dart';
import 'package:bmi_calaculator_app/features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: _buildAppBar(),
      bottomNavigationBar: SizedBox(
        height: 100,
        child: _buildbottomAppBar(context),
      ),
      body: SafeArea(child: HomeViewBody()),
    );
  }

  Widget _buildbottomAppBar(context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kResultView);
      },
      child: BottomAppBar(
        color: Color(0xffE83D67),
        child: Center(
          child: Text(
            "Calculate",
            style: Styles.textStyle30.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      elevation: 10,
      backgroundColor: kPrimaryColor,
      title: Text("BMI Calculator", style: Styles.textStyle25),
      centerTitle: true,
    );
  }
}
