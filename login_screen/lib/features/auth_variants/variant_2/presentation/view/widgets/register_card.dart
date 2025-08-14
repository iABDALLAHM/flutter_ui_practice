import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/widgets/variant2_register_auth.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/widgets/variant2_register_rich_text.dart';

class RegisterCard extends StatelessWidget {
  const RegisterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).pop();
              },
              child: Icon(FontAwesomeIcons.arrowLeftLong),
            ),
            const SizedBox(height: 24),
            Text("Sign up", style: Styles.textStyle34),
            Variant2RegisterRichText(),
            const SizedBox(height: 24),
            Variant2RegisterAuth(),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
