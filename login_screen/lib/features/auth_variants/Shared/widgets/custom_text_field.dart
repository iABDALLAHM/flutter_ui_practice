import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    this.preIcon,
    super.key,
    this.textInputType = TextInputType.text,
    this.icon,
    this.isPassword = false,
  });
  final TextInputType textInputType;
  final IconButton? icon;
  final IconButton? preIcon;
  final bool isPassword;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscuretext = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: widget.isPassword ? _obscuretext : false,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: _toggleVisible,
                icon: Icon(
                  _obscuretext ? Icons.visibility_off : Icons.remove_red_eye,
                ),
              )
            : widget.icon,
        focusedBorder: _buildBorder(),
        prefixIcon: widget.preIcon,
        enabledBorder: _buildBorder(),
      ),
    );
  }

  void _toggleVisible() => setState(() {
    _obscuretext = !_obscuretext;
  });

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: greyBorder),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
