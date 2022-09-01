import 'package:flutter/material.dart';
class Guide extends StatefulWidget {
  const Guide({ Key? key }) : super(key: key);

  @override
  State<Guide> createState() => _GuideState();
}

class _GuideState extends State<Guide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        padding: EdgeInsets.all(32),
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/2.jpg"),
            // fit: BoxFit.cover,
          ),
        ),
       )
    );
  }
}