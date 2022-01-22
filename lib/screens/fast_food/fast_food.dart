import 'package:bdfoodrecipe/data.dart';
import 'package:bdfoodrecipe/functions/function.dart';
import 'package:bdfoodrecipe/screens/detail_screen/detail_screen.dart';
import 'package:bdfoodrecipe/wigets/custom_grid_tile.dart';
import 'package:flutter/material.dart';

class FastFood extends StatelessWidget {
  final List fastfood = bdfood["fast_food"];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDegate(),
      itemCount: fastfood.length,
      padding: const EdgeInsets.all(10),
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          ontap: (){
            Navigator.pushNamed(context, DetailScreen.path, arguments: {"category": "Fast Food", "data": fastfood[index]});
          },
          imageUrl: fastfood[index]["image"],
          title: fastfood[index]["title"],
        );
      }
    );
  }
}