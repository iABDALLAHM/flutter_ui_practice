import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/core/widgets/custom_text_field.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 32),
          Text("Sign in to your\n Account", style: Styles.textStyle34),
          const SizedBox(height: 12),
          Text(
            "Enter your email and password to log in",
            style: Styles.textStyle12,
          ),
          const SizedBox(height: 32),
          Text("Email"),
          CustomTextField(),
          const SizedBox(height: 16),
          Text("Password"),
          CustomTextField(),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Text("Forgot Password ?")],
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Color(0xff1D61E7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text("Log In"),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(child: Divider()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("Or"),
              ),
              Expanded(child: Divider()),
            ],
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: const Color.fromARGB(91, 158, 158, 158),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
            ),
            onPressed: () {},
            child: Row(children: [Text("Continue with Google")]),
          ),
          const SizedBox(height: 15),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  color: const Color.fromARGB(91, 158, 158, 158),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              foregroundColor: Colors.black,
              backgroundColor: Colors.white,
            ),
            onPressed: () {},
            child: Row(children: [Text("Continue with Facebook")]),
          ),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don’t have an account ?"),
              const SizedBox(width: 5),
              Text("Sign Up"),
            ],
          ),
        ],
      ),
    );
  }
}
