import 'package:flutter/material.dart';
import '../config/Constants.dart';

class CircularButtonJano extends StatelessWidget {
  const CircularButtonJano({
    @required this.icon,
    @required this.onPress,
  });

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: activeColor,
          borderRadius: BorderRadius.circular(100)
        ),
        child: Icon(icon,size: 30,),
      ),
    );
  }
}
