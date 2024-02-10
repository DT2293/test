import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 7),
        child: Container(
          width: 170,
          height: 225,
          decoration: BoxDecoration(
            color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment:Alignment.center ,
                        child: Image.asset("images/burger.png",height: 100,),
                        ),
                      Text("Hot Burger",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                        SizedBox(height: 4),
                        Text(
                          "afhuesfhdsfdshkjhgdsgg",
                          style: TextStyle(
                            fontSize: 15,
                            ),
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Text(
                              "\$10",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                              size: 16,
                            )
                          ],
                        )
                        
                    ],
                  ),
                  ),
        ),
         ),
    );
  }

  

}