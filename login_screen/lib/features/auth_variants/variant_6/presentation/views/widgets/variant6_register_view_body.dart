import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_6/presentation/views/widgets/variant6_register_forms.dart';

class Variant6RegisterViewBody extends StatelessWidget {
  const Variant6RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Variant6RegisterForms(), const SizedBox(height: 52)],
            ),
          ),
        ],
      ),
    );
  }
}
