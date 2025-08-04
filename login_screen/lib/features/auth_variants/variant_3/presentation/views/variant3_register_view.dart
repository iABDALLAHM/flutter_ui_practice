import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_3/presentation/views/widgets/variant3_register_view_body.dart';

class Variant3RegisterView extends StatelessWidget {
  const Variant3RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: SafeArea(child: Variant3RegisterViewBody()),
    );
  }
}
