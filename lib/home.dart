
import 'package:flutter/material.dart';
import 'package:flutter_full/rowcolumnexercise.dart';
class HomeBulb extends StatefulWidget {
  const HomeBulb({Key? key}) : super(key: key);

  @override
  static const routeName = '/homebulb';
  State<HomeBulb> createState() => _HomeBulbState();
}

class _HomeBulbState extends State<HomeBulb> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:  FloatingActionButton(onPressed: ()
      {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=>Exercise_r_c())
        );
      },
          child: const Icon(Icons.arrow_forward_rounded)),

      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text( "First APP"),
        backgroundColor: Colors.deepOrange,
        shadowColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:  [
          const Text("Hello this is me Bulb",style: TextStyle(
              fontSize: 20,
              color: Colors.white
          ),),
          const Center(child: Image(
            image:
            AssetImage("assets/images/bulb.jpg")
            ,
            // NetworkImage("https://i.gifer.com/4Cb2.gif",scale: 1.5),
          )
          ),

        ],
      ),
    );
  }
}
