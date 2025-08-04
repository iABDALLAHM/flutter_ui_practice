import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/app_padding.dart';
import 'package:login_screen/core/utliz/app_router.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/login_rich_text_row.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/remember_me_section.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/social_button.dart';
import 'package:login_screen/features/auth_variants/variant_3/presentation/views/widgets/or_divider_variant3.dart';

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
          Container(
            margin: AppPadding.horizontalPadding20,
            padding: AppPadding.horizontalPadding20,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 24),
                SocialButton(
                  text: "Continue with google",
                  icon: AssetData.googleSocialIcon,
                ),
                const SizedBox(height: 24),
                OrDividerVariant3(),
                const SizedBox(height: 24),
                CustomTextField(),
                const SizedBox(height: 16),
                CustomTextField(isPassword: true),
                const SizedBox(height: 17),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RememberMeSection(),
                    Text(
                      "Forgot Password ?",
                      style: Styles.textStyle12.copyWith(color: kPrimaryColor),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: CustomButton(),
                ),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [LoginRichTextRow(route: AppRouter.kVariant3Register,)],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
