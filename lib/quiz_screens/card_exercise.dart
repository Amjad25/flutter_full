import 'package:flutter/material.dart';
import 'package:flutter_full/Bulb_light.dart';
import 'package:flutter_full/buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class ExerciseCard extends StatelessWidget {
  const ExerciseCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      floatingActionButton:  FloatingActionButton(
          onPressed: ()
      {

        Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>LightBulb())
        );
      },
          backgroundColor: Colors.blue,
          hoverColor: Colors.grey,
          focusColor: Colors.green,


          child: const Icon(Icons.arrow_forward_rounded)),
        backgroundColor: Colors.orangeAccent.shade200,

        body: Column(

    mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        Card(
          elevation: 20,
          color: Colors.white,
          shadowColor: Colors.grey,
          child: SizedBox(
            child: Padding(padding:  const EdgeInsets.symmetric(vertical: 10.0),
            child:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(padding:  const EdgeInsets.symmetric(vertical: 10.0),
                  child:
                  CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.blueAccent.shade100,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("assets/images/bulb.jpg"),
                    ),
                  ),
                  ),
                  Text("Amjad Ali",style: TextStyle( fontSize: 20,fontWeight:FontWeight.w600 ),),
                  Text("Software Engineer",style: TextStyle( fontSize:18,fontWeight:FontWeight.normal ),),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 150.0,
                      vertical: 10,
                    ),
                    child: Divider(
                      color: Colors.yellowAccent.shade700,
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: FaIcon(
                        FontAwesomeIcons.quoteLeft,
                        color: Colors.yellow,
                        size: 36,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: FaIcon(
                        FontAwesomeIcons.quoteRight,
                        color: Colors.yellow,
                        size: 36,
                      ),
                    ),
                  ),
                ],
              ),),
          ),
        ),



      ],
  ),

    );
  }
}
