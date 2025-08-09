import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/core/constants/constants.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_button.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/custom_text_field.dart';
import 'package:login_screen/features/auth_variants/Shared/widgets/drop_down_section_button.dart';

class Variant6RegisterViewBody extends StatelessWidget {
  const Variant6RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back),
                ),
              ],
            ),

            const SizedBox(height: 52),
            Image(image: AssetImage(AssetData.blueAppIcon)),
            Text("Create account", style: Styles.textStyle34),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(onPressed: () {}, child: Text("Login")),
              ],
            ),
            const SizedBox(height: 32),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  CustomTextField(
                    preIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.person_outlined, color: kPrimaryColor),
                    ),
                  ),
                  CustomTextField(
                    preIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.mail_outlined, color: kPrimaryColor),
                    ),
                  ),
                  CustomTextField(
                    preIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.calendar_month_outlined,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(child: DropDownSectionButton()),
                      Expanded(flex: 3, child: CustomTextField()),
                    ],
                  ),
                  CustomTextField(
                    preIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.lock_outline, color: kPrimaryColor),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),

            SizedBox(height: 50, width: double.infinity, child: CustomButton()),
          ],
        ),
      ),
    );
  }
}
