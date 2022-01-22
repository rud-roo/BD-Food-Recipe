import 'package:bdfoodrecipe/data.dart';
import 'package:bdfoodrecipe/functions/function.dart';
import 'package:bdfoodrecipe/screens/detail_screen/detail_screen.dart';
import 'package:bdfoodrecipe/wigets/custom_grid_tile.dart';
import 'package:flutter/material.dart';

class Bread extends StatelessWidget {

  final List bread = bdfood["bread"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDegate(),
      padding: const EdgeInsets.all(10),
      itemCount: bread.length,
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          ontap: (){
            Navigator.pushNamed(context, DetailScreen.path, arguments: {"category": "Bread", "data": bread[index]});
          },
          imageUrl: bread[index]["image"],
          title: bread[index]["title"],
        );
      }
    );
  }
}