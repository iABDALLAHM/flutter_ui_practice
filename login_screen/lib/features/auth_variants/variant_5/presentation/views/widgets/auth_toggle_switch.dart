import 'package:flutter/material.dart';
import 'package:login_screen/features/auth_variants/variant_5/presentation/views/widgets/toggle_item.dart';

class AuthToggleSwitch extends StatelessWidget {
  const AuthToggleSwitch({
    super.key,
    required this.onToggle,
    required this.isLoginSelected,
  });
  final Function(bool) onToggle;
  final bool isLoginSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      margin: EdgeInsets.symmetric(horizontal: 10),
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(65, 158, 158, 158),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: ToggleItem(
              isSelected: isLoginSelected,
              text: "Login",
              onTap: () => onToggle(true),
            ),
          ),
          Expanded(
            child: ToggleItem(
              isSelected: !isLoginSelected,
              text: "Register",
              onTap: () => onToggle(false),
            ),
          ),
        ],
      ),
    );
  }
}
