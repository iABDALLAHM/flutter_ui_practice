import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/core/utliz/styles.dart';
import 'package:login_screen/features/auth_variants/variant_3/presentation/views/widgets/register_card.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/widgets/variant4_register_rich_text.dart';

class Variant3RegisterViewBody extends StatelessWidget {
  const Variant3RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Sign Up",
                style: Styles.textStyle34.copyWith(color: Colors.white),
              ),
              Variant4RegisterRichText(),
            ],
          ),
          const SizedBox(height: 15),
          RegisterCard(),
        ],
      ),
    );
  }
}
