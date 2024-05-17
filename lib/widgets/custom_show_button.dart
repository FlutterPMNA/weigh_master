import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomShowButton extends StatelessWidget {
  const CustomShowButton({super.key, required this.iconToShow, required this.onPress});

  final IconData iconToShow;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), border: Border.all()),
        child: IconButton(
            onPressed: onPress,
            icon: Icon(iconToShow, size: 60)
        )
    );
  }
}
