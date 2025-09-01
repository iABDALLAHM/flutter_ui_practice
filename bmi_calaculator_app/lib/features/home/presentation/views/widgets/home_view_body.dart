import 'package:bmi_calaculator_app/core/utils/app_router.dart';
import 'package:bmi_calaculator_app/core/widgets/custom_button.dart';
import 'package:bmi_calaculator_app/features/home/presentation/manager/calculate_bmi_cubit/calc_cubit.dart';
import 'package:bmi_calaculator_app/features/home/presentation/manager/calculate_bmi_cubit/calc_state.dart';
import 'package:bmi_calaculator_app/features/home/presentation/views/widgets/choose_gender_widget.dart';
import 'package:bmi_calaculator_app/features/home/presentation/views/widgets/personal_info_section.dart';
import 'package:bmi_calaculator_app/features/home/presentation/views/widgets/slider_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  double value = 0;
  late String selectedGender;
  late int weight;
  late int age;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ChooseGenderWidget(
                    onTap: () {
                      setState(() {
                        selectedGender = "Male";
                      });
                    },
                    icon: Icons.male_rounded,
                    text: "Male",
                    color: const Color.fromARGB(97, 27, 26, 38),
                  ),
                  ChooseGenderWidget(
                    icon: Icons.female_rounded,
                    text: "Female",
                    onTap: () {
                      setState(() {
                        selectedGender = "Female";
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 15),
              SliderSection(
                value: value,
                onChange: (p0) {
                  setState(() {
                    value = p0;
                  });
                },
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PersonalInfoSection(
                    onValueChanged: (value) {
                      setState(() {
                        weight = value;
                      });
                    },
                    text: "Weight",
                    color: const Color.fromARGB(97, 27, 26, 38),
                  ),
                  PersonalInfoSection(
                    text: "Age",
                    onValueChanged: (value) {
                      setState(() {
                        age = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(height: 45),
        SizedBox(
          width: double.infinity,
          height: 70,
          child: BlocConsumer<CalcCubit, CalcState>(
            listener: (context, state) {
              if (state is SuccessCalcState) {
                GoRouter.of(
                  context,
                ).push(AppRouter.kResultView, extra: state.result);
              }
            },
            builder: (context, state) {
              return CustomButtom(
                text: state is LoadingCalcState ? "Loading..." : "Calculate",
                onPressed: () {
                  BlocProvider.of<CalcCubit>(context).calculate(
                    height: value,
                    weight: weight,
                    gender: selectedGender,
                    age: age,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
