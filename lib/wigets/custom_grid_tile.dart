import 'package:flutter/material.dart';

class CustomGridTile extends StatelessWidget {
  final String? imageUrl;
  final String? title;
  final VoidCallback? ontap;
  const CustomGridTile({ 
    Key? key,
    this.imageUrl,
    this.title,
    this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("$imageUrl"),
    
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "$title",
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
    
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.watch),
                            Text("30 min")
                          ],
                        ),
                        Row(
                          children: const [
                            Icon(Icons.home),
                            Text("15 ingredients")
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
    );
  }
}