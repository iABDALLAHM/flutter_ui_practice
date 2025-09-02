import 'package:eat_fun/core/widgets/toggle_item.dart';
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
      child: Row(
        children: [
          Expanded(
            child: ToggleItem(
              text: "Log In",
              isSelected: isLoginSelected,
              onTap: onToggle(true),
            ),
          ),
          Expanded(
            child: ToggleItem(
              text: "Sign Up",
              isSelected: !isLoginSelected,
              onTap: onToggle(false),
            ),
          ),
        ],
      ),
    );
  }
}
