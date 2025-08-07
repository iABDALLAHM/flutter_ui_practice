import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/app_padding.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/or_divider_section.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/social_login_section.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/widgets/variant2_login_auth.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/widgets/variant3_login_rich_text.dart';

class Variant2LoginViewBody extends StatelessWidget {
  const Variant2LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.horizontalPadding20,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage(AssetData.whiteEditionLogo)),
              const SizedBox(height: 32),
              Container(
                padding: AppPadding.horizontalPadding20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    Text("Login", style: Styles.textStyle34),
                    Variant2LoginRichText(),
                    const SizedBox(height: 12),
                    const SizedBox(height: 24),
                    Variant2LoginAuth(),
                    const SizedBox(height: 30),
                    OrDividerSection(),
                    const SizedBox(height: 24),
                    SocialLoginSection(),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
