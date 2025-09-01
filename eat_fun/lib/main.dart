import 'package:flutter/material.dart';

void main() {
  runApp(const EatFun());
}

class EatFun extends StatelessWidget {
  const EatFun({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router();
  }
}
