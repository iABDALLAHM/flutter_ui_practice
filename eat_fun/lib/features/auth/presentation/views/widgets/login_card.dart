import 'package:eat_fun/core/utils/assets.dart';
import 'package:eat_fun/core/widgets/custom_button.dart';
import 'package:eat_fun/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(image: AssetImage(AssetData.cardBackGround)),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        children: [
          Text("Abdallah"),
          const SizedBox(height: 30),
          CustomTextField(hintText: "Enter  email or username"),
          const SizedBox(height: 30),
          CustomTextField(hintText: "Password"),
          const SizedBox(height: 15),

          Align(
            alignment: Alignment.centerRight,
            child: Text("Forgot Password?"),
          ),
          const SizedBox(height: 28),
          CustomButton(text: "Login"),
          // Expanded(child: ORSocialAuth()),
        ],
      ),
    );
  }
}
