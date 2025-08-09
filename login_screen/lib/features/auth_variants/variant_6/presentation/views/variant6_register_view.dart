import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_6/presentation/views/widgets/variant6_register_view_body.dart';

class Variant6RegisterView extends StatelessWidget {
  const Variant6RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Variant6RegisterViewBody(),
      appBar: AppBar(automaticallyImplyLeading: false),
    );
  }
}
