import 'package:flutter/material.dart';
import 'package:flutter_full/Widgets/custom_button.dart';
import 'package:flutter_full/Widgets/scoreCard.dart';
import 'package:flutter_full/utils/quizutils.dart';

import '../Widgets/custom_card.dart';

class ResultQuiz extends StatelessWidget {
  const ResultQuiz({this.score=0,this.attempted=0}) ;
  static const routeName = '/result';
  final int score;
 final  int attempted;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,


          children: [
            CustomCard(
              height: 200,
              headingWidget:
              Text(
                "Score"
                ,style: getHeadingTextStyle(),),
              bodyWidget: Text(
                  "           ${score}/${attempted}          "
                  ,style:getHeadingTextStyle()),
            ),
            CustomElevatedButton(onpress: (){
              Navigator.pop(context,"restart");
            }, title: "Restart")
          ],

        ),
      ),
    );
  }


}

