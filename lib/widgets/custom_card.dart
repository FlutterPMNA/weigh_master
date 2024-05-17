import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.icon, required this.cardText, required this.isTrailing, required this.onPress});

  final IconData icon;
  final String cardText;
  final bool isTrailing;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: Colors.white54,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Icon(icon, size: 25,),
              SizedBox(width: 20,),
              Text(cardText, style: TextStyle(fontSize: 15),),
              Spacer(),
              if(isTrailing)
              Icon(CupertinoIcons.right_chevron)
            ],
          ),
        ),
      ),
    );
  }
}
