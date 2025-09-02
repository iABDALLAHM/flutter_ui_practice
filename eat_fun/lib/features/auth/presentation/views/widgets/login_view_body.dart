import 'package:eat_fun/core/utils/assets.dart';
import 'package:eat_fun/features/auth/presentation/views/widgets/login_card.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image(image: AssetImage(AssetData.mainAppLogo)),
        LoginCard(),
      ],
    );
  }
}
