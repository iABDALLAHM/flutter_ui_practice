import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_1/presentation/views/widgets/register_view_body.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: RegisterViewBody());
  }
}
