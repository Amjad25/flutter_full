import 'package:flutter/material.dart';
import 'package:flutter_full/buttons.dart';
import 'package:flutter_full/quiz_screens/guesscountries.dart';

class LightBulb extends StatefulWidget {
  const LightBulb({Key? key}) : super(key: key);

  @override
  State<LightBulb> createState() => _LightBulbState();
}
class _LightBulbState extends State<LightBulb> {
  bool isTurnedOn=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=> GuessCountries()));
      }
      ,
      child: Icon(Icons.arrow_forward_rounded),),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Light Bulb"),
      ),
body: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,

    children: [
      Icon(

        Icons.lightbulb_outline_rounded,size: 250,
      color: isTurnedOn ? Colors.orange: Colors.black
      ),
      ElevatedButton(onPressed: (){
        setState((){
          isTurnedOn=!isTurnedOn;
        });

        print(isTurnedOn);
        print("elevated buton pressed on bulblight exercise");
      }, child:
      Text(isTurnedOn? "Turn OFF":"Turn ONN"))
    ],
  ),
),
    );
  }
}
