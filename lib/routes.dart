

import 'package:flutter/material.dart';
import 'package:flutter_full/quiz_screens/about_quiz.dart';
import 'package:flutter_full/home.dart';
import 'package:flutter_full/model/quiz.dart';
import 'package:flutter_full/quiz_screens/result_quiz.dart';

class CustomRoutes
{

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case HomeBulb.routeName:
        return MaterialPageRoute(builder: ( _ )=>HomeBulb());

      case ResultQuiz.routeName:
        final arg = settings.arguments as Quiz;
        return MaterialPageRoute(
                builder: (context) => ResultQuiz(
                  score: arg.score,
                  attempted: arg.attempted,
                ));

    default:
    return MaterialPageRoute(builder: (_) => HomeBulb());

    }
  }

}