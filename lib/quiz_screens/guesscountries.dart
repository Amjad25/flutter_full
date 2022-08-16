import 'package:flutter/material.dart';
import 'package:flutter_full/Widgets/custom_card.dart';
import 'package:flutter_full/quiz_screens/about_quiz.dart';
import 'package:flutter_full/model/quiz.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../Widgets/custom_button.dart';
import '../Widgets/scoreCard.dart';
import '../model/countries.dart';


class GuessCountries extends StatefulWidget {
  const GuessCountries({Key? key}) : super(key: key);

  @override
  State<GuessCountries> createState() => _GuessCountriesState();
}

class _GuessCountriesState extends State<GuessCountries> {
  bool showans = false;
  Quiz quiz = Quiz();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/dclock");
        },
        child: Icon(Icons.arrow_forward_rounded),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Guess the Capital"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextButton(
                // onPressed: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (builder) => AboutQuizScreen(),
                //     ),
                //   );
                // },
                onPressed: () {
                  Navigator.pushNamed(context, AboutQuizScreen.routeName);
                },
                style: ButtonStyle(alignment: Alignment.topRight),
                child: Text(
                  "About "
                  "screen",
                  style: TextStyle(color: Colors.red, fontSize: 25),
                )),
            ScoreCard(
              attempted: quiz.attempted,
              score: quiz.score,
            ),
            CustomCard(
              onpress: handleShowAns,
              backgroundcolor: Colors.white,
              eleavtion: 20,
              height: 150,
              shadowcolor: Colors.grey,
              headingWidget: Text(
                showans ? "Capital" : "Country",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              bodyWidget: Text(
                showans
                    ? countries[quiz.attempted]["city"]!
                    : countries[quiz.attempted]["country"]!,
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 26,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 82),
              child: ElevatedButton(
                  onPressed: handleShowAns,
                  child: Text("Show ${showans ? "Question" : "Answer"}")),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: CustomElevatedButton(
                      onpress: handleCorrectAns,
                      title: "Correct",
                      backgroundcolor: Colors.green),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: CustomElevatedButton(
                    onpress: handleWrongAns,
                    title: "Wrong",
                    backgroundcolor: Colors.deepOrange,
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                  child: CustomElevatedButton(
                    onpress: (){
                      Navigator.pushNamed(context, "/result" , arguments: quiz,).then((value) {
                        if(value=="restart"){
                          reset();
                        }
                      });
                    },
                    title: "Show Result",
                    backgroundcolor: Colors.yellowAccent.shade700,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 132),
              child: CustomElevatedButton(
                onpress: reset,
                title: "Reset",
                backgroundcolor: Colors.red.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void handleWrongAns() {
    setState((){
      if (quiz.attempted < countries.length - 1) {
        quiz.markAnsWrong();
      } else {
        EolAlert();
      }
    });
  }

  void reset() {
    setState(() {
      quiz.ResetQuiz();
    });
  }

  void handleCorrectAns() {
    setState(() {
      if (quiz.attempted < countries.length - 1) {
        quiz.marksAnsCorrect();
      } else {
        EolAlert();
      }
    });
  }

  void EolAlert() {
    Alert(
      context: context,
      title: "Alert!",
      image: const Image(
          image: AssetImage(
              "packages/rflutter_alert/assets/images/3.0x/icon_warning.png"),
          fit: BoxFit.scaleDown),
      desc: "Countries in the World Finished",
    ).show();
  }

  void handleShowAns() {
    setState(() {
      showans = !showans;
    });
  }
  void restart() {
    setState(() {
      Navigator.pushNamed(context, "ponka");
      quiz.ResetQuiz();
    });
  }
}
