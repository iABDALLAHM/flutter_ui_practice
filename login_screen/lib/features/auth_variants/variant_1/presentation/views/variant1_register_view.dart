import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_1/presentation/views/widgets/variant1_register_view_body.dart';

class Variant1RegisterView extends StatelessWidget {
  const Variant1RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(automaticallyImplyLeading: false),
      backgroundColor: Colors.white,
      body: Variant1RegisterViewBody(),
    );
  }
}
