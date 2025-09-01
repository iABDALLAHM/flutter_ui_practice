import 'package:bmi_calaculator_app/core/utils/app_styles.dart';
import 'package:bmi_calaculator_app/features/home/presentation/views/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class PersonalInfoSection extends StatefulWidget {
  const PersonalInfoSection({
    super.key,
    required this.text,
    this.color = const Color(0xff333244),
    required this.onValueChanged,
  });
  final String text;
  final Color color;
  final ValueChanged<int> onValueChanged;

  @override
  State<PersonalInfoSection> createState() => _PersonalInfoSectionState();
}

class _PersonalInfoSectionState extends State<PersonalInfoSection> {
  int conter = 0;
  void _updateCounter({required int newValue}) {
    setState(() {
      conter = newValue;
    });
    widget.onValueChanged(conter);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Text(
            widget.text,
            style: Styles.textStyle20.copyWith(color: const Color(0xff8B8C9E)),
          ),
          const SizedBox(height: 20),
          Text(
            "$conter",
            style: Styles.textStyle35.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              CustomIconButton(
                icon: Icon(Icons.remove, size: 35),
                onPressed: () {
                  setState(() {
                    if (conter == 0) {
                      _updateCounter(newValue: 0);
                    } else {
                      _updateCounter(newValue: conter -= 1);
                    }
                  });
                },
              ),
              const SizedBox(width: 20),
              CustomIconButton(
                icon: Icon(Icons.add, size: 35),
                onPressed: () {
                  setState(() {
                    _updateCounter(newValue: conter += 1);
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
