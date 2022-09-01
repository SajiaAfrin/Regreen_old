import 'package:flutter/material.dart';
class Plant extends StatefulWidget {
  const Plant({ Key? key }) : super(key: key);

  @override
  State<Plant> createState() => _PlantState();
}

class _PlantState extends State<Plant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        padding: EdgeInsets.all(32),
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/image/1.jpg"),
            // fit: BoxFit.cover,
          ),
        ),
       )
    );
  }
}