import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/features/auth_variants/variant_8/presentation/views/widgets/variant8_card.dart';

class Variant8LoginViewBody extends StatelessWidget {
  const Variant8LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetData.appLogo),
          const SizedBox(height: 26),
          Variant8Card(),
        ],
      ),
    );
  }
}
