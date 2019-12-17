import 'package:flutter/material.dart';

class IconSection extends StatelessWidget
{
  IconSection({@required this.icon,this.title});
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: 80,
          ),
          SizedBox(height: 10),
          Text(title)
        ],
      );
  }
}