import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.onpress,
    required this.title,
    this.backgroundcolor=Colors.blue,
});
final VoidCallback onpress;
final String title;
final Color backgroundcolor;


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onpress, child: Text(title)
    ,style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundcolor)
      ),
    );
  }
}
