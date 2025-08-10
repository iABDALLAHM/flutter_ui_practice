import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/app_router.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';

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
                Image(image: AssetImage(AssetData.blueAppIcon)),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account?",
                      style: Styles.textStyle12.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        GoRouter.of(
                          context,
                        ).push(AppRouter.kVariant6RegisterView);
                      },
                      child: Text(
                        "Sign Up",
                        style: Styles.textStyle12.copyWith(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: "Loisbecket@gmail.com",
                        preIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.mail_outline, color: kPrimaryColor),
                        ),
                      ),
                      CustomTextField(
                        hintText: "*******",
                        isPassword: true,
                        preIcon: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.lock_outline, color: kPrimaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Your Password ?",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationStyle: TextDecorationStyle.solid,
                      color: Colors.white,
                      decorationColor: Colors.white,
                      decorationThickness: 1.5,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
