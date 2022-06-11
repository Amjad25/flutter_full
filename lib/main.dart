import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'Flutter Demo',

      home : Scaffold(
      backgroundColor: Colors.black,
        appBar: AppBar(title: const Text( "First APP"),
          backgroundColor: Colors.deepOrange,
          shadowColor: Colors.white,
        ),
        body: Center(child: Image(image: NetworkImage("https://i.gifer.com/4Cb2.gif",scale: 1.5),)),
      ),
    );
  }
}
