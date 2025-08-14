import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/variant_3/presentation/views/widgets/variant3_login_card.dart';

class Variant3LoginViewBody extends StatelessWidget {
  const Variant3LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 24),
          Image(image: AssetImage(AssetData.mainIcon)),
          const SizedBox(height: 24),
          Text(
            "Sign in to your",
            style: Styles.textStyle34.copyWith(color: Colors.white),
          ),
          Text(
            "Account",
            style: Styles.textStyle34.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 16),
          Text(
            "Enter your email and password to log in",
            style: Styles.textStyle12.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 24),
          Variant3LoginCard(),
        ],
      ),
    );
  }
}