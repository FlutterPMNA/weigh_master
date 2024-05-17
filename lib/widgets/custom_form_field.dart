import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField(
      {super.key,
      required this.isPassword,
      required this.isObscured,
      required this.onPress,
      required this.hintText,
      required this.controller,});

  final bool isPassword;
  final bool isObscured;
  final Function() onPress;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    if (isPassword) {
      return TextFormField(
        obscureText: isObscured,
        controller: controller,
        enabled: true,
        decoration: InputDecoration(
            suffixIcon: IconButton(
              onPressed: onPress,
              icon: isObscured
                  ? const Icon(CupertinoIcons.eye_slash)
                  : const Icon(CupertinoIcons.eye),
            ),
            hintText: hintText,
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
      );
    }
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5))),
    );
  }
}
