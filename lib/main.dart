import 'package:flutter/material.dart';
import 'package:flutter_full/card_exercise.dart';
import 'package:flutter_full/rowcolumnexercise.dart';

void main() {
  runApp(
      // const MyApp();
      const ExerciseCard());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'Flutter Demo',
  debugShowCheckedModeBanner: false,
      home : SafeArea(
        child: Scaffold(

        backgroundColor: Colors.black,
          appBar: AppBar(title: const Text( "First APP"),
            backgroundColor: Colors.deepOrange,
            shadowColor: Colors.white,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  [
              const Text("Hello this is me Bulb",style: TextStyle(
                 fontSize: 20,
                color: Colors.white
              ),),
              const Center(child: Image(
                image:
                  AssetImage("assets/images/bulb.jpg")
                     ,
              // NetworkImage("https://i.gifer.com/4Cb2.gif",scale: 1.5),
              )
              ),
              FloatingActionButton(onPressed: ()
              {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>const Exercise_r_c(),),
                );
              },
              child: const Icon(Icons.arrow_forward_rounded)),
            ],
          ),
        ),
      ),
    );
  }
}
