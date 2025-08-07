import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/widgets/variant2_register_auth.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/widgets/variant2_register_rich_text.dart';

class Variant2RegisterViewBody extends StatelessWidget {
  const Variant2RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                ),
                Text("Sign up", style: Styles.textStyle34),
                Variant2RegisterRichText(),
                const SizedBox(height: 24),
                Variant2RegisterAuth(),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
