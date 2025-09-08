import 'package:eat_fun/core/utils/assets.dart';
import 'package:eat_fun/features/auth/presentation/views/widgets/auth_card.dart';
import 'package:flutter/material.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image(image: AssetImage(AssetData.mainAppLogo)),
          AuthCard(),
          const SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(image: AssetImage(AssetData.authPizza)),
              const SizedBox(width: 70),
              Image(image: AssetImage(AssetData.authBurger)),
            ],
          ),
        ],
      ),
    );
  }
}
