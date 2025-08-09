import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_5/presentation/views/widgets/variant5_auth_view_body.dart';

class Variant5AuthView extends StatelessWidget {
  const Variant5AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SafeArea(child: Variant5AuthViewBody()),
    );
  }
}
