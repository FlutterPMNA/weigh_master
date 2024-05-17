import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckClass extends StatefulWidget {
  const CheckClass({super.key});

  @override
  State<CheckClass> createState() => _CheckClassState();
}

class _CheckClassState extends State<CheckClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(color: Colors.red,child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("data"),
              )),
            ],
          )
        ],
      ),
    );
  }
}
