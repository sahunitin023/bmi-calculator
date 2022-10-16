import 'package:flutter/material.dart';
import 'constants.dart';

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
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
