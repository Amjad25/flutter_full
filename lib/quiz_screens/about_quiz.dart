import 'package:flutter/material.dart';
import 'package:flutter_full/Widgets/custom_button.dart';
import 'package:flutter_full/Widgets/custom_card.dart';
import 'package:flutter_full/constant/app_strings.dart';
import 'package:flutter_full/utils/quizutils.dart';

class AboutQuizScreen extends StatelessWidget {
  const AboutQuizScreen({Key? key}) : super(key: key);
static const routeName="/about";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue.shade50,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          AppStrings.aboutscreenTitle,
          style: getHeadingTextStyle(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomCard(
            height: 150,
            eleavtion: 80.0,
            shadowcolor: Colors.lightBlue.shade200,
            backgroundcolor: Colors.white,
            headingWidget: Text(
              AppStrings.aboutscreenCardText
              ,
              style: getHeadingTextStyle(),
            ),
          ),
          CustomElevatedButton(
              onpress: () {
                Navigator.pop(context);
              },
              title: "Go Main Screen")
        ],
      ),
    );
  }
}
