import 'package:flutter/material.dart';
import 'package:masterui/data.dart';
import 'package:masterui/widgets/cardDetails.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'selected card',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),
            )),
        Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    decoration: BoxDecoration(
                        color: primaryColor,
                        boxShadow: customShadow,
                        borderRadius: BorderRadius.circular(20)),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                            
                            top: -150,
                            bottom: -200,
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: customShadow,
                                  shape: BoxShape.circle,
                                  color: Colors.white38),
                            )),
                        Positioned.fill(
                            left: -300,
                            top: -100,
                            bottom: -100,
                            child: Container(
                              decoration: BoxDecoration(
                                  boxShadow: customShadow,
                                  shape: BoxShape.circle,
                                  color: Colors.white24),

                            )),

                            CardDetails()
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
