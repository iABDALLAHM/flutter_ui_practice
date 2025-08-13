import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/features/auth_variants/variant_8/presentation/views/widgets/variant8_register_card.dart';

class Variant8RegisterViewBody extends StatelessWidget {
  const Variant8RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [Image.asset(AssetData.appLogo), Variant8RegisterCard()],
    );
  }
}
