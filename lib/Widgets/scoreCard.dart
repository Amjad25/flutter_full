import 'package:flutter/material.dart';
import 'package:flutter_full/utils/quizutils.dart';

import 'custom_card.dart';

class ScoreCard extends StatelessWidget {
  const ScoreCard({this.score=0, this.attempted=0}) ;

  final int score;
  final int attempted;
  @override
  Widget build(BuildContext context) {
    return CustomCard(
      backgroundcolor: Colors.lightBlue.shade50,
      shadowcolor: Colors.lightBlue.shade100,
      headingWidget:
      Text(
        "Score"
        ,style: getHeadingTextStyle(),),
bodyWidget: Text(
  " ${score}/${attempted}"
  ,style:getHeadingTextStyle()),
    );
  }
}
