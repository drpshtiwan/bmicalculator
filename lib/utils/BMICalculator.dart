import 'dart:math';
import 'package:flutter/material.dart';

class BMICalculator 
{
  double yourBMI;

  BMICalculator(int height,double weight) {
    this.yourBMI = weight / pow(height/100, 2);
  }
  
  
  getDetails() {
    if(yourBMI > 35) {
      return setDetail(Color(0XFFba3a87), 'Extremly Obese', 'You should reduce your weight to be normal') ;
    }else if(yourBMI > 25 && yourBMI < 30 ) {
      return setDetail(Color(0XFFe34234), 'Obese', 'You should reduce your weight to be normal') ;
    }else if(yourBMI > 25 && yourBMI < 30 ) {
      return setDetail(Color(0XFFf07e21), 'Overweight', 'You should reduce your weight to be normal') ;
    }else if(yourBMI < 25 && yourBMI > 18.5 ) {
      return setDetail(Color(0XFF2fd158), 'Normal', 'Your weight is in normal range') ;
    }else if(yourBMI < 18.5) {
      return setDetail(Color(0XFF58b8de), 'Underweight', 'You should eat more inorder your weight to be normal') ;
    }
  }

  Object setDetail(color,status,msg) {
    return {
      'colorStatus': color,
      'status': status,
      'yourBMI': double.parse(yourBMI.toStringAsFixed(1)),
      'msg': msg,
    };
  }




}
