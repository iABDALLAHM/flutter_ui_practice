import 'package:bmi_calaculator_app/core/utils/app_router.dart';
import 'package:bmi_calaculator_app/features/home/presentation/manager/calculate_bmi_cubit/calc_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BMICalcApp());
}

class BMICalcApp extends StatelessWidget {
  const BMICalcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CalcCubit(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light(useMaterial3: false),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
