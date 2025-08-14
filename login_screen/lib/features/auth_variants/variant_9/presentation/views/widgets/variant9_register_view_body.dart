import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:login_screen/features/auth_variants/variant_9/presentation/views/widgets/variant9_register_card.dart';

class Variant9RegisterViewBody extends StatelessWidget {
  const Variant9RegisterViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 7),
              child: Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    GoRouter.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back),
                ),
              ),
            ),

            const SizedBox(height: 20),
            Variant9RegisterCard(),
          ],
        ),
      ),
    );
  }
}
