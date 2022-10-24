// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({required this.onPress, required this.buttonTitle});
  final String buttonTitle;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      color: kBottomBoxColor,
      height: kBottomBoxHeight,
      child: GestureDetector(
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
      ),
    );
  }
}
