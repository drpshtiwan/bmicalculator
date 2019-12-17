import "package:flutter/material.dart";
import 'package:bmicalculator/config/Routes.dart';

void main() => runApp(RebootApp());

class RebootApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: Routes.all(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF090b22),
        scaffoldBackgroundColor: Color(0XFF090b22),
      ),
    );
  }
}

