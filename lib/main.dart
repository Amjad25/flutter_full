import 'package:flutter/material.dart';
import 'package:flutter_full/Bulb_light.dart';
import 'package:flutter_full/quiz_screens/about_quiz.dart';
import 'package:flutter_full/quiz_screens/card_exercise.dart';
import 'package:flutter_full/digital_clock/digital_clock_main.dart';
import 'package:flutter_full/home.dart';
import 'package:flutter_full/model/quiz.dart';
import 'package:flutter_full/quiz_screens/result_quiz.dart';
import 'package:flutter_full/routes.dart';
import 'package:flutter_full/rowcolumnexercise.dart';

import 'quiz_screens/guesscountries.dart';

void main() {
  runApp(MyApp());
  // MaterialApp(
  //   home: ExerciseCard(),
  // )
  //   );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const HomeBulb(),
        "/about": (context) => const AboutQuizScreen(),
        "/guess": (context) => const GuessCountries(),
        "/card": (context) => const ExerciseCard(),
        "/rowcol": (context) => const Exercise_r_c(),
        "/light": (context) => const LightBulb(),
        "/dclock": (context) => const DigitalClock(),
      },
      onGenerateRoute: (settings)=> CustomRoutes.generateRoute(settings),

        //   (settings) {
        // if (settings.name == "/result") {
        //   final arg = settings.arguments as Quiz;
        //   return MaterialPageRoute(
        //       builder: (context) => ResultQuiz(
        //         score: arg.score,
        //         attempted: arg.attempted,
        //       ));
        

      
      initialRoute: HomeBulb.routeName,
      // home : HomeBulb()
    );
  }
}
