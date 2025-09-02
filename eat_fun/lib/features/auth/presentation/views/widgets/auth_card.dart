import 'package:eat_fun/core/utils/assets.dart';
import 'package:eat_fun/features/auth/presentation/views/widgets/auth_toggle_switch.dart';
import 'package:eat_fun/core/widgets/custom_text_field.dart';
import 'package:eat_fun/features/auth/presentation/views/widgets/login_section.dart';
import 'package:eat_fun/features/auth/presentation/views/widgets/or_social_auth.dart';
import 'package:eat_fun/features/auth/presentation/views/widgets/register_section.dart';
import 'package:flutter/material.dart';

class AuthCard extends StatefulWidget {
  const AuthCard({super.key});

  @override
  State<AuthCard> createState() => _AuthCardState();
}

class _AuthCardState extends State<AuthCard> {
  bool isLoginSelected = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 70),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage(AssetData.cardBackGround),
          fit: BoxFit.contain,
        ),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Column(
        children: [
          AuthToggleSwitch(
            isLoginSelected: isLoginSelected,
            onToggle: (val) {
              setState(() {
                isLoginSelected = val;
              });
            },
          ),
          const SizedBox(height: 30),
          CustomTextField(hintText: "Enter  email or username"),
          const SizedBox(height: 30),
          CustomTextField(hintText: "Password"),
          const SizedBox(height: 12),
          if (isLoginSelected) LoginSection() else RegisterSection(),
          const SizedBox(height: 20),
          ORSocialAuth(),
        ],
      ),
    );
  }
}
