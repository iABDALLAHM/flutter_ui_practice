import 'package:bmi_calaculator_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalcApp());
}

class BMICalcApp extends StatelessWidget {
  const BMICalcApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: false),
      routerConfig: AppRouter.router,
    );
  }
}
