import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/app_padding.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/drop_down_section_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/or_divider_section.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/social_button.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/widgets/variant4_register_rich_text.dart';

class Variant3RegisterViewBody extends StatelessWidget {
  const Variant3RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        Column(
          children: [
            Text(
              "Sign Up",
              style: Styles.textStyle34.copyWith(color: Colors.white),
            ),
            Variant4RegisterRichText(),
          ],
        ),
        const SizedBox(height: 15),
        Container(
          padding: AppPadding.horizontalPadding20,
          margin: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(child: CustomTextField()),
                  const SizedBox(width: 15),
                  Expanded(child: CustomTextField()),
                ],
              ),
              const SizedBox(height: 16),
              CustomTextField(),
              const SizedBox(height: 16),
              CustomTextField(
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.calendar_month_outlined),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: DropDownSectionButton()),
                  Expanded(flex: 2, child: CustomTextField()),
                ],
              ),
              const SizedBox(height: 16),
              CustomTextField(isPassword: true),
              const SizedBox(height: 24),
              const SizedBox(
                width: double.infinity,
                height: 50,
                child: CustomButton(),
              ),
              const SizedBox(height: 24),
              OrDividerSection(),
              const SizedBox(height: 24),
              SocialButton(text: "google", icon: AssetData.googleSocialIcon),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ],
    );
  }
}
