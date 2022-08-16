import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
 const  CustomCard({
    this.eleavtion = 20,
    this.headingWidget,
    this.bodyWidget,
    this.height,
    this.backgroundcolor,
    this.shadowcolor,
   this.onpress
 });

final double? eleavtion;
final Widget? headingWidget;
final Widget? bodyWidget;
final double? height;
final Color? backgroundcolor;
final Color? shadowcolor;
final VoidCallback? onpress;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: height,
        child: GestureDetector(
          onTap: onpress,
          child: Card(
            elevation: eleavtion,
            shadowColor: shadowcolor,
            color: backgroundcolor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: headingWidget,
                ),
                Container(child: bodyWidget),


              ],
            ),
          ),
        ),
      ),
    );
  }

}
