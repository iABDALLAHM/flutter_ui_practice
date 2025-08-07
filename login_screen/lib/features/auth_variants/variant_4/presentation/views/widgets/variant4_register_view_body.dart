import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/widgets/variant4_register_rich_text.dart';

class Variant4RegisterViewBody extends StatelessWidget {
  const Variant4RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              onPressed: () {
                GoRouter.of(context).pop();
              },
              icon: Icon(Icons.arrow_back),
            ),
            Text(
              "Register",
              style: Styles.textStyle34.copyWith(color: Colors.white),
            ),
            Variant4RegisterRichText(),
            const SizedBox(height: 60),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("First Name"),
                      const SizedBox(height: 4),
                      CustomTextField(),
                    ],
                  ),
                ),
                const SizedBox(width: 17),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Last Name"),
                      const SizedBox(height: 4),
                      CustomTextField(),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Text("Email"),
            const SizedBox(height: 4),
            CustomTextField(),
            const SizedBox(height: 20),
            Text("Birth of date"),
            const SizedBox(height: 4),
            CustomTextField(
              icon: IconButton(
                icon: Icon(Icons.calendar_month_outlined),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 20),
            Text("Phone Number"),
            const SizedBox(height: 4),
            CustomTextField(),
            const SizedBox(height: 20),
            Text("Set Password"),
            const SizedBox(height: 4),
            CustomTextField(isPassword: true),
            const SizedBox(height: 32),
            SizedBox(height: 50, width: double.infinity, child: CustomButton()),
          ],
        ),
      ),
    );
  }
}
