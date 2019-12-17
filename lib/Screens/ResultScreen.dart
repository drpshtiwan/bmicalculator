import 'package:flutter/material.dart';
import 'package:bmicalculator/config/Constants.dart';

class ResultScreen extends StatefulWidget {

  ResultScreen({@required this.status,@required this.colorStatus,@required this.yourBMI,@required this.msg});
  final String status;
  final Color colorStatus;
  final double yourBMI;
  final String msg;

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('Results'),
      ),
      body:Container(
        // padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              Container(
                padding: EdgeInsets.all(15),
                child:Text('Your Result',style:TextStyle(fontSize: 40 )),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: deactiveColor,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(widget.status,style:TextStyle(
                        color: widget.colorStatus,fontSize: 35,fontWeight: FontWeight.w600)),
                      Text(widget.yourBMI.toString(),
                          style:TextStyle(fontSize: 100,fontWeight: FontWeight.w700)
                          ),
                      Text(widget.msg,style:TextStyle(
                        fontSize: 25,
                        height:1.3,
                        color: Colors.grey[400],),textAlign: TextAlign.center,)
                      
                    ],
                  ),
                ),
              ),
              FlatButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () => Navigator.pushNamed(context, '/'),
                color: barColor,
                child: Container(
                  margin: EdgeInsets.only(top: 10),
                  width: double.infinity,
                  height: bottomHeight,
                  child: Center(child: Text('Re-Calculate BMI',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 3,color: Colors.grey[100]),),),
                ),
              ),
            ],
          ),
      )
    );
  }
}