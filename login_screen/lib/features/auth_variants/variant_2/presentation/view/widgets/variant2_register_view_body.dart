import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/widgets/register_card.dart';

class Variant2RegisterViewBody extends StatelessWidget {
  const Variant2RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: RegisterCard(),
      ),
    );
  }
}
