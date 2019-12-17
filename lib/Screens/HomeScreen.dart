import "package:flutter/material.dart";
import 'package:flutter/rendering.dart';
import 'package:http/http.dart' as http;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmicalculator/utils/BMICalculator.dart';
import '../components/ResuableWidget.dart';
import '../components/CircularButtonJano.dart';
import '../components/IconSection.dart';
import '../config/Constants.dart';

class HomeScreen extends StatefulWidget
{
  createState() => HomeScreenState();
}


class HomeScreenState extends State<HomeScreen>
{
  String selectedGender = 'male';
  int height = 165;
  double weight = 71.0;
  int age = 25;

  void bmiCalculate () {
    BMICalculator calc = BMICalculator(height,weight);
    print(calc.getDetails());
    Navigator.pushNamed(context, '/result',arguments: calc.getDetails() );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('BMI Calculator'),
        leading: IconButton(icon: Icon(Icons.sort,color: Colors.white,), onPressed: () {},),
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ResuableWidget(
                      onPress: () => setState(() => selectedGender = 'male' ),
                      colour: selectedGender == 'male' ? activeColor : deactiveColor,
                      cardChild: IconSection(
                        icon: FontAwesomeIcons.mars,
                        title: "Male",
                      ),
                    ),
                  ),
                  Expanded(
                    child: ResuableWidget(
                      onPress: () => setState(() => selectedGender = 'female' ),
                      colour: selectedGender == 'female' ? activeColor : deactiveColor,
                      cardChild: IconSection(
                        icon: FontAwesomeIcons.venus,
                        title: "Female",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ResuableWidget(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('HEIGHT',style: jnSubHeaderStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(height.toString(),style: jnHeaderStyle),
                        Text('cm',style:TextStyle(color: Colors.grey[500])),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 1.0,
                      max: 240.0,
                      activeColor: barColor,
                      inactiveColor: Colors.grey[800],
                      onChanged: (double newVal) => setState(() => height = newVal.round() ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child:  ResuableWidget(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('WEIGHT',style: jnSubHeaderStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children: <Widget>[
                              Text(weight.toString(),style: jnHeaderStyle),
                              Text('  kg',style:TextStyle(color: Colors.grey[500])),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                            
                              CircularButtonJano(
                                icon: Icons.remove,
                                onPress: () => setState(() => weight = weight - 0.5),
                              ),

                              CircularButtonJano(
                                icon: Icons.add,
                                onPress: () => setState(() => weight = weight + 0.5),
                              ),
                            
                          ],)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child:  ResuableWidget(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text('AGE',style: jnSubHeaderStyle,),
                          Text(age.toString(),style: jnHeaderStyle,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                            
                              CircularButtonJano(
                                icon: Icons.remove,
                                onPress: () => setState(() => age = age - 1),
                              ),

                              CircularButtonJano(
                                icon: Icons.add,
                                onPress: () => setState(() => age = age + 1),
                              ),
                            
                          ],)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              onPressed: () => bmiCalculate(),
              color: barColor,
              child: Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                height: bottomHeight,
                child: Center(child: Text('CALCULATE',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w600,letterSpacing: 3,color: Colors.grey[100]),),),
              ),
            ),
          ],
        ),
      
    );
  }

  
}
