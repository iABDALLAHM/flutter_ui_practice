import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 2 / 1, child: PieChart(generateData()));
  }

  PieChartData generateData() => PieChartData(
    sectionsSpace: 0,
    sections: [
      PieChartSectionData(
        value: 40,
        color: Color(0xff208CC8),
        showTitle: false,
        titleStyle: AppStyles.styleMedium16,
      ),
      PieChartSectionData(
        value: 25,
        color: Color(0xff4EB7F2),
        showTitle: false,
        titleStyle: AppStyles.styleMedium16,
      ),
      PieChartSectionData(
        value: 20,
        color: Color(0xff064061),
        showTitle: false,
        titleStyle: AppStyles.styleMedium16,
      ),
      PieChartSectionData(
        value: 22,
        color: Color(0xffE2DECD),
        showTitle: false,
        titleStyle: AppStyles.styleMedium16,
      ),
    ],
  );
}
