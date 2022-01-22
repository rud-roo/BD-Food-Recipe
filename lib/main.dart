import 'package:bdfoodrecipe/screens/detail_screen/detail_screen.dart';
import 'package:bdfoodrecipe/screens/favourite/favourite.dart';
import 'package:bdfoodrecipe/screens/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      // home: const DetailScreen(),

      initialRoute: Home.path,

      routes: {
        Home.path: (ctx) => const Home(),
        DetailScreen.path: (ctx)=> const DetailScreen(),
        FavouriteScreen.path: (ctx)=> const FavouriteScreen(),
      },
    );
  }
}