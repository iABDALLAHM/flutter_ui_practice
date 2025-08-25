import 'package:bmi_calaculator_app/features/home/presentation/views/widgets/choose_gender_widget.dart';
import 'package:bmi_calaculator_app/features/home/presentation/views/widgets/slider_section.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  double value = 0;
  late String selectedGender;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7),
      child: SingleChildScrollView(
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
                  color: const Color.fromARGB(255, 27, 26, 38),
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
            const SizedBox(height: 25),
            SliderSection(
              value: value,
              onChange: (p0) {
                setState(() {
                  value = p0;
                });
              },
            ),
            const SizedBox(height: 35),
            Row(children: [
            ],),
          ],
        ),
      ),
    );
  }
}
