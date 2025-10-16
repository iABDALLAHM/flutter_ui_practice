import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_chart_model.dart';
import 'package:responsive_dash_board/widgets/income_deatils_item.dart';

class IncomeDetailsList extends StatelessWidget {
  const IncomeDetailsList({super.key});
  static const List<IncomeChartModel> incomeChart = [
    IncomeChartModel(
      title: "Design service",
      value: "%40",
      color: Color(0xff208CC8),
    ),
    IncomeChartModel(
      title: "Design product",
      value: "%25",
      color: Color(0xff4EB7F2),
    ),
    IncomeChartModel(
      title: "Product royalti",
      value: "%20",
      color: Color(0xff064061),
    ),
    IncomeChartModel(title: "Other", value: "%22", color: Color(0xffE2DECD)),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: incomeChart
          .map((element) => IncomeDetailsItem(incomeChartModel: element))
          .toList(),
    );
  }
}
