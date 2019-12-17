import 'package:flutter/material.dart';
import '../config/Constants.dart';

class ResuableWidget extends StatelessWidget {
  ResuableWidget({this.colour,this.cardChild,this.onPress});

  final Color colour;
  final Widget cardChild;
  final Function onPress;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: colour != null ? colour : deactiveColor ,
          borderRadius: BorderRadius.circular(10),
        ),
        child: cardChild,
      ),
    );
  }
}
