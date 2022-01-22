import 'package:bdfoodrecipe/data.dart';
import 'package:bdfoodrecipe/functions/function.dart';
import 'package:bdfoodrecipe/screens/detail_screen/detail_screen.dart';
import 'package:bdfoodrecipe/wigets/custom_grid_tile.dart';
import 'package:flutter/material.dart';

class NonVeg extends StatelessWidget {

  final List nonveg = bdfood["non_veg"];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: customGridDegate(),
      itemCount: nonveg.length,
      padding: const EdgeInsets.all(10),
      itemBuilder: (BuildContext context, int index){
        return CustomGridTile(
          ontap: (){
            Navigator.pushNamed(context, DetailScreen.path, arguments: {"category": "Non-Veg", "data": nonveg[index]});
          },
          imageUrl: nonveg[index]["image"],
          title: nonveg[index]["title"],
        );
      }
    );
  }
}