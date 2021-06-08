import 'package:flutter/material.dart';
import 'package:masterui/data.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.topLeft,
          child: Container(
              width: 250,
              child: Image.asset('assets/mastercardlogo.png')),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              height: 50,
              width: 70,
              decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: customShadow,
                  borderRadius: BorderRadius.circular(15)),
            ),
          ),
        ),
        Align(alignment: Alignment.bottomLeft,
        child: 
        Padding(
          padding: const EdgeInsets.only(bottom: 30.0,left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text('**** ***** ***** ',style: TextStyle(fontSize:20,fontWeight: FontWeight.bold ),),
                  Text('1325',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)
                ],
              ),
              Text('PLATINUM CARD',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
            ],
          ),
        ),)
      ],
    );

  }
}
