import 'package:eat_fun/core/utils/app_router.dart';
import 'package:eat_fun/features/home/data/services/get_food_services.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const EatFun());
  final data = await GetFoodServices().getCategories();
  print(data);
}

class EatFun extends StatelessWidget {
  const EatFun({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
