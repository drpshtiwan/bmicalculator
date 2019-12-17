import 'package:flutter/material.dart';
import 'package:bmicalculator/Screens/HomeScreen.dart';
import 'package:bmicalculator/Screens/ResultScreen.dart';

class Routes
{
  static RouteFactory all()
  {
    return (settings) {
      final Map<String, dynamic> args = settings.arguments;
      Widget screen;

      switch(settings.name) {
        case '/':
          screen = HomeScreen();
          break;
        case '/result':
          screen = ResultScreen(status:args['status'],colorStatus:args['colorStatus'],yourBMI:args['yourBMI'],msg:args['msg']);
          break;
      }

      return MaterialPageRoute(builder: (_) => screen);

    };
  }
}