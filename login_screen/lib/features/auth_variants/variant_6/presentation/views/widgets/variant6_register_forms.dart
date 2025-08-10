import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/variant_6/presentation/views/widgets/variant6_register_card.dart';

class Variant6RegisterForms extends StatelessWidget {
  const Variant6RegisterForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(AssetData.blueAppIcon)),
        const SizedBox(height: 18),

        Text(
          "Create account",
          style: Styles.textStyle34.copyWith(color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account?",
              style: Styles.textStyle12.copyWith(color: Colors.white),
            ),
            TextButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              child: Text(
                "Login",
                style: Styles.textStyle12.copyWith(color: kPrimaryColor),
              ),
            ),
          ],
        ),
        const SizedBox(height: 32),
        Variant6RegisterCard(),
        const SizedBox(height: 30),
        SizedBox(height: 50, width: double.infinity, child: CustomButton()),
      ],
    );
  }
}
