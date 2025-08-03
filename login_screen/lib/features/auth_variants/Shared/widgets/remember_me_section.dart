import 'package:flutter/material.dart';

class RememberMeSection extends StatefulWidget {
  const RememberMeSection({super.key});

  @override
  State<RememberMeSection> createState() => _RememberMeSectionState();
}

class _RememberMeSectionState extends State<RememberMeSection> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        Text("Remember me"),
      ],
    );
  }
}
