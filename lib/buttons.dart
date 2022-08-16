import 'package:flutter/material.dart';
class Buttons_ok extends StatefulWidget {
  const Buttons_ok({Key? key}) : super(key: key);

  @override
  State<Buttons_ok> createState() => _Buttons_okState();
}

class _Buttons_okState extends State<Buttons_ok> {
  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
          body: SafeArea(child: Column(
            children: [
              ElevatedButton(onPressed: (){
                print("Elevate dButton pressed");
              }, child: Text("Button 1",style: TextStyle(color: Colors.blueAccent),
              ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith((states) => states.contains(MaterialState.pressed)? Colors.purple:Colors.grey)
                ),
              )

            ],
          )),
        );
  }
}
