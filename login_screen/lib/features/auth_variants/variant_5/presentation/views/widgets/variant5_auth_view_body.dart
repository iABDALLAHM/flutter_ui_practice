import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/remember_me_section.dart';
import 'package:login_screen/features/auth_variants/variant_5/presentation/views/widgets/auth_toggle_switch.dart';
import 'package:login_screen/features/auth_variants/variant_5/presentation/views/widgets/or_divider_variant5.dart';
import 'package:login_screen/features/auth_variants/variant_5/presentation/views/widgets/social_login_buttons.dart';

class Variant5AuthViewBody extends StatefulWidget {
  const Variant5AuthViewBody({super.key});

  @override
  State<Variant5AuthViewBody> createState() => _Variant5LoginViewBodyState();
}

class _Variant5LoginViewBodyState extends State<Variant5AuthViewBody> {
  bool isLoginSelected = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(image: AssetImage(AssetData.appLogo)),
        Text("Get Started now"),
        Column(
          children: [
            Text("Create an account or log in to explore"),
            Text("about our app"),
          ],
        ),
        AuthToggleSwitch(
          isLoginSelected: isLoginSelected,
          onToggle: (value) {
            setState(() {
              isLoginSelected = value;
            });
          },
        ),
        const SizedBox(height: 25),
        Text("Email"),
        const SizedBox(height: 4),
        CustomTextField(),
        const SizedBox(height: 17),
        Text("Password"),
        const SizedBox(height: 4),
        CustomTextField(isPassword: true),
        const SizedBox(height: 17),
        RememberMeSection(),
        const SizedBox(height: 24),
        SizedBox(height: 50, width: double.infinity, child: CustomButton()),
        const SizedBox(height: 24),
        OrDividerVariant5(),
        const SizedBox(height: 24),
        SocialLoginButtons(),
      ],
    );
  }
}
