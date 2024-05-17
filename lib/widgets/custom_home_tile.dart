import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomHomeTile extends StatelessWidget {
  const CustomHomeTile(
      {super.key,
      required this.amount,
      required this.detailText,
      required this.height,
      required this.width,
      required this.size,
      });

  final int amount;
  final double size;
  final double height;
  final double width;
  final String detailText;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(252, 132, 21, 1),
      height: height,
      width: width,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$amount",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              detailText,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
