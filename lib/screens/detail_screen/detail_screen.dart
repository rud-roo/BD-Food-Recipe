import 'package:bdfoodrecipe/screens/favourite/favourite.dart';
import 'package:bdfoodrecipe/wigets/custombutton.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const String path = "DetailScreen";
  const DetailScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double size = MediaQuery.of(context).size.width;
    final Map items = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Detail Screen"),
            const SizedBox(height: 4,),
            Text(
              "Category: ${items["category"]}",
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500,color: Colors.white),
            )
          ],
        ),
        actions: const [
          Icon(Icons.share),
        ],
      ),

      body: Column(
        children: [
          Container(
            height: 200,
            child: Stack(
              fit: StackFit.loose,
              children: [
                Image.asset(
                  items["data"]["image"],
                  height: 200,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    padding: const EdgeInsets.only(left: 10),
                    alignment: Alignment.centerLeft,
                    height: 54,
                    width: size,
                    color: Colors.black.withOpacity(.50),
                    child: Center(
                      child: Text(
                        items["data"]["title"],
                        style: const TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
              CustomButton(
                icon: Icons.check,
                lebel: "Cooked",
                color: Colors.orange,
              ),
              CustomButton(
                ontap: (){
                  Navigator.pushNamed(context, FavouriteScreen.path, arguments: items["data"]);
                },
                icon: Icons.favorite_outline_rounded,
                lebel: "Favourite",
                color: Colors.pink,
              ),
              CustomButton(
                icon: Icons.image,
                lebel: "Image",
                color: Colors.red,
              )
            ],
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Ingredients",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                       const Divider(
                        thickness: 2,
                        color: Colors.orange,
                      ),
            
                      for(int i = 0; i<items["data"]['ingredients'].length; i++)
                        Row(
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(4)
                              ),
                            ),
                            const SizedBox(width: 8,),
                            Text(
                              items["data"]['ingredients'][i],
                              style: const TextStyle(
                                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500
                              )
                            ),
                          ],
                        ),
                      const SizedBox(height: 16,),
            
                      const Text(
                        "Directions",
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                        color: Colors.orange,
                      ),
            
                      for(int i = 0; i<items["data"]['directions'].length; i++)
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 8,
                              width: 8,
                              margin: EdgeInsets.only(top: 4),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(4)
                              ),
                            ),
                            const SizedBox(width: 8,),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8),
                                child: Text(
                                  items["data"]['directions'][i],
                                  style: const TextStyle(
                                    color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

