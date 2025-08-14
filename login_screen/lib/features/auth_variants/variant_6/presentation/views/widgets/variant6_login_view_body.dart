import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/variant_6/presentation/views/widgets/variant6_login_card.dart';
import 'package:login_screen/features/auth_variants/variant_6/presentation/views/widgets/variant6_login_rich_text.dart';

class Variant6LoginViewBody extends StatelessWidget {
  const Variant6LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  height: 30,
                  width: 50,
                  image: AssetImage(AssetData.blueAppIcon),
                ),
                const SizedBox(height: 16),
                Text(
                  "Sign in to your",
                  style: Styles.textStyle34.copyWith(color: Colors.white),
                ),
                Text(
                  "Account",
                  style: Styles.textStyle34.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 12),
                Variant6LoginRichText(),
                const SizedBox(height: 32),
                Variant6LoginCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
