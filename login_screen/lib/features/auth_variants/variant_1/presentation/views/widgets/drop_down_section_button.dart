import 'package:flutter/material.dart';
import 'package:login_screen/core/constants/constants.dart';

List<String> listOfDropDownMenu = ["Egypt", "Alex", "Luxor", "Mina", "Bniswef"];

class DropDownSectionButton extends StatefulWidget {
  const DropDownSectionButton({super.key});

  @override
  State<DropDownSectionButton> createState() => _DropDownSectionButtonState();
}

class _DropDownSectionButtonState extends State<DropDownSectionButton> {
  String selectedValue = listOfDropDownMenu.first;
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      underline: SizedBox.shrink(),
      elevation: 10,
      borderRadius: BorderRadius.circular(20),
      value: selectedValue,
      iconEnabledColor: kPrimaryColor,
      dropdownColor: kPrimaryColor,
      items: listOfDropDownMenu.map<DropdownMenuItem>((value) {
        return DropdownMenuItem(value: value, child: Text(value));
      }).toList(),
      onChanged: (onChange) {
        setState(() {
          selectedValue = onChange;
        });
      },
    );
  }
}
