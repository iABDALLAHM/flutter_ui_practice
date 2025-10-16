import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_chart_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeChartModel});
  final IncomeChartModel incomeChartModel;
  @override
  Widget build(BuildContext context) {
    // return Row(
    //   children: [
    //      Container(),
    //      Text(incomeChartModel.title),
    //      Text(incomeChartModel.title)
    //   ],
    // )
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          color: incomeChartModel.color,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      title: Text(
        incomeChartModel.title,
        style: AppStyles.styleRegular16.copyWith(color: Color(0xff064061)),
      ),
      trailing: Text(
        incomeChartModel.value,
        style: AppStyles.styleMedium16.copyWith(color: Color(0xff208CC8)),
      ),
    );
  }
}
