import 'package:bdfoodrecipe/functions/function.dart';
import 'package:bdfoodrecipe/screens/detail_screen/detail_screen.dart';
import 'package:bdfoodrecipe/wigets/custom_grid_tile.dart';
import 'package:flutter/material.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({ Key? key }) : super(key: key);
  static const String path = "FavouriteScreen";

  @override
  Widget build(BuildContext context) {
    final Map data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourite Screen"),
        backgroundColor: Colors.red,
      ),
      body: GridView.builder(
        gridDelegate: customGridDegate(),
        itemBuilder: (BuildContext context, int index){
          return CustomGridTile(
            ontap: (){
              Navigator.pushNamed(context, DetailScreen.path, arguments: data["index"]);
            },
            imageUrl: data["image"],
            title: data["title"],
          );
        }
      ),
    );
  }
}