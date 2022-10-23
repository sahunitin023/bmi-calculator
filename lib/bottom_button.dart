// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.onPress, required this.buttonTitle});
  final String buttonTitle;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Center(
        child: Text(
          buttonTitle,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
