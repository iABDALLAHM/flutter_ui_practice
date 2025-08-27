import 'package:bmi_calaculator_app/core/constants/constants.dart';
import 'package:bmi_calaculator_app/core/utils/app_styles.dart';
import 'package:bmi_calaculator_app/features/home/presentation/views/widgets/result_view_body.dart';
import 'package:flutter/material.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: _buildAppBar(),
      body: SafeArea(child: ResultViewBody()),
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
