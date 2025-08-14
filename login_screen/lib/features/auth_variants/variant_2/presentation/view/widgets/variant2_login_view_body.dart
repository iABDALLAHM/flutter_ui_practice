import 'package:flutter/material.dart';
import 'package:login_screen/core/utliz/app_padding.dart';
import 'package:login_screen/core/utliz/assets.dart';
import 'package:login_screen/features/auth_variants/variant_2/presentation/view/widgets/variant2_login_card.dart';

class Variant2LoginViewBody extends StatelessWidget {
  const Variant2LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.horizontalPadding20,
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image(image: AssetImage(AssetData.whiteEditionLogo)),
              const SizedBox(height: 32),
              Variant2LoginCard(),
            ],
          ),
        ),
      ),
    );
  }
}

