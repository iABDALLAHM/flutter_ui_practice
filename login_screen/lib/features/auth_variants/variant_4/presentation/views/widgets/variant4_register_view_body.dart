import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/widgets/variant4_register_auth_forms.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/widgets/variant4_register_rich_text.dart'
    show Variant4RegisterRichText;

class Variant4RegisterViewBody extends StatelessWidget {
  const Variant4RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        Text(
          "Register",
          style: Styles.textStyle34.copyWith(color: Colors.white),
        ),
        Variant4RegisterRichText(),
        Variant4RegisterAuthForms(),
      ],
    );
  }
}
