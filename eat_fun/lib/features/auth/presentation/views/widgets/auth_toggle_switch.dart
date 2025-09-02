import 'package:eat_fun/features/auth/presentation/views/widgets/toggle_item.dart';
import 'package:flutter/material.dart';

class AuthToggleSwitch extends StatelessWidget {
  const AuthToggleSwitch({
    super.key,
    required this.isLoginSelected,
    required this.onToggle,
  });
  final bool isLoginSelected;
  final Function(bool) onToggle;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffBE0127), width: 1.7),
        borderRadius: BorderRadius.circular(29),
        color: Color(0xffF8E0A0),
      ),
      child: Row(
        children: [
          Expanded(
            child: ToggleItem(
              text: "Log In",
              isSelected: isLoginSelected,
              onTap: () => onToggle(true),
            ),
          ),
          Expanded(
            child: ToggleItem(
              text: "Sign Up",
              isSelected: !isLoginSelected,
              onTap: () => onToggle(false),
            ),
          ),
        ],
      ),
    );
  }
}
