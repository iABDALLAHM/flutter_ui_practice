import 'package:eat_fun/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EatFun());
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
