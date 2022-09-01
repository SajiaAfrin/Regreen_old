
import 'package:flutter/material.dart';
import 'package:regreen/data.dart';
import 'package:regreen/global/functions.dart';
import 'package:regreen/widgets/custom_grid_tile.dart';

import 'details.dart';

class TrashScreen extends StatelessWidget {
 final List trash = regreen["trash"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDelegate(),
      padding: EdgeInsets.all(10),
      itemCount: trash.length,
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
         onTap: (){
            Navigator.pushNamed(context, DetailScreen.path, arguments:{"category": "Trash", "data": trash[index]} );
          },
          imageUrl: trash[index]["image"],
          title: trash[index]["title"],
        );
      }
    );
  }
}