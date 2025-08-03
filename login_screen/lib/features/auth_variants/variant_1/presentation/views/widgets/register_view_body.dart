import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/app_router.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/variant_1/presentation/views/widgets/register_form.dart';
import 'package:login_screen/features/auth_variants/variant_1/presentation/views/widgets/sign_up_redirect_text.dart';

class RegisterViewBody extends StatelessWidget {
  const RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
            Text("Sign up", style: Styles.textStyle34),
            const SizedBox(height: 12),
            Text(
              "Create an account to continue!",
              style: Styles.textStyle12.copyWith(color: grayText),
            ),
            const SizedBox(height: 33),
            RegisterForm(),
            const SizedBox(height: 40),
            AuthRichTextRow(
              isSignUp: false,
              text1: "Already have an account?",
              text2: "Login",
              route: AppRouter.kLoginView,
            ),
          ],
        ),
      ),
    );
  }
}
