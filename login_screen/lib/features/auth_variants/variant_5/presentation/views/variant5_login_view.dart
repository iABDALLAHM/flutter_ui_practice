import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_5/presentation/views/widgets/variant5_login_view_body.dart';

class Variant5LoginView extends StatelessWidget {
  const Variant5LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: Variant5LoginViewBody()));
  }
}
