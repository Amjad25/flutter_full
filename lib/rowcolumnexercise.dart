import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_full/card_exercise.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_full/main.dart';
class Exercise_r_c extends StatefulWidget {
  const Exercise_r_c({Key? key}) : super(key: key);

  @override
  State<Exercise_r_c> createState() => _Exercise_r_cState();
}

class _Exercise_r_cState extends State<Exercise_r_c> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: Scaffold(
        backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(width: 195,height: 200,
              color: Colors.yellow,),
              Container(width: 195,height: 200,
                color: Colors.blue,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                  width: 180,
                height: 180,
                decoration: BoxDecoration(
                    boxShadow: [BoxShadow(color: Colors.white,spreadRadius: 15,blurRadius: 28)],
                    color: Colors.green,
                    image: DecorationImage(fit: BoxFit.fill,image:AssetImage("assets/images/bulb.jpg")),
                    borderRadius: BorderRadius.circular(150),
                  border: Border.all(
                    color: Colors.black
                        ,
                    width: 4,
                  )
              ),
                ),
              Text("Idea!",style: TextStyle(fontSize: 35,color: Colors.deepOrange,fontFamily: "Quintessential"),)
              ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(width: 195,height: 200,
                color: Colors.purple,),
              Container(width: 195,height: 200,
                color: Colors.green,)
            ],
          ),
          FloatingActionButton(onPressed: (){
            Navigator.of(context)
                .push(
                MaterialPageRoute(
                    builder: (context)=>const ExerciseCard(),
                ),
            );
          }
          ),
        ],
      ),


      )),
    );
  }
}
