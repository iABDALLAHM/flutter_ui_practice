import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_4/presentation/views/widgets/variant4_register_view_body.dart';

class Variant4RegisterView extends StatelessWidget {
  const Variant4RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 244, 245),
      body: SafeArea(child: Variant4RegisterViewBody()),
    );
  }
}
// Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           stops: [0.3, 0.3],
//           begin: Alignment.topCenter,
//           end: Alignment.bottomCenter,
//           colors: [
//             const Color.fromARGB(255, 0, 0, 0),
//             const Color.fromARGB(255, 255, 255, 254),
//           ],
//         ),
//       ),
//       child: