import 'package:bdfoodrecipe/screens/bread/bread.dart';
import 'package:bdfoodrecipe/screens/dessert/dessert.dart';
import 'package:bdfoodrecipe/screens/fast_food/fast_food.dart';
import 'package:bdfoodrecipe/screens/favourite/favourite.dart';
import 'package:bdfoodrecipe/screens/non_veg/non_veg.dart';
import 'package:bdfoodrecipe/screens/rice/rice.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static const String path = "Home";
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("BD Food Recipe"),
          centerTitle: true,
    
          actions: [
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, FavouriteScreen.path);
              },
              icon: const Icon(Icons.favorite_outline_rounded)
            )
          ],
        ),
    
        drawer: const Drawer(),

        body: Column(
          children: [
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.redAccent,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Colors.redAccent, Colors.orangeAccent]
                  ),
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.redAccent
                ),
                tabs: const [  
                  Tab(
                    child: Text("Bread"),
                  ),
                  Tab(
                      child: Text("Desert"),
                    ),
                  Tab(
                      child: Text("Fast-Food"),
                    ),
    
                  Tab(
                      child: Text("Non-Veg"),
                    ),
                  Tab(
                      child: Text("Rice"),
                    ),
                ],
              ),
            ),

            Expanded(
              child: TabBarView(
                children: [
                  Bread(),
                  Dessert(),
                  FastFood(),
                  NonVeg(),
                  Rice(),
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}