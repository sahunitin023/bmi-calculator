import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const IconContent({required this.gender, required this.genderIcon});

  final IconData genderIcon;
  final String gender;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          gender,
          style: const TextStyle(
            color: Color(0xFF8D8398),
            fontSize: 18.0,
          ),
        )
      ],
    );
  }
}
