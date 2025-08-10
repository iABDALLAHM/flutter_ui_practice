import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/features/auth_variants/variant_6/presentation/views/widgets/variant6_register_view_body.dart';

class Variant6RegisterView extends StatelessWidget {
  const Variant6RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          stops: [0.0, 0.1],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            const Color.fromARGB(255, 109, 107, 107),
            const Color.fromARGB(255, 21, 21, 21),
          ],
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              GoRouter.of(context).pop();
            },
          ),
        ),
        backgroundColor: Colors.transparent,
        body: SafeArea(child: Variant6RegisterViewBody()),
      ),
    );
  }
}
