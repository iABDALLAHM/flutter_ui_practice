import 'package:flutter/widgets.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/remember_me_section.dart';

class LoginAuthForms extends StatelessWidget {
  const LoginAuthForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email"),
        const SizedBox(height: 2),
        CustomTextField(hintText: "Loisbecket@gmail.com"),
        const SizedBox(height: 17),

        Text("Password"),
        const SizedBox(height: 2),

        CustomTextField(hintText: "*******", isPassword: true),
        const SizedBox(height: 17),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RememberMeSection(),
            Text("Forget Password? ", style: TextStyle(color: kPrimaryColor)),
          ],
        ),
        const SizedBox(height: 24),

        SizedBox(width: double.infinity, height: 50, child: CustomButton()),
        const SizedBox(height: 24),
      ],
    );
  }
}
