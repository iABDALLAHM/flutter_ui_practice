import 'package:bmi_calaculator_app/core/utils/app_styles.dart';
import 'package:bmi_calaculator_app/core/widgets/custom_button.dart';
import 'package:bmi_calaculator_app/features/home/presentation/views/widgets/result_card.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ResultViewBody extends StatelessWidget {
  const ResultViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 25),
              Text(
                "Your Result",
                style: Styles.textStyle50.copyWith(color: Colors.white),
                textAlign: TextAlign.start,
              ),
              const SizedBox(height: 25),
              ResultCard(),
              const SizedBox(height: 25),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: double.infinity,
            height: 70,
            child: CustomButtom(
              text: "Re - Calculate",
              onPressed: () {
                GoRouter.of(context).pop();
              },
            ),
          ),
        ),
      ],
    );
  }
}
