import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/variant_5/presentation/views/widgets/auth_toggle_switch.dart';
import 'package:login_screen/features/auth_variants/variant_5/presentation/views/widgets/login_section.dart';
import 'package:login_screen/features/auth_variants/variant_5/presentation/views/widgets/register_section.dart';

class Variant5AuthViewBody extends StatefulWidget {
  const Variant5AuthViewBody({super.key});

  @override
  State<Variant5AuthViewBody> createState() => _Variant5LoginViewBodyState();
}

class _Variant5LoginViewBodyState extends State<Variant5AuthViewBody> {
  bool isLoginSelected = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image(image: AssetImage(AssetData.blueAppIcon)),
            const SizedBox(height: 24),
            Text("Get Started now", style: Styles.textStyle34),
            const SizedBox(height: 12),
            Column(
              children: [
                Text(
                  "Create an account or log in to explore",
                  style: Styles.textStyle12.copyWith(color: grayText),
                ),
                Text(
                  "about our app",
                  style: Styles.textStyle12.copyWith(color: grayText),
                ),
              ],
            ),
            const SizedBox(height: 24),
            AuthToggleSwitch(
              isLoginSelected: isLoginSelected,
              onToggle: (value) {
                setState(() {
                  isLoginSelected = value;
                });
              },
            ),
            const SizedBox(height: 25),
            isLoginSelected ? LoginSection() : RegisterSection(),
          ],
        ),
      ),
    );
  }
}
