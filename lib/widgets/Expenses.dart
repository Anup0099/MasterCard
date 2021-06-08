import 'package:flutter/material.dart';
import 'package:masterui/data.dart';
import 'package:masterui/widgets/pieChart.dart';

class ExpandedSection extends StatelessWidget {
  const ExpandedSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,

      children:<Widget> [
        Container(
          
          margin: EdgeInsets.symmetric(horizontal: 20),
          
          
          child: Text("Expenses",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
        Row(
          children: <Widget>[
            Expanded(
              
              flex: 5,
              child: Container(


                margin:EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                child: Column(
                  
                  
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  
                  
                  children: expenses.map((value) => Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                    children:<Widget>[
                      CircleAvatar(radius: 5,backgroundColor: pieColors[expenses.indexOf(value)],),
                      SizedBox(width:5,),
                      Text(value['name'],style: TextStyle(fontSize: 18),)
                    ],
                    
                ),
                  )).toList(),
                ),
             

            ),),
            Expanded(
              
              flex: 6,
              
              child: PieChart(),)
          ],
          
        ),
      ],
    );
  }
}