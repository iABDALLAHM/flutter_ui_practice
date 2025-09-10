import 'package:flutter/material.dart';

class FilmTime extends StatelessWidget {
  const FilmTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.access_time),
        const SizedBox(width: 5),
        Text("1h 47m"),
      ],
    );
  }
}
