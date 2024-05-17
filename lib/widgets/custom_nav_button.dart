import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavButton extends StatelessWidget {
  const CustomNavButton({super.key, required this.buttonText, required this.onPress});

  final String buttonText;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.black),
        child: TextButton(
            onPressed: onPress,
            child: Text(
              buttonText,
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            )));
  }
}
